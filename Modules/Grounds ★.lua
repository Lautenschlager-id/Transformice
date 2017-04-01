--[[ Modes ]]--
	--[[
		0 = #Grounds
		1 = #Jokenpo
		2 = #Click
		3 = #Presents
		4 = #Chat
		5 = #CannonUp
	]]--
system.gameMode = 0

--[[ Main ]]--
system.module = "grounds"

system.isRoom = tfm.get.room.name:byte(2) ~= 3

system.roomAdmins = {}

system.leaderMode = 0

system.roomAttributes = system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)") or ""
system.roomSettings = {
	["@"] = function(n)
		system.roomAdmins[string.nick(n)] = true
	end,
	["#"] = function(id)
		system.leaderMode = tonumber(id) or 1
		system.leaderMode = system.leaderMode < 1 and 1 or system.leaderMode > 3 and 3 or system.leaderMode
	end,
	["*"] = function(name)
		name = name:lower()
		if name == "jokenpo" then
			system.gameMode = 1
		elseif name == "click" then
			system.gameMode = 2
		elseif name == "presents" then
			system.gameMode = 3
		elseif name == "chat" then
			system.gameMode = 4
		elseif name == "cannonup" then
			system.gameMode = 5
		end
	end
}

--[[ Main functions ]]--
	--[[ System ]]--
system.isPlayer = function(n)
	if tfm.get.room.playerList[n] then
		if n:sub(1,1) == "*" then
			return false
		end
		if tfm.get.room.playerList[n].registrationDate then
			if os.time() - (tfm.get.room.playerList[n].registrationDate or 0) < 432e6 then -- 5 days in tfm
				return false
			end
		else
			return false
		end
		return true
	else
		return false
	end
end
system.loadTable = function(s)
	local list
	for tbl in s:gmatch("[^%.]+") do
		tbl = tonumber(tbl) and tonumber(tbl) or tbl
		list = (list and list[tbl] or _G[tbl])
	end
	return list
end
system.players = function(alivePlayers)
    local alive,total = 0,0
	if alivePlayers then
		alive = {}
	end
    for k,v in next,tfm.get.room.playerList do
        if system.isPlayer(k) then
            if not v.isDead and not v.isVampire then
                if alivePlayers then
					alive[#alive + 1] = k
				else
					alive = alive + 1
				end
            end
            total = total + 1
        end
    end
	if alivePlayers then
		return alive
	else
		return alive,total
	end
end
system.setRoom = function()
	if system.isRoom and system.roomAttributes then
		local chars = ""
		for k in next,system.roomSettings do
			chars = chars .. k
		end
		
		for char,value in system.roomAttributes:gmatch("(["..chars.."])([^"..chars.."]+)") do
			for k,v in next,system.roomSettings do
				if k == char then
					v(value)
					break
				end
			end
		end
	end
end

	--[[ String ]]--
string.split = function(value,pattern,f)
	local out = {}
	for v in value:gmatch(pattern) do
		out[#out + 1] = (f and f(v) or v)
	end
	return out
end
string.nick=function(player)
	return player:lower():gsub('%a',string.upper,1)
end

	--[[ Math ]]--
math.percent = function(x,y)
	local m = x/y * 100
	return math.min(m,100)
end
math.pythag = function(x1,y1,x2,y2,range)
	return (x1-x2)^2 + (y1-y2)^2 <= (range^2)
end

	--[[ Table ]]--
table.find = function(list,value,index)
	for k,v in next,list do
		if index then
			if v[index] == value then
				return true,k
			end
		else
			if v == value then
				return true,k
			end
		end
	end
	return false
end
table.turnTable = function(x)
	return (type(x)=="table" and x or {x})
end
table.random=function(t)
	return (type(t)=="table" and t[math.random(#t)] or math.random())
end

	--[[ Remake from Official ones ]]--
table.concat = function(list,sep,f,i,j)
	local txt = ""
	sep = sep or ""
	i,j = i or 1,j or #list
	for k,v in next,list do
		if k >= i and k <= j then
			txt = txt .. (f and f(k,v) or v) .. sep
		end
	end
	return txt:sub(1,-1-#sep)
end
do
	local byte = string.byte
	string.byte = function(str)
		return byte(str,1,#str)
	end
	
	local savePlayerData = system.savePlayerData
	system.savePlayerData = function(n,data)
		if system.isPlayer(n) then
			savePlayerData(n,data)
		end
	end		
end

	--[[ Others ]]--
concat = function(k,v)
	if type(v) == "table" then
		return table.concat(v,"\n",function(i,j) return concat(i,j) end)
	else
		return v
	end
end
deactivateAccents=function(str)
	local letters = {a = {"á","â","à","å","ã","ä"},e = {"é","ê","è","ë"},i = {"í","î","ì","ï"},o = {"ó","ô","ò","õ","ö"},u = {"ú","û","ù","ü"}}
	for k,v in next,letters do
		for i = 1,#v do
			str = str:gsub(v[i],tostring(k))
		end
	end
	return str
end
listener = function(t,st,from)
	from = (from and from.."." or "")
	for k,v in next,t do
		if type(v) == "table" then
			listener(v,st,from .. tostring(k))
		else
			st[#st + 1] = from .. k
		end
	end
	return st
end
serialization = function(x)
	if type(x) == "table" then
		local t = x
		local str = ""
		for index,value in next,t do
			local prefix,tbOption = (type(value)=="string" and "_@" or type(value)=="boolean" and "_!" or type(value)=="number" and "_#" or type(value)=="table" and "_%" or ""),(type(value)~="table" and tostring(value) or "+&"..serialization(value):gsub(";","?").."&-")
			str = str .. ':' .. tostring(index) .. prefix .. tbOption .. ";"
		end
		return str
	elseif type(x) == "string" then
		local s = x
		local list = {}
		for str in s:gmatch("(.-);") do
			local varName,valueType,value = str:match(':(.-)_(%p)(.+)')
			if varName~=nil then
				varName = tonumber(varName) or varName
				if valueType == "@" then
					list[varName] = tostring(value)
				elseif valueType == "!" then
					list[varName] = value=="true"
				elseif valueType == "#" then
					list[varName] = tonumber(value)
				elseif valueType == "%" then
					list[varName] = serialization(value:gsub("+&",""):gsub("&-",""):gsub("%?",";"))
				end	
			end
		end
		return list
	end
end

--[[ Other game modes ]]--
jokenpo = {
	translations = {
		en = {
			tie = "Tie",
			won = "Won",
			welcome = "Welcome to <ROSE>#Jokenpo<CE>! Choose a chair, press space and start playing!\n\tReport any issue to Bolodefchoco",
			guide = "<%s>Hello %s! <J>Press\n\t<PS>» <J>%s<PT> - Rock\n\t<PS>» <J>%s<PT> - Paper\n\t<PS>» <J>%s<PT> - Scissor (Pufferfish)",
			played = "You've selected the item %s!",
			items = {"Rock","Paper","Scissor"},
			winner = "Won the game!",
		},
		br = {
			tie = "Empate",
			won = "Venceu",
			welcome = "Bem-vindo ao <ROSE>#Jokenpo<CE>! Escolha uma cadeira, aperte espaço e comece a jogar!\n\tReporte qualquer problema para Bolodefchoco",
			guide = "<%s>Olá %s! <J>Pressione\n\t<PS>» <J>%s<PT> - Pedra\n\t<PS>» <J>%s<PT> - Papel\n\t<PS>» <J>%s<PT> - Tesoura (Baiacu)",
			played = "Você selecionou o item %s!",
			items = {"Pedra","Papel","Tesoura"},
			winner = "Venceu o jogo!",
		},
	},
	langue = "en",
	totalRounds = 5,
	objects = {
		[1] = 85,
		[2] = 95,
		[3] = 65,
	},
	cBlue = "",
	cRed = "",
	players = {},
	round = 0,
	timer = 0,
	newMapCD = 0,
	tie = 0,
	init = function()
		jokenpo.langue = jokenpo.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setRoomMaxPlayers(25)
		jokenpo.newRound()
	end,
	map = function()
		tfm.exec.newGame('<C><P /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="30" o="2d3232" H="400" Y="200" T="12" X="15" /><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="2d3232" H="70" Y="410" T="12" X="400" /><S L="30" o="2d3232" H="400" X="785" Y="210" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" H="20" X="400" Y="10" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="E3454D" X="318" H="66" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="E3454D" H="46" Y="196" T="12" X="346" /><S L="10" o="E3454D" H="66" X="374" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="E3454D" H="46" X="346" Y="252" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="4577E3" X="482" Y="224" T="12" H="66" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="4577E3" X="454" Y="252" T="12" H="46" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="4577E3" H="66" Y="224" T="12" X="426" /><S L="10" o="4577E3" H="46" X="454" Y="196" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S L="10" o="45e374" H="66" X="372" Y="105" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="45e374" X="400" Y="77" T="12" H="46" /><S L="10" o="45e374" X="428" H="66" Y="105" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="45e374" X="400" H="46" Y="133" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S L="74" X="137" H="152" Y="300" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="73" X="122" H="10" Y="150" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="117" X="705" H="65" Y="340" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="14" X="677" H="10" Y="289" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="710" H="10" Y="285" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="655" H="18" Y="301" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D><P C="1c2b2b" Y="0" T="34" X="0" P="0,0" /><P P="0,0" Y="334" T="113" X="415" /><P C="cdc5bc,564740" Y="375" T="105" X="285" P="0,1" /><P C="cdc5bc,564740" Y="375" T="105" X="515" P="0,0" /><P C="564740" Y="376" T="104" X="400" P="0,0" /><DS Y="320" X="400" /><P C="413632" Y="379" T="95" P="0,0" X="707" /><P X="124" Y="174" T="112" P="0,0" /><P C="4577E3,babd2f,45e374,E3454D" Y="306" T="93" P="0,0" X="684" /><P C="413632,a3468e" Y="382" T="94" P="0,0" X="132" /><P P="0,0" Y="336" T="21" X="400" /><P X="400" Y="336" T="21" P="0,1" /><P X="475" Y="335" T="31" P="0,0" /><P X="325" Y="335" T="31" P="0,1" /></D><O /></Z></C>')
	end,
	player = function(n,b)
		for i,k in next,{string.byte("BNM")} do
			system.bindKeyboard(n,k,true,b)
		end
		if b then
			system.bindKeyboard(n,32,true,false)
			tfm.exec.playEmote(n,8)
		end
	end,
	getResults = function()
		local run = {}
		for i = 2,1,-1 do
			local v = jokenpo.players[i]
			if v[3] == -1 then
				run[i] = false
			else
				run[i] = v[4] 
			end
		end

		local winner = ((run[1] and run[2]) and ((3 + run[1] - run[2]) % 3) or run[1] and 1 or run[2] and 2 or 0)

		local ids = {}
		if winner == 1 then
			ids = {24,5}
			jokenpo.players[1][2] = jokenpo.players[1][2] + 1
			tfm.exec.chatMessage("<CE>[•] <R>" .. jokenpo.players[1][1] .. " " .. jokenpo.translations[jokenpo.langue].won)
		elseif winner == 2 then
			ids = {5,24}
			jokenpo.players[2][2] = jokenpo.players[2][2] + 1
			tfm.exec.chatMessage("<CE>[•] <BV>" .. jokenpo.players[2][1] .. " " .. jokenpo.translations[jokenpo.langue].won)
		elseif winner == 0 then
			ids = {4,4}
			jokenpo.tie = jokenpo.tie + 1
			tfm.exec.chatMessage("<CE>[•] <J>" .. jokenpo.translations[jokenpo.langue].tie)
		end
		tfm.exec.playEmote(jokenpo.players[1][1],ids[1])
		tfm.exec.playEmote(jokenpo.players[2][1],ids[2])
	end,
	getNameDisplay = function()
		local str = ""
		if #jokenpo.players == 2 then
			str = "<R>" .. jokenpo.players[1][1] .. " <V>- <BV>" .. jokenpo.players[2][1]
		else
			if jokenpo.players[1] then
				str = "<R>" .. jokenpo.players[1][1]
			elseif jokenpo.players[2] then
				str = "<BV>" .. jokenpo.players[2][1]
			else
				return ""
			end
		end
		return "   <G>|   <N>Players : " .. str
	end,
	colorName = function()
		if jokenpo.players[1] then
			tfm.exec.setNameColor(jokenpo.players[1][1],0xE3454D)
		end
		if jokenpo.players[2] then
			tfm.exec.setNameColor(jokenpo.players[2][1],0x4577E3)
		end
	end,
	newRound = function()
		jokenpo.map()
		ui.removeTextArea(0,nil)
		jokenpo.timer,jokenpo.newMapCD = 9.5,0

		if (jokenpo.round+1) == jokenpo.totalRounds then
			jokenpo.round = 0
			
			for k,v in next,jokenpo.players do
				jokenpo.player(v[1],false)
				system.bindKeyboard(v[1],32,true,true)
			end

			jokenpo.cBlue,jokenpo.cRed = "",""
			jokenpo.players = {}
			jokenpo.tie = 0
			for i = 1,2 do
				ui.removeTextArea(i,nil)
			end
		else
			for k,v in next,jokenpo.players do
				jokenpo.player(v[1],true)
				v[3] = -1
			end
			jokenpo.colorName()
		end
		jokenpo.round = jokenpo.round + 1
		
		ui.addTextArea(3,"<p align='center'><font size='35'><J>"..math.floor(jokenpo.timer),nil,380,85,40,40,1,1,0,true)
		ui.setMapName("<PT>#Jokenpo   <G>|   <N>Round : <V>" .. jokenpo.round .. jokenpo.getNameDisplay() .."<")
		ui.addTextArea(4,"<p align='center'><font size='25'><J><B>X</B><font size='13'>\n"..("%02d"):format(jokenpo.tie),nil,380,207,40,nil,1,1,0,true)
	end,
	eventNewPlayer = function(n)
		tfm.exec.chatMessage("<CE>[•] " .. jokenpo.translations[jokenpo.langue].welcome,n)
		system.bindKeyboard(n,32,true,true)
		tfm.exec.respawnPlayer(n)
	end,
	eventKeyboard = function(n,k,d,x,y)
		if k == 32 then
			if math.pythag(285,330,x,y,30) then
				if jokenpo.cRed == "" then
					tfm.exec.chatMessage("<CE>[•] " .. jokenpo.translations[jokenpo.langue].guide:format("R",n,"B","N","M"),n)
					jokenpo.cRed = n
					jokenpo.players[1] = {n,0,-1,0}
					ui.addTextArea(1,"<p align='center'>"..n.."\n"..("%02d"):format(jokenpo.players[1][2]),nil,270,165,105,nil,1,1,0,true)
					jokenpo.player(n,true)
				end
			elseif math.pythag(515,330,x,y,30) then
				if jokenpo.cBlue == "" then
					tfm.exec.chatMessage("<CE>[•] " .. jokenpo.translations[jokenpo.langue].guide:format("BV",n,"B","N","M"),n)
					jokenpo.cBlue = n
					jokenpo.players[2] = {n,0,-1,0}
					ui.addTextArea(2,"<p align='center'>"..n.."\n"..("%02d"):format(jokenpo.players[2][2]),nil,425,165,105,nil,1,1,0,true)
					jokenpo.player(n,true)
				end
			end
			ui.setMapName("<PT>#Jokenpo   <G>|   <N>Round : <V>" .. jokenpo.round .. jokenpo.getNameDisplay() .."<")
			jokenpo.colorName()
		else
			if jokenpo.cBlue ~= "" and jokenpo.cRed ~= "" then
				local isPlaying,ind = table.find(jokenpo.players,n,1)
				if isPlaying then
					if jokenpo.players[ind][3] == -1 then
						local found,key = table.find({string.byte("BNM")},k)
						if found then
							tfm.exec.chatMessage("<CE>[•] <J>" .. jokenpo.translations[jokenpo.langue].played:format(jokenpo.translations[jokenpo.langue].items[key]),n)
							jokenpo.player(n,false)
							jokenpo.players[ind][3] = jokenpo.objects[key]
							jokenpo.players[ind][4] = key
						end
					end
				end
			end
		end
	end,
	eventLoop = function(currentTime)
		if _G.currentTime > 3 then
			if jokenpo.newMapCD > 0 and os.time() > jokenpo.newMapCD then
				jokenpo.newRound()
			end

			if jokenpo.cBlue ~= "" and jokenpo.cRed ~= "" then
				if _G.currentTime % 2 == 0 then
					tfm.exec.movePlayer(jokenpo.cBlue,515,330)
					tfm.exec.playEmote(jokenpo.cBlue,26)
					tfm.exec.movePlayer(jokenpo.cRed,285,330)
					tfm.exec.playEmote(jokenpo.cRed,26)
				end

				if jokenpo.timer < 10 then
					jokenpo.timer = jokenpo.timer - .5
					ui.updateTextArea(3,"<p align='center'><font size='35'><J>"..math.floor(jokenpo.timer),nil)
					
					if jokenpo.timer <= 0 then
						jokenpo.timer = 10
						
						jokenpo.getResults()
						
						local spawnCoord = {350,450}
						for k,v in next,jokenpo.players do
							tfm.exec.addShamanObject(v[3],spawnCoord[k],200)
							ui.updateTextArea(k,"<p align='center'>"..v[1].."\n"..("%02d"):format(v[2]),nil)
						end
	
						ui.addTextArea(0,("<font size='50'><p align='center'><R>%d <PT>| <J>%d <PT>| <BV>%s"):format(jokenpo.players[1][2],jokenpo.tie,jokenpo.players[2][2]),nil,5,270,795,nil,1,1,0,true)
						ui.addTextArea(4,"<p align='center'><font size='25'><J><B>X</B><font size='13'>\n"..("%02d"):format(jokenpo.tie),nil,380,207,40,nil,1,1,0,true)
						
						if jokenpo.round == jokenpo.totalRounds then
							jokenpo.round = 0

							local p = {table.unpack(jokenpo.players)}
							local winner = ""
							
							if p[1][2] == p[2][2] then
								winner = jokenpo.translations[jokenpo.langue].tie .. "!"
							else
								table.sort(p,function(p1,p2) return p1[2] > p2[2] end)
								winner = string.format("%s (%s) %s!",p[1][1],p[1][2],jokenpo.translations[jokenpo.langue].won)
								tfm.exec.chatMessage("<CE>[•] " .. p[1][1] .. " " .. jokenpo.translations[jokenpo.langue].winner,n)
							end
							
							ui.updateTextArea(0,"<V>".. winner .. "\n<font size='13'><R>" .. jokenpo.players[1][2] .. " <PT>|<J> " .. jokenpo.tie .. " | <BV>" .. jokenpo.players[2][2],nil)
						end
						jokenpo.newMapCD = os.time() + 25e2
					end
				end
			end
		end
	end
}
click = {
	translations = {
		en = {
			welcome = "<BV>Welcome to <CH><B>#click</B><BV>!\n\t» Typing <B>!info</B> displays the help message\n\t» Typing <B>!p Playername</B> opens the profile of the player\n\t» Report any issue to <B>Bolodefchoco</B>",
			fast = "Click as fast as you can! You have %s seconds!",
			won = "%s won!",
			newGame = "New game in <ROSE>%s seconds",
			help = "<BV>Click on the big circle <CH>as fast as you can<BV>. The more you click the higher your chances to be the winner!",
			profile = "Total clicks <BL>: <V>%s\n<J>High Score <BL>: <V>%s\n\n<J>Victories <BL>: <V>%s",
			close = "Close",
		},
		br = {
			welcome = "<BV>Bem-vindo ao <CH><B>#click</B><BV>!\n\t» Digitando <B>!info</B> aparece uma mensagem de ajuda\n\t» Digitando <B>!p Jogador</B> abre o perfil do jogador\n\t» Reporte qualquer problema para <B>Bolodefchoco</B>",
			fast = "Clique o mais rápido que você puder! Você tem %s segundos!",
			won = "%s venceu!",
			newGame = "Novo jogo em <ROSE>%s segundos",
			help = "<BV>Clique no grande circulo <CH>o mais rápido que você puder<BV>. Quanto mais você clicar maior sua chance de ganhar!",
			profile = "Cliques totais <BL>: <V>%s\n<J>Maior pontuação <BL>: <V>%s\n\n<J>Vitórias <BL>: <V>%s",
			close = "Fechar",
		},
	},
	langue = "en",
	new = 11,
	timer = 21,
	info = {},
	init = function()
		click.langue = click.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for k,v in next,{"utoNewGame","utoShaman","fkDeath","utoScore"} do
			tfm.exec["disableA"..v]()
		end
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("p",true)
		click.map()
	end,
	map = function()
		tfm.exec.newGame('<C><P /><Z><S><S L="800" H="100" X="400" Y="400" T="0" P="0,0,0.3,0.2,0,0,0,0" /></S><D><DS X="25" Y="350" /></D><O /><L><JPL P1="125,127"P3="125,131"P4="124,136"P2="123,142"c="000000,16"/><JPL P1="123,142"P3="123,147"P4="123,153"P2="123,160"c="000000,16"/><JPL P1="123,160"P3="123,166"P4="125,172"P2="126,178"c="000000,16"/><JPL P1="126,178"P3="129,185"P4="133,191"P2="138,196"c="000000,16"/><JPL P1="138,196"P3="144,201"P4="151,206"P2="160,210"c="000000,16"/><JPL P1="160,210"P3="171,214"P4="183,216"P2="197,218"c="000000,16"/><JPL P1="197,218"P3="213,219"P4="231,219"P2="213,219"c="000000,16"/><JD P1="215,244"P2="243,225"c="000000,16"/><JD P1="243,225"P2="229,196"c="000000,16"/><L /></L></Z></C>')
	end,
	eventPlayerDied = function(n)
		tfm.exec.respawnPlayer(n)
	end,
	eventNewPlayer = function(n)
		tfm.exec.chatMessage(click.translations[click.langue].welcome,n)
		click.info[n] = {
			count = 0,
			total = 0,
			best = 0
		}
		tfm.exec.setPlayerScore(n,0)
	end,
	eventLoop = function()
		click.new = click.new - .5
		if click.new <= 0 then
			if click.timer > 0 then
				click.timer = click.timer - .5
				ui.setMapName("CLICK!<")
				ui.addTextArea(0,"<p align='center'><font size='28'>" .. click.translations[click.langue].fast:format(math.floor(click.timer)),nil,5,30,nil,nil,1,1,0,true)
				ui.addTextArea(1,"<p align='center'><font size='600'><R><a href='event:.'>•",nil,240,-180,nil,nil,1,1,0,false)
			else
				local p,r = {},""
				for k,v in next,click.info do
					p[#p+1] = {k,v.count}
				end
				table.sort(p,function(t1,t2) return t1[2] > t2[2] end)
				for k,v in next,p do
					if k < 51 then
						if k == 1 and v[2]>0 then
							tfm.exec.chatMessage("<J>" .. click.translations[click.langue].won:format(v[1]))
							tfm.exec.setPlayerScore(v[1],1,true)
						end
						r = r .. "<J>"..k..". <V>"..v[1].." <BL>- <VP>"..v[2].." clicks\n"
					end
				end
				ui.addTextArea(0,r,nil,5,30,250,330,1,1,1,true)
				click.new = 11
				click.timer = 21
				for k,v in next,click.info do
					if #p > 2 then
						v.total = v.total + v.count
						if v.count > v.best then
							v.best = v.count
						end
					end
					v.count = 0
					tfm.exec.respawnPlayer(k)
				end
			end
		else
			ui.setMapName("<J>" .. click.translations[click.langue].newGame:format(math.floor(click.new).."<J>") .. "!<")
		end
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "." then
			if click.new <= 0 and not tfm.get.room.playerList[n].isDead then
				click.info[n].count = click.info[n].count + 1
				tfm.exec.displayParticle(15,math.random(150,650),math.random(100,300),0,0,0,0,n)
			end
		end
		if c == "cp" then
			for i = 3,4 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	eventChatCommand = function(n,c)
		local p = {}
		for k in c:gmatch("[^%s]+") do
			p[#p+1]=k
		end
		if p[1] == "info" then
			tfm.exec.chatMessage(click.translations[click.langue].help,n)
		end
		if p[1] == "p" then
			if p[2] then
				p[2] = p[2]:lower():gsub("%a",string.upper,1)
			else
				p[2] = n
			end
			if click.info[p[2]] then
				ui.addTextArea(3,"<p align='center'><font size='18'><a:active>"..p[2].."<font size='13'><p align='left'>\n<J>" .. click.translations[click.langue].profile:format(click.info[p[2]].total,click.info[p[2]].best,tfm.get.room.playerList[p[2]].score),n,620,260,175,130,1,1,1,true)
				ui.addTextArea(4,"<p align='center'><R><B><a href='event:cp'>" .. click.translations[click.langue].close,n,625,365,165,20,0x101010,0x101010,1,true)
			end
		end
	end,
}
presents = {
	translations = {
		en = {
			nowinner = "Nobody won",
			won = "won",
			welcome = "<J>Welcome to <VP><B>#presents</B><J>! Choose a gap according to the gift represented and good luck! You will win if your three-gifts-sequence is correct!\n\n<CE>Developed by Bolodefchoco and projected by Ruamorangos",
			appear = "You will appear in the next game!",
			choose = "Choose a gift in less than <PT>%s seconds!",
			dead = "Those who are out of the correct gift will be dead!",
			newGame = "New game in <PT>%s seconds!",
		},
		br = {
			nowinner = "Ninguém venceu",
			won = "venceu",
			welcome = "<J>Bem-vindo ao <VP><B>#presents</B><J>! Escolha um buraco de acordo com o presente representado e boa sorte! Você ganhará se sua sequência nos três presentes estiver correta!\n\n<CE>Desenvolvido por Bolodefchoco, pedido por Ruamorangos",
			appear = "Você irá aparecer no próximo jogo!",
			choose = "Escolha um presente em menos de <PT>%s segundos!",
			dead = "Aqueles que estão fora do presente correto serão mortos!",
			newGame = "Novo jogo em <PT>%s segundos!",
		},
	},
	langue = "en",
	gifts = {},
	winners = {},
	isRunning = false,
	choice = {15,true},
	block = {5,false},
	newMap = {10,false},
	currentGift = 1,
	total = 1,
	init = function()
		presents.langue = presents.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for k,v in next,{"AutoShaman","AutoNewGame","AutoTimeLeft","AutoScore","AfkDeath","MortCommand","DebugCommand","PhysicalConsumables"} do
			tfm.exec["disable"..v]()
		end
		tfm.exec.setRoomMaxPlayers(30)
		presents.map()
	end,
	kill = function()
		local gift = presents.gifts[presents.currentGift] - 2099
		for k,v in next,tfm.get.room.playerList do
			if not v.isDead then
				if v.x >= (gift * 120) and v.x <= (gift * 120 + 80) and v.y > 267 then
					tfm.exec.setPlayerScore(k,1,true)
				else
					tfm.exec.killPlayer(k)
				end
			end
		end
	end,
	map = function()
		presents.isRunning = true
		presents.gifts = {
			[1] = table.random({2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101}),
			[2] = table.random({2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104}),
			[3] = table.random({2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102})
		}
		tfm.exec.newGame('<C><P DS="m;250,120,400,120,550,120" D="x_transformice/x_inventaire/'..presents.gifts[1]..'.jpg,230,60;x_transformice/x_inventaire/'..presents.gifts[2]..'.jpg,380,60;x_transformice/x_inventaire/'..presents.gifts[3]..'.jpg,530,60;x_transformice/x_inventaire/2100.jpg,140,320;x_transformice/x_inventaire/2101.jpg,260,320;x_transformice/x_inventaire/2102.jpg,380,320;x_transformice/x_inventaire/2103.jpg,500,320;x_transformice/x_inventaire/2104.jpg,620,320" /><Z><S><S P="1,0.0001,20,0.2,90,1,0,0" H="700" L="15" X="400" c="3" Y="161" T="4" /><S X="100" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="220" c="3" Y="335" T="4" /><S X="340" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="460" c="3" Y="335" T="4" /><S X="580" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="40" P="0,0,0.3,0.2,0,0,0,0" L="40" X="100" c="3" Y="160" T="0" /><S X="700" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="550" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="250" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S H="20" P="0,0,0.3,0.2,0,0,0,0" L="800" X="400" Y="10" T="0" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="700" c="3" Y="335" T="4" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="800" H="100" c="3" Y="415" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" H="10" L="50" o="324650" X="745" c="3" Y="138" T="13" /><S X="55" P="0,0,0.3,0.2,0,0,0,0" L="50" o="324650" H="10" c="3" Y="138" T="13" /><S P="0,0,0.3,0.2,0,0,0,0" H="140" L="100" o="324650" X="55" c="3" Y="72" T="12" /><S X="745" P="0,0,0.3,0.2,0,0,0,0" L="100" o="324650" H="140" c="3" Y="72" T="12" /><S P="0,0,0,0,0,0,0,0" H="102" L="581" o="6a7495" X="401" c="4" v="3001" Y="78" T="12" /></S><D /><O /><L><JR M2="10" M1="0" /></L></Z></C>')
	end,
	victory = function(none)
		if presents.choice[2] then
			local winner = "%s %s%s!"
			if none or system.players() == 0 then
				local text = presents.translations[presents.langue].nowinner
				winner = winner:format("","",text)
				tfm.exec.chatMessage("<J>" .. text)
			else
				local text = presents.translations[presents.langue].won
				winner = winner:format(table.concat(system.players(true),", "),"%s",text)
				for k,v in next,system.players(true) do
					tfm.exec.chatMessage("<G>"..v.." <J>" .. text .. "!")
					local found = {false,0}
					for i,j in next,presents.winners do
						if j[1] == v then
							found = {true,i}
							break
						end
					end
					if found[1] then
						presents.winners[found[2]][2] = presents.winners[found[2]][2] + 1
					else
						presents.winners[#presents.winners + 1] = {v,1}
					end
				end
			end
			ui.addTextArea(0,"<B><p align='center'><font size='22' color='#1'>".. winner:format(""),nil,0,222,800,h,1,1,0,true)
			ui.addTextArea(1,"<B><p align='center'><font size='22'><V>".. winner:format("<J>"),nil,0,220,800,h,1,1,0,true)
			presents.newMap[2] = true
		end
	end,
	eventNewPlayer = function(n)
		tfm.exec.chatMessage(presents.translations[presents.langue].welcome,n)
		if presents.isRunning then
			ui.addTextArea(2,"<font size='20'><VP>" .. presents.translations[presents.langue].appear,n,216,65,365,35,1,1,1,true)
			tfm.exec.chatMessage("<VP>" .. presents.translations[presents.langue].appear,n)
		else
			tfm.exec.respawnPlayer(n)
		end
	end,
	eventNewGame = function()
		if presents.isRunning then
			for i,x in next,{250,400,550} do
				tfm.exec.addPhysicObject(i,x,75,{
					type = 12,
					height = 90,
					width = 90,
					miceCollision = false,
					groundCollision = false,
					color = 0x6A7495
				})
			end
			for i = 0,1 do
				ui.removeTextArea(i)
			end
			presents.choice = {15,true}
			presents.block = {5,false}
			presents.newMap = {10,false}
			presents.currentGift = 1
		end
		tfm.exec.setGameTime(1e7)
		ui.removeTextArea(2,nil)
	end,
	eventLoop = function(currentTime)
		local mapName = "<N>Rivals : <V>"..system.players()
		if _G.currentTime > 4 and presents.isRunning then
			if presents.choice[2] then
				mapName = "<N>Rivals : <V>"..system.players().."   <G>|   <J>" .. presents.translations[presents.langue].choose:format(math.floor(presents.choice[1]).."<J>")
				presents.choice[1] = presents.choice[1] - .5
				if presents.choice[1] <= 0 then
					presents.choice = {15,false}
					presents.block[2] = true
				end
			end
			if presents.block[2] then
				mapName = "<N>Rivals : <V>"..system.players().."   <G>|   <R>" .. presents.translations[presents.langue].dead
				presents.block[1] = presents.block[1] - .5
				tfm.exec.addPhysicObject(4,400,270,{
					type = 4,
					height = 10,
					width = 640,
					miceCollision = true,
					groundCollision = false
				})
				tfm.exec.removePhysicObject(presents.currentGift)
				if presents.block[1] == 2 then
					presents.kill()
				end
				if presents.block[1] <= 0 then
					presents.currentGift = presents.currentGift + 1
					presents.block = {5,false}
					presents.choice[2] = true
					if presents.currentGift == 4 then
						presents.victory()
						presents.choice[2] = false
					end
				end
			else
				tfm.exec.removePhysicObject(4)
			end
			if presents.newMap[2] then
				mapName = "<PS>" .. presents.translations[presents.langue].newGame:format(math.floor(presents.newMap[1]).."<PS>")
				presents.newMap[1] = presents.newMap[1] - .5
				if presents.newMap[1] <= 0 then
					presents.map()
				end
			end
			if system.players() == 0 then
				presents.victory(true)
				presents.newMap[2] = true
				presents.choice[2] = false
			end
		end
		ui.setMapName(mapName.."<")
	end
}
chat = {
	translations = {
		en = {
			welcome = "<J>Welcome to #chat. Enjoy while you are muted ?! Report any issue to Bolodefchoco."
		},
		br = {
			welcome = "<J>Bem-vindo ao #chat. Aproveite enquanto você está mutado ?! Reporte qualquer problema para Bolodefchoco."
		},
	},
	langue = "en",
	data = {},
	info = {},
	title = "Chat",
	init = function()
		chat.langue = chat.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("title",true)
		chat.displayChat()
	end,
	loadMessage = function()
		local message = ""
		for i = 18,1,-1 do
			if #message < 2000 then
				local line = chat.data[i] or ""
				if #line > 63 then
					line = line:sub(1,60) .. "...\n"
				end
				message = message .. line
			end
		end
		return message
	end,
	Chat = function(n,message)
		ui.addPopup(0,2,"",n,197,325,405,true)
		ui.addTextArea(0,"",n,198,73,404,253,0x212E35,0x212E35,1,true)
		ui.addTextArea(1,message,n,200,75,400,250,0x324650,0x324650,1,true)
		ui.addTextArea(2,"<p align='center'><B><V>" .. chat.title,n,198,53,404,20,0x212E35,0x212E35,1,true)
		ui.addTextArea(3,"<p align='right'><B><R><a href='event:close'>X",n,200,54,400,20,1,1,0,true)
	end,
	displayChat = function(n)
		local loadM = chat.loadMessage()
		if n then
			chat.Chat(n,loadM)
		else
			for k,v in next,chat.info do
				if v.open then
					chat.Chat(k,loadM)
				else
					v.toRead = v.toRead + 1
					chat.updateToRead(k)
				end
			end
		end
	end,
	updateToRead = function(n)
		ui.addTextArea(4,"<p align='center'><V><a href='event:open'><B>" .. chat.title:sub(1,10) .. "</B> <J>" .. chat.info[n].toRead,n,745,378,50,nil,0x324650,0x212E35,1,true)
	end,
	eventPopupAnswer = function(i,n,a)
		if a ~= "" then
			table.insert(chat.data,1,string.format("<V>[%s] <N>%s\n",n,a:gsub("<","&lt;"):gsub("https?",""):gsub("://","")))
			chat.displayChat()
		else
			chat.displayChat(n)
		end
	end,
	eventNewPlayer = function(n)
		chat.info[n] = {
			open = true,
			toRead = 0,
		}
		chat.displayChat(n)
		tfm.exec.chatMessage(chat.translations[chat.langue].welcome,n)
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			ui.addPopup(0,2,"",n,1e7,1e7)
			for i = 0,3 do
				ui.removeTextArea(i,n)
			end
			chat.info[n].open = false
			chat.updateToRead(n)
		elseif c == "open" then
			chat.info[n].open = true
			chat.info[n].toRead = 0
			chat.displayChat(n)
			ui.removeTextArea(4,n)
		end		
	end,
	eventChatCommand = function(n,c)
		if c:sub(1,5) == "title" and c:sub(7) ~= "" and system.roomAdmins[n] then
			chat.title = c:sub(7,47)
			chat.displayChat()
		end
	end,
}
cannonup = {
	translations = {
		en = {
			profile = "Rounds : <V>%d</V>\nCheeses : <V>%d</V>\n\nDeaths : <V>%d</V>",
			welcome = "Welcome to #cannonup, %s. Your aim is to be the survivor! <VP>Take care, watermelons are dangerous!\n\t<J>Report any issue to Bolodefchoco.",
			needed = "At least 2 mice are necessary to play #CannonUp!",
			nosurvivor = "No survivors!",
			won = "%s <G>won!",
		},
		br = {
			profile = "Rodadas : <V>%d</V>\nQueijos : <V>%d</V>\n\nMortes : <V>%d</V>",
			welcome = "Bem-vindo ao #cannonup, %s. Seu objetivo é ser o sobrevivente! <VP>Tome cuidado, melancias são perigosas!\n\t<J>Reporte qualquer problema para Bolodefchoco.",
			needed = "Pelo menos 2 ratos são necessários para jogar #CannonUp!",
			nosurvivor = "Nenhum sobrevivente!",
			won = "%s <G>venceu!",
		},
	},
	langue = "en",
	start = false,
	initX = nil,
	initY = nil,
	newSpawn = 0,
	toSpawn = {},
	toDespawn = {},
	timer = 0,
	difficulty = {0,1,1}, -- timer to verify again, dif, amount of cn
	xml = 0,
	alive = 0,
	maps = {2310447,3746497,6001536,3666224,4591929,"#10"},
	info = {},
	init = function()
		cannonup.langue = cannonup.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end
		for k,v in next,{"p","profile"} do
			system.disableChatCommandDisplay(v,true)
		end
		tfm.exec.setRoomMaxPlayers(25)
		tfm.exec.newGame(table.random(cannonup.maps))
	end,
	hostCannon = function()
		local getPlayer = table.random(system.players(true))
		local player = tfm.get.room.playerList[getPlayer]
		if player and not player.isDead then
			local coord = {
				{player.x,math.random() * 700},
				{player.y,math.random() * 300},
				{false,false}
			}
			
			if cannonup.initX ~= nil then
				coord[1][2] = cannonup.initX
				coord[3][1] = true
			end
			if cannonup.initY ~= nil then
				coord[2][2] = cannonup.initY
				coord[3][2] = true
			end
			
			if not coord[3][2] and coord[2][2] > coord[2][1] then
				coord[2][2] = coord[2][1] - math.random(100) - 35
			end
			if not coord[3][1] and math.abs(coord[1][2] - coord[1][1]) > 350 then
				coord[1][2] = coord[1][1] + math.random(-100,100)
			end
			
			local ang = math.deg(math.atan2(coord[2][2] - coord[2][1],coord[1][2] - coord[1][1]))
			tfm.exec.addShamanObject(0,coord[1][2] - (coord[3][1] and 0 or 10),coord[2][2] - (coord[3][2] and 0 or 10),ang + 90)
			
			cannonup.toSpawn[#cannonup.toSpawn + 1] = {coord[1][2],coord[2][2],ang}
		end
	end,
	displayProfile = function(p,n)
		ui.addTextArea(1,"\n\n<font size='13'>\n" .. cannonup.translations[cannonup.langue].profile:format(cannonup.info[p].round,cannonup.info[p].win,cannonup.info[p].death),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
		ui.addTextArea(2,"<p align='center'><font size='20'><VP><B><a href='event:close'>"..p.."</a>",n,305,105,190,30,0x244452,0x1B282E,.4,true)
	end,
	eventNewPlayer = function(n)
		if not cannonup.info[n] then
			cannonup.info[n] = {
				win = 0,
				death = 0,
				round = 0,
			}
		end
		tfm.exec.chatMessage("<V>[•] <CE>" .. cannonup.translations[cannonup.langue].welcome:format(n),n)
	end,
	eventNewGame = function()
		cannonup.start = true
		
		cannonup.toDespawn = {}
		cannonup.toSpawn = {}

		tfm.exec.setGameTime(125)
		ui.setMapName("#CannonUp")

		ui.removeTextArea(0,nil)
		local alive,mice = system.players()
		if mice > 1 then
			if cannonup.xml == 0 then
				cannonup.xml = xml.addAttrib(tfm.get.room.xmlMapInfo.xml or "",{
					[1] = {
						tag = "BH",
						value = ""
					}
				},false)
				ui.addTextArea(0,"",nil,-1500,-1500,3e3,3e3,0x6A7495,0x6A7495,1,true)
			else
				cannonup.initX = nil
				cannonup.initY = nil
				
				if mice > 3 then
					for k,v in next,cannonup.info do
						v.round = v.round + 1
					end
				end

				xml.attribFunc(cannonup.xml or "",{
					[1] = {
						attribute = "cn",
						func = function(v)
							if v:find("%a; ?%d+") then
								local axis,val = v:match("(%a); ?(%d+)")
								axis = axis:lower()
								if axis == "x" or axis == "y" then
									cannonup["init"..axis:upper()] = tonumber(val)
								end
							elseif v:find("%d+, ?%d+") then
								cannonup.initX,cannonup.initY = v:match("(%d+), ?(%d+)")
							end
						end
					},
					[2] = {
						attribute = "cheese",
						func = function() table.foreach(tfm.get.room.playerList,tfm.exec.giveCheese) end
					},
					[3] = {
						attribute = "meep",
						func = function() table.foreach(tfm.get.room.playerList,tfm.exec.giveMeep) end
					},
				})

				cannonup.xml = 0
			end
		else
			cannonup.start = false
			tfm.exec.chatMessage("<V>[•] <R>" .. cannonup.translations[cannonup.langue].needed)
			tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
		end
	end,
	eventLoop = function(currentTime,leftTime)
		if cannonup.xml ~= 0 then
			tfm.exec.newGame(cannonup.xml)
		end
		
		local alive = system.players(true)
		cannonup.alive = #alive
		if cannonup.alive < 2 or leftTime < 4 then
			if cannonup.alive == 0 then
				tfm.exec.chatMessage("<G>" .. cannonup.translations[cannonup.langue].nosurvivor .. " :(")
			else
				for k,v in next,alive do
					tfm.exec.giveCheese(v)
					tfm.exec.playerVictory(v)
				end
				tfm.exec.chatMessage("<J>" .. cannonup.translations[cannonup.langue].won:format(table.concat(alive,"<G>, <J>")))
			end
			tfm.exec.newGame(table.random(cannonup.maps))
		end
		
		if cannonup.xml == 0 and _G.currentTime > 5 and _G.leftTime > 3 then
			if os.time() > cannonup.newSpawn then
				cannonup.timer = cannonup.timer + .5
				
				if cannonup.timer == (4 - cannonup.difficulty[2]) then
					for i = 1,cannonup.difficulty[3] do
						cannonup.hostCannon()
					end
				elseif cannonup.timer == (5 - cannonup.difficulty[2]) then
					for i = 1,#cannonup.toSpawn do
						local cn = cannonup.toSpawn[i]
						cannonup.toDespawn[#cannonup.toDespawn + 1] = {tfm.exec.addShamanObject(1706,cn[1],cn[2],cn[3] - 90,20 + 8 * (cannonup.difficulty[2] / 2)),os.time() + 7e3}
					end
					cannonup.toSpawn = {}
					
					cannonup.newSpawn = os.time() + 2500
					cannonup.timer = 0
				end
			end
		end
		
		for i = 1,#cannonup.toDespawn do
			local cn = cannonup.toDespawn[i]
			if os.time() > cn[2] then
				tfm.exec.removeObject(cn[1])
			end
		end
		
		if os.time() > cannonup.difficulty[1] then
			cannonup.difficulty[1] = os.time() + 10e3
			local i,total = system.players()
			cannonup.difficulty[3] = ((total - (total%10))/10) + 1
			cannonup.difficulty[2] = (leftTime < 41 or i < 3) and 3 or (leftTime < 101 or i < 5) and 2 or 1
		end
	end,
	eventPlayerWon = function(n)
		if cannonup.alive > 3 then
			cannonup.info[n].win = cannonup.info[n].win + 1
		end
	end,
	eventPlayerDied = function(n)
		if cannonup.alive > 3 then
			cannonup.info[n].death = cannonup.info[n].death + 1
		end
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			for i = 1,2 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	eventChatCommand = function(n,c)
		local p = {}
		for cmd in c:gmatch("[^%s]+") do
			p[#p+1]=cmd
		end
		p[1] = p[1]:lower()
		if p[1] == "p" or p[1] == "profile" then
			if p[2] then
				p[2] = string.nick(p[2])
				if tfm.get.room.playerList[p[2]] then
					cannonup.displayProfile(p[2],n)
				end
			else
				cannonup.displayProfile(n,n)
			end
		end
	end,
}

--[[ Map System ]]--
system.maps = {6226386,5993927,5198518,6133469,4396371,5425815,4140491,5168440,3324180,6564380,6600268,6987992,6987993,6988672,6230212,6340023,7057010,7047955,3326675,4184558,6392883,3324284,5043429,3326655,7069304,7069314,7069343,7069816,7069835,6558179,6726599,5921744,5921754,5632126,7071400,3099763,2283901,2887357,5507021,6945850,6568120,2874090,6961916,6576282,6578479, 6994066,4055924,4361619,4361785,4612510,4633670,3851416,4362362,4514386,4592612,6332986,5981054,7071075,7079644,6968299,7079708,7079827,7079880,7078090,7079092,6347093,2265250,6620004,5198607,6935117,5921867,7074686,3448597,4509060,4364504,4802574,6300148,4493715,4531989,4509584,7086737,7086768,7087798,7087840,6391815,6335452,6797243,7090907,7090909,6333026,7011800,7095393}
system.newMap = coroutine.wrap(function()
	local currentMap = 0
	while true do
		if currentMap >= #system.maps then
			currentMap = 0
		end
		if currentMap == 0 then
			local randomized = {}
			for v = 1,#system.maps do
				table.insert(randomized,math.random(#randomized),system.maps[v])
			end
			system.maps = randomized
		end
		currentMap = currentMap + 1
		coroutine.yield(system.maps[currentMap])
	end	
end)

--[[ Translation ]]--
system.staff = {
	translators = {
		{"Bolodefchoco",{"EN","BR"}},
		{"Distances","NL"},
		{"Tocutoeltuco","ES"},
		{"Sebafrancuz","PL"},
		{"Doriiarvai","HU"},
		{"Error_404","AR"},
		{"Cheeselicious","NL"},
		{"Archaeron","DE"},
		{"Aewing","FR"},
		{"Fashionkid","DE"},
		{"Yuir","ES"}
	},
	mapEvaluators = {
		{"Bolodefchoco","14/02/2017"},
		{"Error_404","11/03/2017"}
	},
}
for k,v in next,system.staff do
	table.sort(v,function(t1,t2) return t2[1] > t1[1] end)
end

system.translation = {}
system.translation.en = {
	welcome = "Welcome to #%s! Can you be the fastest mouse using the ground effects? Try it!\n<PS>Press H for more info!",
	developer = "Developed by %s",
	bought = "You just spent %s coins for the ground %s!",
	cantbuy = "You haven't coins enough in order to buy this upgrade! :(",
	profile = "Leaderboard : %s\n\n<N>Rounds : %s\n<N>Podiums : %s\n\n<N>Deaths : %s\n\n<N>Shop Coins : %s",
	gotcoin = "You just got %s coins! :D",
	powersenabled = "The ground powers were enabled! Good luck!",
	language = "Current language : <J>%s",
	zombie = "Now you are a zombie!",
	password = {
		on = "New password : %s",
		off = "Password disabled!"
	},
	countstats = {
		mice = "At least 5 mice are needed to stats count",
		tribe = "Stats do not count in tribe houses"
	},
	grounds = {
		-- Ground, Description
		[0] = {"Wood","?","?"},
		[1] = {"Ice","Increases your speed by pressing spacebar","Increases the speed in <BL>%s%%</BL>"},
		[2] = {"Trampoline","?","?"},
		[3] = {"Lava","Teleports you to the last Z indexed ground","?"},
		[4] = {"Chocolate","?","?"},
		[5] = {"Earth","?","?"},
		[6] = {"Grass","?","?"},
		[7] = {"Sand","Creates a sand storm","Decreases the storm in <BL>%s%%</BL>"},
		[8] = {"Cloud","Enables you to fly by pressing spacebar","Increases the fly in <BL>%s%%</BL>"},
		[9] = {"Water","Drowns you","Drowns you <BL>%s%%</BL> slower"},
		[10] = {"Stone","Creates a block of stone by pressing spacebar","Increases the block size in <BL>%s%%</BL>"},
		[11] = {"Snow","Shoots snowballs by pressing spacebar","Increases the snowball speed in <BL>%s%%</BL>"},
		[12] = {"Rectangle","Each color has its own function","?",{
			["C90909"] = "Kills you",
			["18C92B"] = "Revives all the enemies",
			["555D77"] = "Respawning Checkpoint",
		}},
		[13] = {"Circle","Each color has its own function","?"},
		[14] = {"Invisible","?","?"},
		[15] = {"Spiderweb","Teleports you to the spawn point","?"},
		
	},
	commands = {
		shop = "shop",
		profile = "profile",
		help = "help",
		langue = "langue",
		leaderboard = "leaderboard",
		info = "info",
		pw = "password",
	},
	menu = {
		[1] = {"%s","\tYour aim in this minigame is to collect the cheese the faster you can, using the effects each ground offers."},
		[2] = {"Ground effects","Click in the ground's name to read more.\n\n%s"},
		[3] = {"Commands",{
			[1] = {"\t<J>» User</J>\n",{
				[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>or</R> <VP>Key P</VP> - Opens the profile!",
				[2] = "<VP>!%s</VP> <R>or</R> <VP>Key O</VP> - Opens the shop!",
				[3] = "<VP>!%s</VP> - Changes the language!",
			}},
			[2] = {"\n\t<J>» Others</J>\n",{
				[1] = "<VP>!%s</VP> <R>or</R> <VP>Key H</VP> - Opens the help menu!",
				[2] = "<VP>!%s</VP> - Opens the leaderboard!",
				[3] = "<VP>!%s</VP> - Opens the help according to the ground you are on!",
			}},
			[3] = {"\n\t<J>» Room admin</J>\n",{
				[1] = "<VP>!%s</VP> <PS>password</PS> - Adds or removes a password in the room!",
			}},
		}},
		[4] = {"Maps","<J>Maps : %s\n\n\tAccess %s and send your map. Do not forget to read all the rules before!"},
		[5] = {"Thanks for","<R>%s <G>- <N>Developer\n%s <G>- <N>Translators\n%s <G>- <N>Map evaluators"},
	},
	shop = {
		coin = "Coins",
		power = "Ground power",
		upgrade = "Upgrade",
		price = "Upgrade price",
		close = "Close",
	},
	max = "15a2df47d2e",
	topic = "843849",
}
system.translation.br = {
	welcome = "Bem-vindo ao #%s! Você pode ser o rato mais rápido usando os efeitos dos pisos? Prove!\n<PS>Pressione H para mais informações!",
	developer = "Desenvolvido por %s",
	bought = "Você acaba de gastar %s moedas pelo piso %s!",
	cantbuy = "Você não tem moedas suficientes para comprar esta atualização! :(",
	profile = "Rank : %s\n\n<N>Partidas : %s\n<N>Pódios : %s\n\n<N>Mortes : %s\n\n<N>Moedas na loja : %s",
	gotcoin = "Você acaba de conseguir %s moedas! :D",
	powersenabled = "Os poderes dos pisos foram ativados! Boa sorte!",
	language = "Idioma atual : <J>%s",
	zombie = "Agora você é um zumbi!",
	password = {
		on = "Nova senha : %s",
		off = "Senha desativada!"
	},
	countstats = {
		mice = "Ao menos 5 ratos são necessários para as estatísticas serem contabilizadas",
		tribe = "Estatísticas não são contabilizadas em cafofos de tribo"
	},
	grounds = {
		[0] = {"Madeira","?","?"},
		[1] = {"Gelo","Aumenta sua velocidade ao pressionar a barra de espaço","Aumenta a velocidade em <BL>%s%%</BL>"},
		[2] = {"Trampolim","?","?"},
		[3] = {"Lava","Teletransporta-o para o piso de Z anterior","?"},
		[4] = {"Chocolate","?","?"},
		[5] = {"Terra","?","?"},
		[6] = {"Grama","?","?"},
		[7] = {"Areia","Cria uma tempestade de areia","Diminui a tempestade em <BL>%s%%</BL>"},
		[8] = {"Nuvem","Permite o voo ao pressionar a barra de espaço","Aumenta o voo em <BL>%s%%</BL>"},
		[9] = {"Água","Afoga-o","Afoga-o <BL>%s%%</BL> mais devagar"},
		[10] = {"Pedra","Cria um bloco de pedra ao pressionar a barra de espaço","Aumenta o tamanho do bloco em <BL>%s%%</BL>"},
		[11] = {"Neve","Atira bolas de neve ao pressionar a barra de espaço","Aumenta a velocidade da bola de neve em <BL>%s%%</BL>"},
		[12] = {"Retângulo","Cada cor tem sua própria função","?",{
			["C90909"] = "Mata-o",
			["18C92B"] = "Revive todos os inimigos",
			["555D77"] = "Checkpoint para reviver",
		}},
		[13] = {"Círculo","Cada cor tem sua própria função","?","?"},
		[14] = {"Invisível","?","?"},
		[15] = {"Teia de aranha","Teletransporta-o para o ponto de spawn","?"},
	},
	commands = {
		shop = "loja",
		profile = "perfil",
		help = "ajuda",
		langue = "idioma",
		leaderboard = "rank",
		info = "info",
		pw = "senha",
	},
	menu = {
		[1] = {"%s","\tSeu objetivo neste mini-game é coletar o queijo o mais rápido possível, utilizando os efeitos que cada piso oferecer."},
		[2] = {"Efeitos dos pisos","Clique no nome do piso para ler mais.\n\n%s"},
		[3] = {"Comandos",{
			[1] = {"\t<J>» Usuário</J>\n",{
				[1] = "<VP>!%s</VP> <PS>nomeDoJogador</PS> <R>ou</R> <VP>Tecla P</VP> - Abre o perfil!",
				[2] = "<VP>!%s</VP> <R>ou</R> <VP>Tecla O</VP> - Abre a loja!",
				[3] = "<VP>!%s</VP> - Altera o idioma!",
			}},
			[2] = {"\n\t<J>» Outros</J>\n",{
				[1] = "<VP>!%s</VP> <R>ou</R> <VP>Tecla H</VP> - Abre o menu de ajuda!",
				[2] = "<VP>!%s</VP> - Abre o ranking!",
				[3] = "<VP>!%s</VP> - Abre a ajuda de acordo com o piso que você está pisando!",
			}},
			[3] = {"\n\t<J>» Administrador da sala</J>\n",{
				[1] = "<VP>!%s</VP> <PS>senha</PS> - Adiciona ou remove uma senha na sala!",
			}},
		}},
		[4] = {"Mapas","<J>Mapas : %s\n\n\tAcesse %s e envie seu mapa. Não se esqueça de ler todas as regras antes!"},
		[5] = {"Agradecimentos","<R>%s <G>- <N>Desenvolvedor\n%s <G>- <N>Tradutores\n%s <G>- <N>Avaliadores de mapa"},
	},
	shop = {
		coin = "Moedas",
		power = "Poder do piso",
		upgrade = "Melhorar",
		price = "Preço de aprimoramento",
		close = "Fechar",
	},
	max = "15a2df3e699",
}
system.translation.nl = {
    welcome = "Welkom bij #%s! Ben jij de snelste muis door grond effecten te gebruiken? Probeer het!",
    developer = "Gemaakt door %s",
    bought = "Je gaf net %s munten uit voor de grond %s!",
    cantbuy = "Je hebt niet genoeg munten om deze upgrade uit te voeren! :(",
    profile = "Ranglijst : %s\n\n<N>Rondes : %s\n<N>Podiums : %s\n\n<N>Sterfgevallen : %s\n\n<N>Winkel Munten : %s",
    gotcoin = "Je kreeg zojuist %s munten! :D",
    powersenabled = "De grondkrachten zijn ingeschakeld! Succes!",
    language = "Huidige taal : <J>%s",
    zombie = "Nu ben je een zombie!",
	password = {
		on = "Nieuwe wachtwoord : %s",
		off = "Wachtwoord uitgezet!"
	},
	countstats = {
		mice = "Er zijn minstens 5 muizen nodig voordat de stats tellen",
		tribe = "Stats tellen niet in stamhuizen"
	},
    grounds = {
        [0] = {"Hout","?","?"},
        [1] = {"Ijs","Verhoogt je snelheid door op de spatiebalk te drukken","Verhoogd de snelheid met <BL>%s%%</BL>"},
        [2] = {"Trampoline","?","?"},
        [3] = {"Lava","Teleport jou naar de laatst Z index grond","?"},
        [4] = {"Chocolade","?","?"},
        [5] = {"Aarde","?","?"},
        [6] = {"Gras","?","?"},
        [7] = {"Zand","Maakt een zandstorm","Vemindert de storm met <BL>%s%%</BL>"},
        [8] = {"Wolk","Hiermee kun je vliegen door op de spatiebalk te drukken","Verhoogd de vlucht met <BL>%s%%</BL>"},
        [9] = {"Water","Laat je verdrinken","Maakt je <BL>%s%%</BL> langzamer"},
        [10] = {"Steen","Hiermee maak je een blok steen door op de spatiebalk te drukken","Vergroot de grootte van het blok met <BL>%s%%</BL>"},
        [11] = {"Sneeuw","Schiet sneeuwballen door op de spatiebalk te drukken","Verhoogd de snelheid van de sneeuwbal met <BL>%s%%</BL>"},
        [12] = {"Rechthoek","Elke kleur heeft zijn eigen functie","?",{
			["C90909"] = "Vermoordt jou",
			["18C92B"] = "Brengt alle tegenstanders weer tot leven",
			["555D77"] = "Respawning Checkpoint",
		}},
        [13] = {"Cirkel","Elke kleur heeft zijn eigen functie","?"},
        [14] = {"Onzichtbaar","?","?"},
        [15] = {"Spinnenweb","Teleport je naar het beginpunt","?"},
    },
    commands = {
        shop = "winkel",
        profile = "profiel",
        help = "help",
		langue = "taal",
		leaderboard = "leaderboard",
		info = "info",
		pw = "wachtwoord",
    },
    menu = {
        [1] = {"%s","\tJouw doel is om zoveel mogelijk kaas te verzamelen, met gebruik van verschillende grond-effecten."},
        [2] = {"Grond effecten","Klik op de grond om meer info te lezen.\n\n%s"},
		[3] = {"Commands",{
			[1] = {"\t<J>» User</J>\n",{
				[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>or</R> <VP>Key P</VP> - Opent het profiel!",
				[2] = "<VP>!%s</VP> <R>or</R> <VP>Key O</VP> - Opent de winkel!",
				[3] = "<VP>!%s</VP> - Wijzigt de taal!\n",
			}},
			[2] = {"\t<J>» Others</J>\n",{
				[1] = "<VP>!%s</VP> <R>or</R> <VP>Key H</VP> - Opent de Help menu!",
				[2] = "<VP>!%s</VP> - Opent de leaderboard!",
				[3] = "<VP>!%s</VP> - Opent help op basis van de grond waarop je staat!",
			}},
			[3] = {"\n\t<J>» Kamer admin</J>\n",{
				[1] = "<VP>!%s</VP> <PS>wachtwoord</PS> - Voegt of haalt een wachtwoord weg van een kamer!",
			}},
		}},
        [4] = {"Maps","<J>Maps : %s\n\n\tBereik %s en verzend jouw map. Vergeet niet om alle regels te lezen voordat je begint!"},
        [5] = {"Dank aan","<R>%s <G>- <N>Developer\n%s <G>- <N>Translators\n%s <G>- <N>Mapbeoordelaars"},
    },
	shop = {
		coin = "Munten",
		power = "Grondkracht",
		upgrade = "Upgraden",
		price = "Upgrade kosten",
		close = "Sluit",
	},
	max = "15a2df47d2e",
}
system.translation.es = {
	welcome = "Bienvenido a #%s! Podrás ser el más rápido usando los efectos de los suelos? Inténtalo!\n<PS>Presiona H para más información!",
	developer = "Programado por %s",
	bought = "Has gastado %s monedas para el suelo %s!",
	cantbuy = "No tienes las suficientes monedas para comprar esta mejora! :(",
	profile = "Tabla de líderes : %s\n\n<N>Rondas : %s\n<N>Podios : %s\n\n<N>Muertes : %s\n\n<N>Monedas : %s",
	gotcoin = "Has obtenido %s monedas! :D",
	powersenabled = "Los poderes de los suelos han sido activados! Buena suerte!",
	language = "Idioma actual : <J>%s",
	zombie = "Ahora eres un Zombi!",
	password = {
		on = "Nueva contraseña : %s",
		off = "Contraseña desactivada!"
	},
	countstats = {
		mice = "Por lo menos 5 ratones son necesarios para contar estadísticas",
		tribe = "Las estadísticas no cuentan en casas de tribu"
	},
	grounds = {
		[0] = {"Madera","?","?"},
		[1] = {"Hielo","Incrementa tu velocidad apretando espacio","Aumenta la velocidad en <BL>%s%%</BL>"},
		[2] = {"Trampolín","?","?"},
		[3] = {"Lava","Te teletransporta al suelo que tenga el último Z index","?"},
		[4] = {"Chocolate","?","?"},
		[5] = {"Tierra","?","?"},
		[6] = {"Hierba","?","?"},
		[7] = {"Arena","Crea una tormenta de arena","Disminuye la tormenta en <BL>%s%%</BL>"},
		[8] = {"Nube","Te permite volar presionando espacio","Aumenta el vuelo en <BL>%s%%</BL>"},
		[9] = {"Agua","Te ahogas","Te ahogas <BL>%s%%</BL> más lento"},
		[10] = {"Piedra","Crea un bloque de piedra presionando espacio","Aumenta el tamaño del bloque en <BL>%s%%</BL>"},
		[11] = {"Nieve","Dispara bolas de nieve presionando espacio","Aumenta la velocidad de la bola de nieve en <BL>%s%%</BL>"},
		[12] = {"Rectángulo","Cada color tiene su propia función","?",{
			["C90909"] = "Te mata",
			["18C92B"] = "Revive todos los enemigos",
			["555D77"] = "Respawning Checkpoint",
		}},
		[13] = {"Círculo","Cada color tiene su propia función","?"},
		[14] = {"Invisible","?","?"},
		[15] = {"Tela de araña","Te teletransporta al punto de aparición","?"},
	},
	commands = {
		shop = "tienda",
		profile = "perfil",
		help = "ayuda",
		langue = "idioma",
		leaderboard = "ranking",
		info = "info",
		pw = "contraseña",
	},
	menu = {
		[1] = {"%s","\tTu objetivo en este juego es agarrar el queso lo más rápido que puedas, usando los efectos que cada suelo ofrece."},
		[2] = {"Efectos de suelo","Clickea en el nombre del suelo para leer más.\n\n%s"},
		[3] = {"Comandos",{
			[1] = {"\t<J>» Usuario</J>\n",{
				[1] = "<VP>!%s</VP> <PS>nombreDeUsuario</PS> <R>o</R> <VP>Tecla P</VP> - Abre el perfil!",
				[2] = "<VP>!%s</VP> <R>o</R> <VP>Tecla O</VP> - Abre la tienda!",
				[3] = "<VP>!%s</VP> - Cambia el idioma!\n",
			}},
			[2] = {"\t<J>» Otros</J>\n",{
				[1] = "<VP>!%s</VP> <R>o</R> <VP>Tecla H</VP> - Abre el menu de ayuda!",
				[2] = "<VP>!%s</VP> - Abre el ranking!",
				[3] = "<VP>!%s</VP> - Abre la guía del suelo en el que estás!",
			}},
			[3] = {"\n\t<J>» Admin de la sala</J>\n",{
				[1] = "<VP>!%s</VP> <PS>contraseña</PS> - Activa o desactiva la contraseña en la sala.",
			}},
		}},
		[4] = {"Mapas","<J>Mapas : %s\n\n\tEntra a %s y envía tu mapa. No olvides leer las reglas antes!"},
		[5] = {"Agradecimientos","<R>%s <G>- <N>Programador\n%s <G>- <N>Traductores\n%s <G>- <N>Evaluadores de mapas"},
	},
	shop = {
		coin = "Monedas",
		power = "Potencia del suelo",
		upgrade = "Mejorar",
		price = "Precio de la mejora",
		close = "Cerrar",
	},
	max = "15a2df3e699",
}
system.translation.pl = {
    welcome = "Witaj w #%s! Możesz zostać najszybszą myszką, używając moce gruntów? Spróbuj!\n<PS>Wciśnij H, aby otrzymać więcej informacji!",
    developer = "Stworzone przez %s",
    bought = "Wydałeś %s monet na %s!",
    cantbuy = "Nie masz wystarczającej ilości monet, żeby zakupić to ulepszenie! :(",
    profile = "Ranking : %s\n\n<N>Rund : %s\n<N>Podia : %s\n\n<N>Zgony : %s\n\n<N>Monety : %s",
    gotcoin = "Masz %s monet! :D",
    powersenabled = "Moce gruntów są włączone! Powodzenia!",
	language = "Bieżący język : <J>%s",
	zombie = "Zostałeś/-aś zombie!",
	password = {
		on = "Nowe hasło : %s",
		off = "Hasło wyłączone!"
	},
	countstats = {
		mice = "Przynajmniej 5 myszek jest potrzebnych aby statystyki były naliczane",
		tribe = "Statystyki nie są naliczane w chatkach plemiennych"
	},
    grounds = {
        [0] = {"Drewno","?","?"},
        [1] = {"Lód","Zwiększa twoją szybkość, gdy klikasz spację","Zwiększa prędkość w <BL>%s%%</BL>"},
        [2] = {"Trampolina","?","?"},
        [3] = {"Lawa","Przenosi ciebie do ostatniego indexu Z","?"},
        [4] = {"Czekolada","?","?"},
        [5] = {"Ziemia","?","?"},
        [6] = {"Trawa","?","?"},
        [7] = {"Piasek","Tworzy burzę piaskową","Zmniejsza storm w <BL>%s%%</BL>"},
        [8] = {"Chmura","Pozwala tobie latać, gdy klikasz spację","Zwiększa latanie w <BL>%s%%</BL>"},
        [9] = {"Woda","Topi ciebie","Topi <BL>%s%%</BL> wolniej"},
        [10] = {"Kamień","Powoduje, że możesz stworzyć blok kamienia, wciskając spację","Zwiększa wielkość bloku w <BL>%s%%</BL>"},
        [11] = {"Śnieg","Powoduje, że możesz strzelić śnieżką, wciskając spację","Zwiększa prędkość śnieżki w <BL>%s%%</BL>"},
        [12] = {"Trójkąt","Każdy kolor ma swoją funkcję","?",{
			["C90909"] = "Zabija ciebie",
			["18C92B"] = "Ożywia wszystkich przeciwników",
			["555D77"] = "Ponowne spawnowanie Checkpointów",
		}},
        [13] = {"Koło","Każdy kolor ma swoją funkcję","?"},
        [14] = {"Niewidzialność","?","?"},
        [15] = {"Pajęcza sieć","Przenosi ciebie do miejsca spawnu","?"},
    },
    commands = {
        shop = "sklep",
        profile = "profil",
        help = "pomoc",
		langue = "język",
		leaderboard = "ranking",
		info = "informacje",
		pw = "hasło",
    },
    menu = {
        [1] = {"%s","\tTwoim zadaniem w tej minigrze jest zbieranie serka najszybciej jak potrafisz, wykorzystując moce gruntów."},
        [2] = {"Moce gruntu","Kliknij w nazwę gruntu, żeby uzyskać więcej informacji.\n\n%s"},
		[3] = {"Komendy",{
			[1] = {"\t<J>» Użytkowe</J>\n",{
				[1] = "<VP>!%s</VP> <PS>nazwaGracza</PS> <R>albo</R> <VP>Klawisz P</VP> - Otwiera profil!",
				[2] = "<VP>!%s</VP> <R>albo</R> <VP>Klawisz O</VP> - Otwiera Sklep!",
				[3] = "<VP>!%s</VP> - Zmienia język!",
			}},
			[2] = {"\t<J>» Inne</J>\n",{
				[1] = "<VP>!%s</VP> <R>albo</R> <VP>Klawisz H</VP> - Otwiera pomoc!",
				[2] = "<VP>!%s</VP> - Otwiera ranking!",
				[3] = "<VP>!%s</VP> - Otwiera pomoc zależnie, na którym gruncie jesteś!",
			}},
			[3] = {"\n\t<J>» Pokój z adminem</J>\n",{
				[1] = "<VP>!%s</VP> <PS>hasło</PS> - Dodaje lub usuwa hasło w pokoju.",
			}},
		}},
        [4] = {"Mapy","<J>Mapy : %s\n\n\tStwórz %s i prześlij swoją mapę. Nie zapomnij, aby najpierw przeczytać zasady!"},
        [5] = {"Podziękowania","<R>%s <G>- <N>Twórca\n%s <G>- <N>Tłumacze\n%s <G>- <N>Testerzy map"},
    },
	shop = {
		coin = "Kredyty",
		power = "Moc gruntu",
		upgrade = "Ulepsz",
		price = "Cena ulepszenia",
		close = "Zamknij",
	},
	max = "15a2df4de75",
}
system.translation.hu = {
	welcome = "Üdvözöllek a #%s! Sikerül neked a leggyorsabb egérré válni a talajhatások használatával? Próbáld ki!\n<PS>Nyomd meg a H betűt több információért!",
	developer = "Fejlesztve %s által",
	bought = "Te most költöttél el %s pénzt a talajra %s!",
	cantbuy = "Nincs elég pénzed ahhoz, hogy megvedd ezt a frissítést! :(",
	profile = "Ranglista : %s\n\n<N>Körök : %s\n<N>Dobogók : %s\n\n<N>Halálozások : %s\n\n<N>Bolti pénz : %s",
	gotcoin = "Te most szereztél %s pénzt! :D",
	powersenabled = "A talajhatások engedélyezve lettek! Sok szerencsét!",
	language = "Jelenlegi nyelv : <J>%s",
	zombie = "Most egy zombi vagy!",
	password = {
		on = "Új jelszó : %s",
		off = "Jelszó letiltva!"
	},
	countstats = {
		mice = "Legalább 5 egérnek kell lennie, hogy statisztikát lehessen számolni",
		tribe = "A statisztika nem számít a törzsházakban"
	},
	grounds = {
		[0] = {"Fa","?","?"},
		[1] = {"Jég","Növeli a sebességedet, ha megnyomod a Szóközt","Növeli a sebességet <BL>%s%%</BL>-kal"},
		[2] = {"Trambulin","?","?"},
		[3] = {"Láva","Elteleportál téged a legutóbbi Z index talajhoz","?"},
		[4] = {"Csoki","?","?"},
		[5] = {"Föld","?","?"},
		[6] = {"Füves talaj","?","?"},
		[7] = {"Homok","Homokvihart hoz létre","Csökkenti a sebességet <BL>%s%%</BL>-kal"},
		[8] = {"Felhő","Lehetővé teszi számodra a repülést, ha megnyomod a Szóközt","Növeli a repülést <BL>%s%%</BL>-kal"},
		[9] = {"Víz","Megfullaszt téged","Megfullaszt <BL>%s%%</BL>-kal lassabban"},
		[10] = {"Kő","Egy kőtömböt hoz létre, ha megnyomod a Szóközt","Növeli a blokk méretét <BL>%s%%</BL>-kal"},
		[11] = {"Hó","Hógolyót lő, ha megnyomod a Szóközt","Növeli a hógolyó sebességét <BL>%s%%</BL>-kal"},
		[12] = {"Téglalap","Mindegyik színnek megvan a saját szerepe","?",{
			["C90909"] = "Megöl téged",
			["18C92B"] = "Újraéleszti az összes ellenséget",
			["555D77"] = "Újraéledő Ellenőrzőpont",
		}},
		[13] = {"Kör","Mindegyik színnek megvan a saját szerepe","?"},
		[14] = {"Láthatatlan","?","?"},
		[15] = {"Pókháló","Elteleportál téged a kezdőpontra","?"},
	},
	commands = {
		shop = "bolt",
		profile = "profil",
		help = "súgó",
		langue = "nyelv",
		leaderboard = "ranglistát",
		info = "infó",
		pw = "jelszó",
	},
	menu = {
		[1] = {"%s","\tA te feladatod ebben a minijátékban az, hogy a lehető leggyorsabban összegyűjtsd a sajtot a talajhatások használatával."},
		[2] = {"Talajhatások","Kattints a talaj nevére, hogy több mindent megtudhass.\n\n%s"},
		[3] = {"Parancsok",{
			[1] = {"\t<J>» Felhasználó</J>\n",{
				[1] = "<VP>!%s</VP> <PS>játékosNeve</PS> <R>vagy</R> <VP>P billenytű</VP> - Megnyitja a profilt!",
				[2] = "<VP>!%s</VP> <R>vagy</R> <VP>O billentyű</VP> - Megnyitja a boltot!",
				[3] = "<VP>!%s</VP> - Megváltoztatja a nyelvet!\n",
			}},
			[2] = {"\t<J>» Egyebek</J>\n",{
				[1] = "<VP>!%s</VP> <R>vagy</R> <VP>H billentyű</VP> - Megnyitja a Súgó menüpontot!",
				[2] = "<VP>!%s</VP> - Megnyitja a ranglistát!",
				[3] = "<VP>!%s</VP> - Megnyitja a Súgót aszerint, amelyik talajon állsz!",
			}},
			[3] = {"\n\t<J>» Szoba admin</J>\n",{
				[1] = "<VP>!%s</VP> <PS>jelszó</PS> - Bekapcsolja vagy kikapcsolja a jelszót a szobában!",
			}},
		}},
		[4] = {"Pályák","<J>Pályák : %s\n\n\tEngedélyezd a %s és küldd be a pályádat. Előtte ne felejtsd el elolvasni az összes szabály!"},
		[5] = {"Köszönet","<R>%s - Nak <G>- <N>Fejlesztő\n%s <G>- <N>Fordítók\n%s <G>- <N>Pálya értékelők"},
	},
	shop = {
		coin = "Pénzérmék",
		power = "Talaj ereje",
		upgrade = "Frissítés",
		price = "Ár frissítése",
		close = "Bezárás",
	},
	max = "15a2df47d2e",
}
system.translation.ar = {
	welcome = "مرحبا إلى #%s! هل يمكنك أن تكون أسرع فأر يستعمل قوى الأرض؟ قم بتجربتها!\n<PS>اضغط على الزر H لمعرفة المزيد!",
	developer = "مبرمجة من قبل %s",
	bought = "لقد قمت بإستعمال %s من النقود من أجل الأرضية %s!",
	cantbuy = "لا تملك النقود الكافية لشراء هذا! :(",
	profile = "لائحة المتقدمين : %s\n\n<N>الجولات : %s\n<N>المناصب : %s\n\n<N>الموت : %s\n\n<N>نقود المتجر : %s",
	gotcoin = "لقد حصلت على %s نقود! :D",
	powersenabled = "تم تفعيل قوى الأرض! حظا موفقا!",
	language = "اللغة الحالية : <J>%s",
	zombie = "أصبحت الأن ميت حي!",
	password = {
		on = "جديدة سر كلمة : %s",
		off = "السر كلمة تعطيل!"
	},
	countstats = {
		mice = "تحتاج الاقل ل 5 فئران لاحصائيات الاعتماد",
		tribe = "الاحصائيات لا تحسب بمنزل القبيلة"
	},
	grounds = {
		[0] = {"خشب","?","?"},
		[1] = {"جليد","تزيد من سرعتك عند الضغط على زر المسطرة","يزيد من السرعة ب <BL>%s%%</BL>"},
		[2] = {"الترامبولين","?","?"},
		[3] = {"الحمم","تنقلك إلى الأرضية التي لديها اَخر رقم في الـ Z","?"},
		[4] = {"الشوكولاته","?","?"},
		[5] = {"الأرض","?","?"},
		[6] = {"العشب","?","?"},
		[7] = {"الرمل","تصنع عاصفة رملية","يقلل من العاصفة ب <BL>%s%%</BL>"},
		[8] = {"غيمة","تجعلك تطير عن طريق الضغط على زر المسطرة","يزيد من الطيران ب <BL>%s%%</BL>"},
		[9] = {"المياه","تغرقك","يغرقك <BL>%s%%</BL> ببطئ"},
		[10] = {"الحجارة","تصنع حاجو من الحجارة عن طريق الضغط على زر المسطرة","يزيد من حجم الارضية ب <BL>%s%%</BL>"},
		[11] = {"الثلج","تطلق كرات ثلجية عن طريق الضغط على زر المسطرة","يزيد من سرعة كرة الثلج ب <BL>%s%%</BL>"},
		[12] = {"مستطيل","كل لون له قوته الخاصة","?",{
			["C90909"] = "يقتلك",
			["18C92B"] = "إعادة الحياة إلى جميع أعدائك",
			["555D77"] = "نقطة العودة للحياة",
		}},
		[13] = {"الدائرة","كل لون له قوته الخاصة","?"},
		[14] = {"الإختفاء","?","?"},
		[15] = {"شبكة العنكبوت","تنقلك إلى نقطة البداية","?"},
	},
	commands = {
		shop = "المتجر",
		profile = "لاعب",
		help = "المساعدة",
		langue = "اللغة",
		leaderboard = "مراكز",
		info = "معلومة",
		pw = "password",
	},
	menu = {
		[1] = {"%s","\tما عليك فعله في هذه اللعبة هو جمع الجبن بأسرع ما يمكن يمكنك إستخدام القوى التي  توفرها لك الأرضيات."},
		[2] = {"تأثيرات الأراضي","أنقر على إسم الأرضية لمعرفة المزيد عنها\n\n%s"},
		[3] = {"الأوامر",{
			[1] = {"\t<J>» اللاعب</J>\n",{
				[1] = "<VP>!%s</VP> <PS>إسم اللاعب</PS> <R>أو</R> <VP>زر P</VP> - لفتح الملف الشخصي!",
				[2] = "<VP>!%s</VP> <R>أو</R> <VP>الزر O</VP> - لفتح المتجر!",
				[3] = "<VP>!%s</VP> - لتغيير اللغة!\n",
			}},
			[2] = {"\t<J>» البقية</J>\n",{
				[1] = "<VP>!%s</VP> <R>أو</R> <VP>الزر H</VP> - لقتح لائحة المساعدة!",
				[2] = "<VP>!%s</VP> - فتح قائمة المراكز!",
				[3] = "<VP>!%s</VP> - فتح المساعدة وفقا للمكان الذي انت عليه!",
			}},
			[3] = {"\n\t<J>» مشرف غرفة</J>\n",{
				[1] = "<VP>!%s</VP> <PS>سر كلمة</PS> - إضافة أو إزالة كلمة مرور في الغرفة!",
			}},
		}},
		[4] = {"الخرائط","<J>الخرائط : %s\n\n\tتفعيل %s وأرسل الخارطة. لا تنسى قراءة القوانين!"},
		[5] = {"شكرا لـ","<R>%s <G>- <N>المبرمج\n%s <G>- <N>مترجمون\n%s <G>- <N>مقيموا الخرائط"},
	},
	shop = {
		coin = "النقود",
		power = "طاقة الارضية",
		upgrade = "ترقية",
		price = "ترقبة السعر",
		close = "اغلاق",
	},
	max = "15a2df47d2e",
}
system.translation.de = {
	welcome = "Willkommen zu #%s! Kannst du die schnellste Maus mit den Bodeneffekten sein? Versuch es!\n<PS>Drück H für mehr informationen!",
	developer = "Entwickelt von %s",
	bought = "Du hast %s Münzen für den Boden %s ausgegeben!",
	cantbuy = "Du hast nicht genügend Münzen um dieses Upgrade zu kaufen! :(",
	profile = "Bestenliste : %s\n\n<N>Runden: %s\n<N>Podiums: %s\n\n<N>Tode : %s\n\n<N>Shop Münzen: %s",
	gotcoin = "Du hast soeben %s Münzen erhalten! :D",
	powersenabled = "Der Effekt des Bodens wurde aktiviert! Viel Glück!",
	language = "Aktuelle Sprache : <J>%s",
	zombie = "Du bist nun ein Zombie!",
	password = {
		on = "Neu passwort: : %s",
		off = "Passwort deaktiviert!"
	},
	countstats = {
		mice = "Es müssen mindestens 5 Mäuse im Raum sein damit die Stats zählen",
		tribe = "Stats zählen in Stammeshäusern nicht"
	},
	grounds = {
		[0] = {"Holz","?","?"},
		[1] = {"Eis","Beschleunigt dich indem du die Leertaste drückst","Erhoht die geschwindigkeit in <BL>%s%%</BL>"},
		[2] = {"Trampoline","?","?"},
		[3] = {"Lava","Teleportiert dich zum letzen Z Index Boden","?"},
		[4] = {"Schokolade","?","?"},
		[5] = {"Erde","?","?"},
		[6] = {"Gras","?","?"},
		[7] = {"Sand","Kreiert einen Sandsturm","Verringert die sturm in <BL>%s%%</BL>"},
		[8] = {"Wolke","Du kannst fliegen indem du die Leertaste drückst","Erhoht die fliege in <BL>%s%%</BL>"},
		[9] = {"Wasser","Ertränkt dich","Ertrinkt dich <BL>%s%%</BL> langsamer"},
		[10] = {"Stein","Erschaffe einen Stein indem du die Leertaste drückst","Erhoht die blockgrosse in <BL>%s%%</BL>"},
		[11] = {"Schnee","Wirf Schneebälle indem du die Leertaste drückst","Erhoht die schneeball geschwindigkeit in <BL>%s%%</BL>"},
		[12] = {"Rechteck","Jede Farbe hat seine eigene Funktion","?",{
			["C90909"] = "Tötet du",
			["18C92B"] = "Aufleben alle Feinde",
			["555D77"] = "Respawning Checkpoint",
		}},
		[13] = {"Kreis","Jede Farbe hat seine eigene Funktion","?"},
		[14] = {"Unsichtbar","?","?"},
		[15] = {"Spinnweben","Teleportiert dich zum Startpunkt","?"},
	},
	commands = {
		shop = "shop",
		profile = "profil",
		help = "hilfe",
		langue = "sprache",
		leaderboard = "bestenliste",
		info = "info",
		pw = "passwort",
	},
	menu = {
		[1] = {"%s","\tDein Ziel in diesem Minigame ist es den Käse so schnell wie möglich zu sammeln, indem du die verschiedenen Effekte der Böden ausnutzt."},
		[2] = {"Bodeneffekte","Klicken in den bodens namen um mehr zu lesen.\n\n%s"},
		[3] = {"Kommandos",{
			[1] = {"\t<J>» Benutzer</J>\n",{
				[1] = "<VP>!%s</VP> <PS>Spielername</PS> <R>oder</R> <VP>Taste P</VP> - Öffnet das Profil!",
				[2] = "<VP>!%s</VP> <R>oder</R> <VP>Taste O</VP> - Öffnet den Shop!",
				[3] = "<VP>!%s</VP> - Ändert die Sprache!\n",
			}},
			[2] = {"\t<J>» Anderes</J>\n",{
				[1] = "<VP>!%s</VP> <R>oder</R> <VP>Taste H</VP> - Öffnet das Hilfsmenu!",
				[2] = "<VP>!%s</VP> - Öffnet die Bestenliste!",
				[3] = "<VP>!%s</VP> - Öffnet die hilfe nach dem boden auf dem du bist auf!",
			}},
			[3] = {"\n\t<J>» Zimmer admin</J>\n",{
				[1] = "<VP>!%s</VP> <PS>passwort</PS> - Hinzufugen oder entfernen eines passwortes im raum!",
			}},
		}},
		[4] = {"Maps","<J>Maps : %s\n\n\tBesuche das Thema %s und reiche deine Map ein. Vergiss nicht zuvor alle Regeln zu lesen!"},
		[5] = {"Danke an ","<R>%s <G>- <N>Entwickler\n%s <G>- <N>Übersetzer\n%s <G>- <N>Landkarte bewerter"},
	},
	shop = {
		coin = "Munzen",
		power = "Bodenleistung",
		upgrade = "Aktualisierung",
		price = "Upgrade Preis",
		close = "Schliessen",
	},
	max = "15a2df47d2e",
}
system.translation.fr = {
	welcome = "Bienvenue à #%s! Pouvez vous être la souris la plus rapide grâce aux effets des sols? Essayez!\n<PS>Appuyez sur H pour plus d'informations!",
	developer = "Développé par %s",
	bought = "Vous venez de dépenser %s pièces pour le sol %s!",
	cantbuy = "Vous n'avez pas assez de pièces pour acheter cette amélioration! :(",
	profile = "Leaderboard : %s\n\n<N>Parties : %s\n<N>Podiums : %s\n\n<N>Morts : %s\n\n<N>Shop Pièces : %s",
	gotcoin = "Vous venez de recevoir %s pièces! :D",
	powersenabled = "Les pouvoirs des sols ont été activés! Bonne chance!",
	language = "Langage actuel : <J>%s",
	zombie = "Vous êtes maintenant un zombie!",
	password = {
		on = "Nouveau mot de passe : %s",
		off = "Mot de passe désactivé!"
	},
	countstats = {
		mice = "Au moins 5 souris sont nécessaires pour que les statistiques comptent",
		tribe = "Les statistiques ne comptent pas en maison de tribu"
	},
	grounds = {
		[0] = {"Bois","?","?"},
		[1] = {"Glace","Augmente votre vitesse en appuyant sur Espace","Augmente la vitesse de <BL>%s%%</BL>"},
		[2] = {"Trampoline","?","?"},
		[3] = {"Lave","Vous téléporte au sol avec le dernier indice Z","?"},
		[4] = {"Chocolat","?","?"},
		[5] = {"Terre","?","?"},
		[6] = {"Herbe","?","?"},
		[7] = {"Sable","Crée une tempête de sable","Diminue la tempête de <BL>%s%%</BL>"},
		[8] = {"Nuage","Vous donne la possibilité de voler en appuyant sur Espace","Augmente le vol de <BL>%s%%</BL>"},
		[9] = {"Eau","Vous noie","Vous noie <BL>%s%%</BL> plus lentement"},
		[10] = {"Pierre","Crée un bloc de pierre en appuyant sur Espace","Augmente la taille du bloc de <BL>%s%%</BL>"},
		[11] = {"Neige","Tire des boules de neige en appuyant sur Espace","Augmente la vitesse de la boule de neige de <BL>%s%%</BL>"},
		[12] = {"Rectangle","Chaque couleur a sa propre fonction","?",{
			["C90909"] = "Te tue",
			["18C92B"] = "Ressuscite tous les ennemis",
			["555D77"] = "Respawning Checkpoint",
		}},
		[13] = {"Cercle","Chaque couleur a sa propre fonction","?"},
		[14] = {"Invisible","?","?"},
		[15] = {"Toile d'araignée","Vous téléporte au point de spawn","?"},
	},
	commands = {
		shop = "magasin",
		profile = "profil",
		help = "aide",
		langue = "langue",
		leaderboard = "leaderboard",
		info = "info",
		pw = "password",
	},
	menu = {
		[1] = {"%s","\tVotre but dans ce minijeu est de collecter le fromage aussi vite que possible, en utilisant les effets des différents sols."},
		[2] = {"Effets du sol","Clique sur le nom du salon pour en lire plus.\n\n%s"},
		[3] = {"Commandes",{
			[1] = {"\t<J>» Joueur</J>\n",{
				[1] = "<VP>!%s</VP> <PS>playerName</PS> <R>ou</R> <VP>Touche P</VP> - Ouvre le profil !",
				[2] = "<VP>!%s</VP> <R>ou</R> <VP>Touche O</VP> - Ouvre le magasin !",
				[3] = "<VP>!%s</VP> - Change la langue !\n",
			}},
			[2] = {"\t<J>» Autres</J>\n",{
				[1] = "<VP>!%s</VP> <R>ou</R> <VP>Touche H</VP> - Ouvre le menu d'aide !",
				[2] = "<VP>!%s</VP> - Ouvre le leaderboard!",
				[3] = "<VP>!%s</VP> - Ouvre l'aide en fonction du sol sur lequel vous vous trouvez!",
			}},
			[3] = {"\n\t<J>» Place admin</J>\n",{
				[1] = "<VP>!%s</VP> <PS>mot de passe</PS> - Ajoute ou supprime un mot de passe dans la chambre.",
			}},
		}},
		[4] = {"Cartes","<J>Cartes : %s\n\n\tAccédez à %s et envoyez votre carte. N'oubliez pas de lire toutes les règles avant!"},
		[5] = {"Merci à","<R>%s <G>- <N>Développeur\n%s <G>- <N>Traducteurs\n%s <G>- <N>Evaluateurs de maps"},
	},
	shop = {
		coin = "Pièces",
		power = "Force du sol",
		upgrade = "Améliorer",
		price = "Coût d'amélioration",
		close = "Fermer",
	},
	max = "15a2df47d2e",
}
system.translation.pt = system.translation.br

system.roomCommunity = tfm.get.room.community
if not system.translation[system.roomCommunity] then
	system.roomCommunity = "en"
end

system.getTranslation = function(s,n)
	s = "system.translation."..(n and info[n].langue or system.roomCommunity).."."..s
	return system.loadTable(s)
end

cmds = system.getTranslation("commands")
langues = {}
for k,v in next,system.translation do
	langues[#langues+1] = k:upper()
end
table.sort(langues)

translationIndexes = listener(system.translation.en,{})

--[[ Health ]]--
system.bar = function(id,player,value,color,size,height)
	size = size or 100
	height = height or 20

	if value > size then
		value = size
	elseif value < 0 then
		value = 0
	end

	ui.addTextArea(id,"",player,5,(height+8) * id,size + 4,height,0xC7CED2,1,1,true)
	if value ~= 0 then
		ui.addTextArea(id+1,"",player,6,(height+8) * id + 2,value + 2,height - 4,color,color,1,true)
	end
	ui.addTextArea(id+2,"<p align='center'><B><font color='#0'>"..value.."%",player,5,(height+8) * id,size + 4,height,1,1,0,true)
end

--[[ Shop ]]--
debug.shopImages = {
	[1] = {'15a2a340dd5','15a2a342b88','15a2a3449a9','15a2a3459e1','15a2a346953','15a2a3479a3','15a2a348ad3','15a2a349a89','15a2a34aa0d'},
	[2] = {'15a2a35fef7','15a2a36114b','15a2a36240d','15a2a36332f','15a2a3645f3'},
	[3] = {'15a2a3721bc','15a2a3731bb','15a2a3742b6','15a2a375439','15a2a376339'},
	[4] = {'15a2a31b8dc','15a2a31d292','15a2a323150','15a2a32815c','15a2a32af10','15a2a32ce03','15a2a32dc09','15a2a32ecde','15a2a32fc20'},
	[5] = {'15a2a3b475f','15a2a3b5996','15a2a3b6ab9','15a2a3b8250','15a2a3b924f'},
	[6] = {'15a2a3a0156','15a2a3a1229','15a2a3a2460','15a2a3a3702','15a2a3a4c70'},
	[7] = {'15a2a381307','15a2a3824c8','15a2a383682','15a2a384dc1','15a2a3865c5','15a2a38820d','15a2a38a3a8','15a2a38bbd6','15a2a38d0ec'},
	[8] = {'15a2a3c4442','15a2a3c54f3','15a2a3c69b7','15a2a3c78e7','15a2a3c873b'},	
}
system.unpackImages = function(id,e)
	local t = {}
	for k,v in next,debug.shopImages[id] do
		if #t < e then
			t[#t+1] = v
		end
	end
	return t
end

debug.shopGrounds = { -- Acessibility
	[1] = {1,system.unpackImages(1,3),1.05,1.5}, -- Ground ID, #Possible upgrades (Imgs), Price average, Upgrade average
	[2] = {3,system.unpackImages(2,1),1,1},
	[3] = {7,system.unpackImages(3,4),.4,2},
	[4] = {8,system.unpackImages(4,3),1.15,1.47},
	[5] = {9,system.unpackImages(5,3),1.6,.6},
	[6] = {10,system.unpackImages(6,3),1.1,1.65},
	[7] = {11,system.unpackImages(7,5),.5,1.42},
	[8] = {15,system.unpackImages(8,1),1,1},
}
ui.shop = function(n)
	if info[n].groundsDataLoaded then
		for k,v in next,info[n].shop.image do
			tfm.exec.removeImage(v)
		end
		if not info[n].shop.accessing then
			local get,index = table.find(debug.shopGrounds,info[n].powersOP.GTYPE,1)
			if get then
				info[n].shop.page = index
			else
				info[n].shop.page = 1
			end
			info[n].shop.accessing = true
		end
		if info[n].shop.page < 1 then
			info[n].shop.page = #debug.shopGrounds
		elseif info[n].shop.page > #debug.shopGrounds then
			info[n].shop.page = 1
		end
		
		local shopTxt = system.getTranslation("shop",n)
		local debuggedGround = debug.shopGrounds[info[n].shop.page]
		local ground = system.getTranslation("grounds."..debuggedGround[1],n)
		local G = system.translation.en.grounds[debuggedGround[1]][1]:lower()
		local groundLevel = info[n].stats.powers[G]
		groundLevel = groundLevel[#groundLevel]
		
		ui.addTextArea(4,"",n,160,50,480,320,0x1a2433,1,1,true)

		ui.addTextArea(5,"",n,171,56,240,15,0x1d5a78,0x1d5a78,1,true)
		ui.addTextArea(6,"<p align='center'><font size='13'>"..string.nick(cmds.shop),n,170,53,240,25,1,1,0,true)

		ui.addTextArea(7,"<p align='center'><font size='12'><B><a href='event:shop.left'><BV>«</BV></a>  <font size='14'><a href='event:info.grounds."..ground[1]:gsub("'","#").."."..ground[2].."'>"..ground[1].."</a></font>  <a href='event:shop.right'><BV>»</BV></a>",n,170,87,240,25,0x073247,0x073247,1,true)
		
		info[n].shop.image[1] = tfm.exec.addImage(debuggedGround[2][1]..".png","&0",435,70,n)

		local playerData = string.format("<font size='12'><N>%s <G>: <J>$%s\n<N>%s\n<N>%s <G>: <BL>%s",shopTxt.coin,info[n].stats.groundsCoins,"%s",shopTxt.power,math.floor(math.percent(groundLevel,#debuggedGround[2])).."%%")
		local groundData = ""
		local upgradeData = "<p align='center'><font size='15'><B>%s" .. shopTxt.upgrade

		if (groundLevel + 1) <= #debuggedGround[2] then
			local price = (groundLevel + 1) * (120 * debuggedGround[3])
			playerData = playerData:format(shopTxt.price .. " <G>: <R>$" .. price)
			local iniPerc = math.floor(math.percent(1,#debug.shopGrounds[info[n].shop.page][2]))
			groundData = ground[3]:format(iniPerc)
			upgradeData = upgradeData:format("<a href='event:shop.buy."..price.."."..G.."'><PT>")
			
			local gId = info[n].stats.powers[G][#info[n].stats.powers[G]]
			info[n].shop.image[2] = tfm.exec.addImage(debuggedGround[2][gId]..".png","&1",540,70,n)
			info[n].shop.image[3] = tfm.exec.addImage("15a2df6ab69.png","&2",440,205,n)
			info[n].shop.image[4] = tfm.exec.addImage(debuggedGround[2][gId+1]..".png","&3",540,210,n)
		else
			playerData = playerData:format("<R>-")
			upgradeData = upgradeData:format("<V>")
			
			info[n].shop.image[2] = tfm.exec.addImage(system.getTranslation("max",n)..".png","&2",175,215,n)
		end
		
		ui.addTextArea(8,playerData,n,170,130,240,52,0x073247,0x073247,1,true)
		ui.addTextArea(9,groundData,n,170,200,240,80,0x073247,0x073247,1,true)

		ui.addTextArea(10,upgradeData,n,170,298,240,24,0x073247,0x073247,1,true)
		ui.addTextArea(11,"<p align='center'><font size='15'><R><B><a href='event:shop.close'>"..shopTxt.close.."</a></B>",n,170,339,240,24,0x073247,0x073247,1,true)

		ui.addTextArea(12,"",n,430,62,200,300,0x073247,0x073247,1,true)
		ui.addTextArea(13,"",n,426,58,90,90,0x1a2433,0x1a2433,1,true)
	end
end

--[[ Profile ]]--
ui.profile = function(n,p)
	if info[p].groundsDataLoaded then
		local nickSize = #p > 12 and 10 or 15
		ui.addTextArea(14,"<p align='center'><B><R><a href='event:profile.close'>X",n,513,115,20,20,1,1,1,true)
		ui.addTextArea(15,"<p align='center'><B><PS><a href='event:profile.open'>•",n,513,145,20,20,1,1,1,true)
		ui.addTextArea(16,"<p align='center'><font size='16'><B><V>"..p.."</V></B> "..(info[p].isOnline and "<VP>" or "<R>").."•</font></p><p align='left'><font size='12'>\n<N>" .. system.getTranslation("profile",n):format("<V>#"..info[p].ranking,"<V>"..info[p].stats.rounds,"<V>"..info[p].stats.podiums,"<V>"..info[p].stats.deaths,"<J>$"..info[p].stats.groundsCoins),n,290,115,220,160,0x073247,1,1,true)
	end
end

--[[ Menu ]]--
ui.menu = function(n)
	if not info[n].menu.accessing then
		info[n].menu.page = 1
		info[n].menu.accessing = true
	end

	local langue = system.getTranslation("menu",n)

	if info[n].menu.page < 1 then
		info[n].menu.page = #langue
	elseif info[n].menu.page > #langue then
		info[n].menu.page = 1
	end

	local popupFormat = "<%s><a href='event:menu.page.%d'>#%s</a>"
	local popups = {}
	for k,v in next,langue do
		popups[#popups+1] = popupFormat:format((k == info[n].menu.page and "VP" or "J"),k,v[1]:format(string.nick(system.module)))
	end

	local popup = {
		x = {663,546},
		d = "«",
		txt = "<font size='11'><J>"..table.concat(popups,"\n\n")
	}
	if not info[n].menu.showPopup then
		popup = {
			x = {552,435},
			d = "»",
			txt = "",
		}
	end
	
	local displayText = {table.unpack(langue[info[n].menu.page])}

	if info[n].menu.page == 1 then
		displayText[1] = displayText[1]:format(string.nick(system.module))
	else
		local textFormat = nil
		if info[n].menu.page == 2 then
			textFormat = {{},system.getTranslation("grounds",n)}
			for k,v in next,textFormat[2] do
				if v[2] ~= "?" then
					table.insert(textFormat[1],string.format("<a href='event:info.grounds.%s.%s'><B>%s</B></a>",v[1]:gsub("'","#"),v[2]:gsub("%.","@"),v[1]:upper()))
				end
			end
			displayText[2] = displayText[2]:format("• "..table.concat(textFormat[1],"\n• "))
		elseif info[n].menu.page == 3 then
			displayText[2] = table.concat(displayText[2],"\n",function(k,v)
				return concat(k,v)
			end)
			displayText[2] = displayText[2]:format(cmds.profile,cmds.shop,cmds.langue,cmds.help,cmds.leaderboard,cmds.info,cmds.pw)
		elseif info[n].menu.page == 4 then
			displayText[2] = displayText[2]:format(#system.maps.."<N>","<BV><a href='event:print.atelier801@com/topic?f=6&t=845005'>#"..system.module:upper().." MAP SUBMISSIONS</a></BV>")
		elseif info[n].menu.page == 5 then
			local concat = {}
			for i,j in next,{{"translators","<CEP>"},{"mapEvaluators","<BV>"}} do
				concat[#concat+1] = j[2] .. table.concat(system.staff[j[1]],"<G>, " .. j[2],function(k,v)
					return string.format("<a href='event:info.%s.%s'>%s</a>",j[1],k,v[1])
				end)
			end
			displayText[2] = displayText[2]:format("Bolodefchoco",concat[1],concat[2])
		end
	end

	ui.addTextArea(17,"<font size='1'>\n</font><p align='center'><J><B><a href='event:menu.right'>»</a>",n,543,352,40,20,1,1,1,true)
	ui.addTextArea(18,"<font size='1'>\n</font><p align='center'><J><B><a href='event:menu.left'>«</a>",n,217,352,40,20,1,1,1,true)

	ui.addTextArea(19,"<font size='1'>\n</font><p align='center'><PT><B><a href='event:menu.popup'>"..popup.d.."</a>",n,popup.x[1],137,20,20,1,1,1,true)
	ui.addTextArea(20,popup.txt,n,popup.x[2],137,115,125,0x123e54,1,1,true)

	ui.addTextArea(21,"<p align='center'><B><R><a href='event:menu.close'>X",n,543,42,20,20,1,1,1,true)
	ui.addTextArea(22,"<p align='center'><font size='20'><V><B>"..displayText[1]:upper().."</B></V><font size='15'>\n<R>_____________\n\n<font size='11'><N><p align='left'>"..displayText[2],n,260,42,280,330,0x073247,1,1,true)
end

--[[ Leaderboard ]]--
system.leaderboard = {update = 0,data = {}}
ui.leaderboard = function(n)
	if os.time() > system.leaderboard.update or not n then
		system.leaderboard = {update = os.time() + 180e3,data = {}}
		
		local players = {}
		for k,v in next,info do
			if k:sub(1,1) ~= "*" then
				players[#players + 1] = {k,math.floor((v.stats.rounds - v.stats.deaths)/10) * (v.stats.podiums + 1)}
			end
		end
		table.sort(players,function(p1,p2) return p1[2] > p2[2] end)

		for k,v in next,players do
			info[v[1]].ranking = k
			if k < 11 then
				table.insert(system.leaderboard.data,"<J>"..k..". " .. (k==1 and "<BV>" or k==2 and "<PS>" or k==3 and "<CE>" or "<V>") .. "<a href='event:profile.open."..v[1].."'>".. v[1] .. "</a> <BL>- <VP>" .. v[2] .. "G")
			end
		end
		if #system.leaderboard.data == 0 then
			system.leaderboard.update = 0
		end
	end

	if n then
		info[n].leaderboardAccessing = true
		local id,y = 25,100
		ui.addTextArea(23,"<p align='center'><B><R><a href='event:ranking.close'>X",n,603,35,20,20,1,1,1,true)
		ui.addTextArea(24,"<p align='center'><font size='45'>" .. string.nick(cmds.leaderboard),n,200,35,400,350,0x073247,1,1,true)

		for i = 1,10 do
			local v = system.leaderboard.data[i] or ""
			local color = id % 2 == 0 and 0x123e54 or 0x042636
			if v:find(n) then
				v = v:gsub("'>(.-)</a>",function(name)
					return "'><a:active>"..name.."</a:active></a>"
				end)
			end
			ui.addTextArea(id,v,n,245,y,315,20,color,color,1,true)
			id = id + 1
			y = y + 28
		end

		ui.addTextArea(id,"",n,230,90,10,285,0x073247,0x073247,1,true)
		ui.addTextArea(id + 1,"",n,565,90,10,285,0x073247,0x073247,1,true)
	end
end

--[[ Info ]]--
ui.displayInfo = function(n,data)
	local what = data[2]
	local title,text,color = "","",""
	if what == "grounds" then
		color = "<N>"
		title = data[3]:gsub("#","'")
		local info = data[4]:gsub("@",".")
		local groundTxt = system.getTranslation("grounds.12",n)
		if info == groundTxt[2] then
			local colors = {}
			for k,v in next,groundTxt[4] do
				colors[#colors+1] = string.format("<PT>[•] <N2><font color='#%s'>(#%s)</a> <BL>- <PS>%s",k,k,v)
			end
			text = table.concat(colors,"\n")
		else
			text = string.format("<PT>[•] <PS>%s",info)
		end
	elseif system.staff[what] then
		local comp = data[3]
		local info = system.staff[what][tonumber(comp)]
		title = info[1]
		if what == "translators" then
			color = "<CEP>"
			text = string.format("[•] !%s %s",cmds.langue,table.concat(table.turnTable(info[2]),", "))
		elseif what == "mapEvaluators" then
			color = "<BV>"
			text = string.format("[•] %s",info[2])
		end
	end
	ui.addTextArea(37,"<p align='center'><B><R><a href='event:info.close'>X",n,528,115,20,20,1,1,1,true)
	ui.addTextArea(38,"<p align='center'><font size='20'><V><B>" .. title .. "</B>" .. color .. (what == "grounds" and "" or " •") .. "\n\n<p align='left'><font size='13'>" .. text,n,275,115,250,160,0x073247,1,1,true)
end

--[[ Callbacks ]]--
eventTextAreaCallback = function(i,n,c)
	if system.gameMode == 0 then
		local p = string.split(c,"[^%.]+")
		if p[1] == "shop" and os.time() > info[n].shop.timer then
			info[n].shop.timer = os.time() + 1200
			if p[2] == "left" then
				info[n].shop.page = info[n].shop.page - 1
				ui.shop(n)
			elseif p[2] == "right" then
				info[n].shop.page = info[n].shop.page + 1
				ui.shop(n)
			elseif p[2] == "buy" and info[n].groundsDataLoaded then
				p[3] = tonumber(p[3]) or 0
				if info[n].stats.groundsCoins >= p[3] then
					info[n].stats.groundsCoins = info[n].stats.groundsCoins - p[3]
					local loc = info[n].stats.powers[p[4]]
					info[n].stats.powers[p[4]][#loc] = info[n].stats.powers[p[4]][#loc] + 1
					info[n].stats.powers[p[4]][1] = info[n].stats.powers[p[4]][1] * debug.shopGrounds[info[n].shop.page][4]
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("bought",n):format("<J>$"..p[3].."</J>","<ROSE>"..system.getTranslation("grounds."..debug.shopGrounds[info[n].shop.page][1])[1].."</ROSE>",n)),n)
					ui.shop(n)
					--system.savePlayerData(n,serialization(info[n].stats))
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <R>%s",system.getTranslation("cantbuy",n)),n)
				end
			elseif p[2] == "close" then
				for i = 4,13 do
					ui.removeTextArea(i,n)
				end
				info[n].shop.accessing = false
				for k,v in next,info[n].shop.image do
					tfm.exec.removeImage(v)
				end
			end
		elseif p[1] == "profile" then
			if p[2] == "close" then
				for i = 14,16 do
					ui.removeTextArea(i,n)
				end
				info[n].profileAccessing = false
			elseif p[2] == "open" then
				if p[3] then
					ui.profile(n,p[3])
				else
					ui.profile(n,n)
				end
			end
		elseif p[1] == "menu" and os.time() > info[n].menu.timer then
			info[n].menu.timer = os.time() + 1e3
			if p[2] == "page" and p[3] then
				info[n].menu.page = tonumber(p[3])
				ui.menu(n)
			elseif p[2] == "right" then
				info[n].menu.page = info[n].menu.page + 1
				ui.menu(n)
			elseif p[2] == "left" then
				info[n].menu.page = info[n].menu.page - 1
				ui.menu(n)
			elseif p[2] == "popup" then
				info[n].menu.showPopup = not info[n].menu.showPopup
				ui.menu(n)
			elseif p[2] == "close" then
				for i = 22,17,-1 do
					ui.removeTextArea(i,n)
				end
				info[n].menu.accessing = false
				if info[n].showHelp then
					info[n].showHelp = false
					ui.removeTextArea(0,n)
				end
			end
		elseif p[1] == "print" then
			p[2] = p[2]:gsub("@",".")
			tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",p[2]),n)
		elseif p[1] == "ranking" then
			if p[2] == "close" then
				info[n].leaderboardAccessing = false
				for i = 23,36 do
					ui.removeTextArea(i,n)
				end
			end
		elseif p[1] == "info" then
			if p[2] == "close" then
				for i = 37,38 do
					ui.removeTextArea(i,n)
				end
			else
				ui.displayInfo(n,p)
			end
		end
	end
	if system.gameMode == 2 then
		click.eventTextAreaCallback(i,n,c)
	end
	if system.gameMode == 4 then
		chat.eventTextAreaCallback(i,n,c)
	end
	if system.gameMode == 5 then
		cannonup.eventTextAreaCallback(i,n,c)
	end
end

--[[ Ground collision lib ]]--
system.grounds = {}
system.disabledGrounds = {}
system.respawn = 0
system.getTpPos = function(g,center)
	if center then
		return {g.X,g.Y}
	else
		local ang = string.split(g.P,"[^,]+",tonumber)
		ang = ang[5]
		local hTP = {g.X,g.Y}
		if ang == 90 or ang == -270 then
			hTP[1] = hTP[1] + g.L/2
		elseif ang == -90 or ang == 270 then
			hTP[1] = hTP[1] - g.L/2
		elseif math.abs(ang) == 180 then
			hTP[2] = hTP[2] + g.H/2
		else
			hTP[2] = hTP[2] - g.H/2
		end
		
		return hTP
	end
end
system.onGround = function(t,px,py)
	local prop = string.split(t.P,"[^,]+",tonumber)

	px,py = px or 0,py or 0
	local offset = {}
	local isOn = false

	local w = tonumber(t.L)
	local h = tonumber(t.H)
	local x = tonumber(t.X)
	local y = tonumber(t.Y)
	local gtype = tonumber(t.T)
	if gtype < 0 or gtype > 15 then
		gtype = 0
	end
	
	local collisionArea = {34,40,50,50,40,34,34,35,0,0,40,35,35,35,0,0}
	
	if not table.find({8,9,15},gtype) then
		local area = collisionArea[gtype + 1]
		w = w + area
		h = h + area
	end

	if gtype ~= 13 then
		local ang = math.rad(prop[5])

		local range = {w = w/2,h = h/2}

		local cosA = math.cos(ang)
		local sinA = math.sin(ang)
		
		local vxA = {x = ((-range.w * cosA - (-range.h) * sinA) + x),y = ((-range.w * sinA + (-range.h) * cosA) + y)}
		local vxB = {x = ((range.w * cosA - (-range.h) * sinA) + x),y = ((range.w * sinA + (-range.h) * cosA) + y)}
		local vxC = {x = ((range.w * cosA - range.h * sinA) + x),y = ((range.w * sinA + range.h * cosA) + y)}
		local vxD = {x = ((-range.w * cosA - range.h * sinA) + x),y = ((-range.w * sinA + range.h * cosA) + y)}
		offset = {vxA,vxB,vxC,vxD}

		local p = 4
		for i = 1,4 do
			if (offset[i].y < py and offset[p].y >= py) or (offset[p].y < py and offset[i].y >= py) then
				if offset[i].x + (py - offset[i].y) / (offset[p].y - offset[i].y) * (offset[p].x - offset[i].x) < px then
					isOn = not isOn
				end
			end
			p = i
		end
	else
		if math.pythag(x,y,px,py,w) then
			isOn = true
		end
	end

	return isOn
end
system.getGroundProperties = function(xml)
	system.grounds = {}
	xml:gsub("<S (.-)/>", function(parameters)
        local attributes = {}
        parameters:gsub("([%-%w]+)=([\"'])(.-)%2",function(tag,_,value)
            attributes[tag] = tonumber(value) or value
        end)
        system.grounds[#system.grounds + 1] = attributes
    end)
end
system.groundEffects = function()
	for n,p in next,tfm.get.room.playerList do
		if not p.isDead then
			local affected = false
			for id,ground in next,system.grounds do
				local newId = id - 1
				if (ground.disablepower or ground.P:sub(1,1) == "1") and not system.disabledGrounds[newId] then
					system.disabledGrounds[newId] = true
				end
				if not system.disabledGrounds[newId] and currentTime >= 3 then
					if system.onGround(ground,p.x,p.y) then
						affected = true
						local gtype = ground.T
						local color = tostring(ground.o or ""):upper()
						info[n].powersOP.GTYPE = gtype
						if gtype == 1 or color == "89A7F5" then -- ice
							system.bindKeyboard(n,32,true,true)
							if color ~= "" then
								info[n].powersOP.GTYPE = 1
							end
						elseif gtype == 2 or color == "6D4E94" then -- trampoline
							if color ~= "" then
								info[n].powersOP.GTYPE = 2
							end
						elseif gtype == 3 or color == "D84801" then -- lava
							if color ~= "" then
								info[n].powersOP.GTYPE = 3
							end
							if id > 1 then
								local g = system.grounds[id-1]
								local hTP = system.getTpPos(g)
								tfm.exec.displayParticle(36,p.x,p.y,0,0,0,0,n)
								tfm.get.room.playerList[n].x = 0
								tfm.get.room.playerList[n].y = 0
								tfm.exec.movePlayer(n,hTP[1],hTP[2])
								tfm.exec.displayParticle(36,hTP[1],hTP[2],0,0,0,0,n)
							end
						elseif gtype == 8 or color == "9BAABC" then -- cloud
							system.bindKeyboard(n,32,true,true)
						elseif gtype == 7 then -- sand
							local stormIntensities = {
								--[[ Opaque images
									[1] = "15a6d6fcd18",
									[2] = "15a6d6ff82f",
									[4] = "15a6d7015bc",
									[8] = "15a6d703149"
								]]
								[1] = .75,
								[2] = .65,
								[4] = .5,
								[8] = .25
							}
							ui.addTextArea(-1,"",n,-1500,-1500,3e3,3e3,0xE5CC5D,0xE5CC5D,stormIntensities[info[n].stats.powers.sand[1]],false)
							for i = 1,2 do
								tfm.exec.displayParticle(26,math.random(800),math.random(350),0,0,0,0,n)
								tfm.exec.displayParticle(27,math.random(800),math.random(350),0,0,0,0,n)
							end
						elseif gtype == 9 then -- water
							if hasWater then
								info[n].drown = info[n].drown + math.random(1,math.floor(info[n].stats.powers.water[1]))
								system.bar(1,n,info[n].drown,0x519DDA,100,20)
								if info[n].drown > 99 then
									tfm.exec.killPlayer(n)
									system.bar(1,n,info[n].drown,0xDA516D,100,20)
									info[n].drown = 0
									for i = 1,8 do
										tfm.exec.displayParticle(14,p.x+math.random(-50,50),p.y+math.random(-20,20),0,-1,0,0,n)
									end
								end
								for i = 1,math.random(2,4) do
									tfm.exec.displayParticle(14,p.x+math.random(-50,50),p.y+math.random(-20,20),0,-1,0,0,n)
								end
							end
						elseif gtype == 10 then -- stone
							system.bindKeyboard(n,32,true,true)
						elseif gtype == 11 or color == "E7F0F2" then -- snow
							system.bindKeyboard(n,32,true,true)
						elseif gtype == 12 or gtype == 13 then -- retangle or circle
							if color == "C90909" then
								tfm.exec.killPlayer(n)
							elseif color == "18C92B" then
								if os.time() > system.respawn then
									system.respawn = os.time() + 7e3
									for k,v in next,tfm.get.room.playerList do
										if v.isVampire then
											tfm.exec.killPlayer(k)
										elseif v.isDead and info[k].canRev then
											tfm.exec.respawnPlayer(k)
										end
									end
								end
							elseif color == "555D77" then
								info[n].checkpoint = id
							end
						elseif gtype == 15 then -- web
							local init = ""
							local D = tfm.get.room.xmlMapInfo.xml:match("<D>(.-)</D>") or ""
							for k,v in next,{"DS","T"} do
								init = D:match("<"..v.." (.-)/>")
								if init then
									break
								end
							end
							init = init or ""
							local x = init:match("X=\"(.-)\"")
							local y = init:match("Y=\"(.-)\"")
							if x and y then
								x,y = tonumber(x),tonumber(y)
								tfm.exec.movePlayer(n,x,y)
								tfm.get.room.playerList[n].x = 0
								tfm.get.room.playerList[n].y = 0
							end
						end
					end
				end
			end
			if not affected then
				info[n].powersOP.GTYPE = -1
			end
		end
	end
end

--[[ Map attributes ]]--
xml = {}
xml.parse = function(currentXml)
	currentXml = currentXml:match("<P (.-)/>") or ""
	local out = {}
	for tag,_,value in currentXml:gmatch("([%-%w]+)=([\"'])(.-)%2") do
		out[tag] = value
	end
	return out
end
xml.attribFunc = function(currentXml,funcs)
	local attributes = xml.parse(currentXml)
	for k,v in next,funcs do
		if attributes[v.attribute] then
			v.func(attributes[v.attribute])
		end
	end
end
xml.addAttrib = function(currentXml,out,launch)
	local parameters = currentXml:match("<P (.-)/>") or ""
	for k,v in next,out do
		if not parameters:find(v.tag) then
			currentXml = currentXml:gsub("<P (.-)/>",function(attribs)
				return string.format("<P %s=\"%s\" %s/>",v.tag,v.value,attribs)
			end)
		end
	end
	if launch then
		tfm.exec.newGame(currentXml)
	else
		return currentXml
	end
end

--[[ New Player ]]--
info = {}
bindMouse = {0,1,2,3,string.byte("OPHK")}
eventNewPlayer = function(n)
	if system.gameMode == 0 then
		tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s\n\n<G>[^_^] <VP>%s",system.getTranslation("welcome"):format("<ROSE>"..system.module.."<BV>"),system.getTranslation("developer"):format("Bolodefchoco")),n)
		if math.random(10) < 3 then
			tfm.exec.chatMessage("<ROSE>[•] Play #powers at /room #powers",n)
		end
		
		if system.isPlayer(n) then
			tfm.exec.lowerSyncDelay(n)
			for _,key in next,bindMouse do
				if key < 4 then
					system.bindKeyboard(n,key,false,true)
				end
				system.bindKeyboard(n,key,true,true)
			end
		else
			tfm.exec.chatMessage("<R>Souris! :(",n)
		end
		if not info[n] then
			info[n] = {
				groundsDataLoaded = true,
				showHelp = true,
				right = true,
				langue = system.roomCommunity,
				isWalking = false,
				drown = 0,
				ranking = -1,
				canRev = false,
				checkpoint = -1,
				shop = {
					accessing = false,
					page = 0,
					timer = 0,
					image = {},
				},
				menu = {
					accessing = false,
					page = 0,
					timer = 0,
					showPopup = true,
				},
				profileAccessing = false,
				leaderboardAccessing = false,
				profileTimer = 0,
				leaderboardTimer = 0,
				isOnline = true,
				stats = {
					groundsCoins = 1666,
					rounds = 0,
					podiums = 0,
					deaths = 0,
					powers = {
						ice = {25,100,1}, -- power, timer, level
						lava = {0,1}, -- power, level
						sand = {1,1}, -- Txtarea opacity, level
						cloud = {35,100,1}, -- power, timer, level
						water = {5,1}, -- power, level
						stone = {15,2500,700,1}, -- size, despawn timer, timer, level
						snow = {5,100,1}, -- power, timer, level
						spiderweb = {0,1}, -- power, level
					},
				},
				powersOP = {
					TIMER = 0,
					GTYPE = -1,
				},
			}
			ui.addTextArea(0,"",n,-1500,-1500,3e3,3e3,1,1,.8,true)
			ui.menu(n)
		end
		--[[
		local loadData = function(n)
			local loading = system.loadPlayerData(n)
			if loading then
				tfm.exec.chatMessage("<G>Loading data...",n)
			else
				loadData(n)
			end
		end
		loadData(n)
		]]--
		info[n].isOnline = true
		info[n].canRev = false
	end
	if system.gameMode == 1 then
		jokenpo.eventNewPlayer(n)
	end
	if system.gameMode == 2 then
		click.eventNewPlayer(n)
	end
	if system.gameMode == 3 then
		presents.eventNewPlayer(n)
	end
	if system.gameMode == 4 then
		chat.eventNewPlayer(n)
	end
	if system.gameMode == 5 then
		cannonup.eventNewPlayer(n)
	end
end

--[[ New Game ]]--
hasWater = false
podium = 0
system.availableRoom = false
system.alivePlayers,system.totalPlayers = 0,0
eventNewGame = function()
	if system.gameMode == 0 then
		tfm.exec.setGameTime(3 * 60)
		podium = 0
		system.availableRoom = system.totalPlayers > 4 and system.isRoom
		if not system.availableRoom then
			if math.random(30) < 16 then
				if not system.isRoom then
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("countstats.tribe")))
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("countstats.mice")))
				end
			end
		end
		for k,v in next,tfm.get.room.playerList do
			if not system.isPlayer(k) then
				tfm.exec.killPlayer(k)
			end
			if info[k].groundsDataLoaded and system.availableRoom then
				info[k].stats.rounds = info[k].stats.rounds + 1
				--system.savePlayerData(k,serialization(info[k].stats))
			end
			info[k].canRev = true
			info[k].right = true
			info[k].checkpoint = -1
		end
		hasWater = false
		local deactivateWater = false
		despawnGrounds = {}
		system.disabledGrounds = {}
		local currentXml = tfm.get.room.xmlMapInfo
		xml.attribFunc(currentXml.xml or "",{
			[1] = {
				attribute = "mapname",
				func = function(t)
					if t ~= "" then
						ui.setMapName(t .. "   <G>|<J>   " .. currentXml.author .. " <BL>- " .. tfm.get.room.currentMap)
					end
				end
			},
			[2] = {
				attribute = "disablepower",
				func = function(g)
					for ground in g:gmatch("[^,]+") do
						ground = tonumber(ground)
						if ground and not system.disabledGrounds[ground] then
							system.disabledGrounds[ground] = true
						end
					end
				end
			},
			[3] = {
				attribute = "cheese",
				func = function()
					table.foreach(tfm.get.room.playerList,tfm.exec.giveCheese)
				end
			},
			[4] = {
				attribute = "meep",
				func = function()
					table.foreach(tfm.get.room.playerList,tfm.exec.giveMeep)
				end
			},
			[5] = {
				attribute = "addtime",
				func = function(minutes)
					tfm.exec.setGameTime((3 + (tonumber(minutes) or 0)) * 60)
				end
			},
			[6] = {
				attribute = "notwater",
				func = function()
					deactivateWater = true
				end
			},
			[7] = {
				attribute = "setvampire",
				func = function(coordinates)
					if system.totalPlayers > 2 then
						local coord = {}
						for x,y in coordinates:gmatch("(%d+) ?, ?(%d+)") do
							coord[#coord + 1] = {x = x, y = y}
						end
						local vampires,p = {},{}
						for k,v in next,info do
							if v.isOnline then
								p[#p + 1] = k
							end
						end
						local randomVamp = ""
						for i = 1,math.floor(system.totalPlayers/3) do
							repeat
								randomVamp = table.random(p)
							until not table.find(vampires,randomVamp)
							vampires[#vampires + 1] = randomVamp
						end
						for k,v in next,vampires do
							local c = table.random(coord)
							tfm.exec.movePlayer(v,c.x,c.y)
							tfm.exec.setVampirePlayer(v)
						end
					else
						table.foreach(tfm.get.room.playerList,tfm.exec.setVampirePlayer)
					end
				end
			},
			[8] = {
				attribute = "shaman",
				func = function(t)
					if t ~= "" then
						ui.setShamanName(t)
					end
				end
			},
			[9] = {
				attribute = "A", -- Soulmate not allowed for rooms with odd amount of players
				func = function()
					if system.totalPlayers % 2 ~= 0 then
						table.foreach(tfm.get.room.playerList,tfm.exec.killPlayer)
					end
				end
			},
		})
		system.getGroundProperties(currentXml.xml)
		if not deactivateWater then
			for k,v in next,system.grounds do
				if v.T == 9 then
					hasWater = true
					for k,v in next,tfm.get.room.playerList do
						info[k].drown = 0
						system.bar(1,k,info[k].drown,0x519DDA,100,20)
					end
					break
				end
			end
		end
		if not hasWater then
			for i = 1,3 do
				ui.removeTextArea(i)
			end
		end
	end
	if system.gameMode == 3 then
		presents.eventNewGame()
	end
	if system.gameMode == 5 then
		cannonup.eventNewGame()
	end
end

--[[ loop ]]--
despawnGrounds = {}
normalizedTime = function(time)
	return math.floor(time) + ((time - math.floor(time)) >= .5 and .5 or 0)
end

review = false
eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	if system.gameMode == 0 then
		system.alivePlayers,system.totalPlayers = system.players()
		system.groundEffects()
		if _G.currentTime == 3 and math.random(50) < 21 then
			tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("powersenabled")))
		end
		if _G.currentTime%2 == 0 and not review then
			if system.alivePlayers < 1 or _G.leftTime <= 2 then
				tfm.exec.newGame(system.newMap())
			elseif system.alivePlayers == 1 and _G.leftTime > 50 and system.totalPlayers > 1 then
				tfm.exec.setGameTime(30)
			elseif podium > 3 and system.alivePlayers > 3 and _G.leftTime > 20 then
				tfm.exec.setGameTime(20)
			end
		end
		local grounds = {}
		for k,v in next,despawnGrounds do
			grounds[k] = v
		end
		for k,v in next,grounds do
			if os.time() > v[2] then
				tfm.exec.removePhysicObject(v[1])
				table.remove(despawnGrounds,k)
			end
		end
		for n,v in next,info do
			v.isWalking = (tfm.get.room.playerList[n] and (tfm.get.room.playerList[n].movingRight or tfm.get.room.playerList[n].movingLeft) or false)
			v.right = (tfm.get.room.playerList[n] and (tfm.get.room.playerList[n].isFacingRight) or false)
			if v.powersOP.GTYPE ~= 7 then -- Sand
				ui.removeTextArea(-1,n)
			end
			if hasWater then
				if _G.currentTime%2 == 0 then
					if tfm.get.room.playerList[n] then
						if not tfm.get.room.playerList[n].isDead and v.powersOP.GTYPE ~= 9 then -- Water
							if v.drown > 0 then
								v.drown = v.drown - 1
								system.bar(1,n,v.drown,0x519DDA,100,20)
							end
						end
					end
				end
			end
		end
	end
	if system.gameMode == 1 then
		jokenpo.eventLoop(currentTime)
	end
	if system.gameMode == 2 then
		click.eventLoop()
	end
	if system.gameMode == 3 then
		presents.eventLoop(currentTime)
	end
	if system.gameMode == 5 then
		cannonup.eventLoop(currentTime,leftTime)
	end
end

--[[ Keyboard ]]--
eventKeyboard = function(n,k,d,x,y)
	if system.gameMode == 0 then
		if table.find(bindMouse,k) then
			if k < 4 then
				tfm.get.room.playerList[n].x = x
				tfm.get.room.playerList[n].x = y
				if k == 0 then
					info[n].right = false
				elseif k == 2 then
					info[n].right = true
				end
			elseif k == string.byte("O") then
				eventChatCommand(n,"o")
			elseif k == string.byte("P") then
				if info[n].profileAccessing then
					eventTextAreaCallback(nil,n,"profile.close")
				else
					if os.time() > info[n].profileTimer then
						info[n].profileTimer = os.time() + 1e3
						eventChatCommand(n,"p")
					end
				end
			elseif k == string.byte("H") then
				eventChatCommand(n,"h")
			elseif k == string.byte("K") then
				eventChatCommand(n,"k")
			end
		else
			if k == 32 and os.time() > info[n].powersOP.TIMER then
				local ms = 0
				local power = {0,0}
				if info[n].powersOP.GTYPE == 8 then -- Cloud
					power = info[n].stats.powers.cloud
					ms = power[2]
					tfm.exec.movePlayer(n,0,0,true,0,-power[1],true)
				elseif info[n].powersOP.GTYPE == 1 and info[n].isWalking then -- Ice
					power = info[n].stats.powers.ice
					ms = power[2]
					tfm.exec.movePlayer(n,0,0,false,(info[n].right and power[1] or -power[1]),0,true)
				elseif info[n].powersOP.GTYPE == 11 and not info[n].isWalking then -- Snow
					power = info[n].stats.powers.snow
					ms = power[2]
					tfm.exec.addShamanObject(34,x + (info[n].right and 20 or -20),y - 5,0,(info[n].right and power[1] or -power[1]))
					tfm.exec.playEmote(n,26)
				elseif info[n].powersOP.GTYPE == 10 and not info[n].isWalking then -- Stone
					power = info[n].stats.powers.stone
					local id = tfm.get.room.playerList[n].id
					if not table.find(despawnGrounds,id,1) then
						ms = power[3]
						local halfSize = (power[1]/2) + 15
						tfm.exec.addPhysicObject(id,x + (info[n].right and halfSize or -halfSize),y + 32 - halfSize,{
							type = 10,
							miceCollision = true,
							groundCollision = false,
							width = power[1],
							height = power[1],
							friction = .3,
							restitution = 0
						})
						table.insert(despawnGrounds,{id,os.time() + power[2]})
					end
				end
				info[n].powersOP.TIMER = os.time() + ms
				system.bindKeyboard(n,32,true,false)
			end
			info[n].powersOP.GTYPE = -1
		end
	end
	if system.gameMode == 1 then
		jokenpo.eventKeyboard(n,k,d,x,y)
	end
end

--[[ Chat commands ]]--
disableChatCommand = function(command)
	system.disableChatCommandDisplay(command,true)
	system.disableChatCommandDisplay(command:lower(),true)
	system.disableChatCommandDisplay(command:upper(),true)
end	
eventChatCommand = function(n,c)
	if system.gameMode == 0 then
		if system.isPlayer(n) then
			c = deactivateAccents(c)
			system.disableChatCommandDisplay(c,true)
			local p = string.split(c,"[^%s]+")
			disableChatCommand(p[1])
			p[1] = p[1]:lower()
			if p[1] == cmds.shop or p[1] == "o" then
				if info[n].shop.accessing then
					eventTextAreaCallback(nil,n,"shop.close")
				else
					if os.time() > info[n].shop.timer then
						info[n].shop.timer = os.time() + 1200
						ui.shop(n)
					end
				end
			elseif p[1] == cmds.profile or p[1] == "p" then
				if p[2] then
					p[2] = string.nick(p[2])
					if info[p[2]] then
						ui.profile(n,p[2])
					end
				else
					ui.profile(n,n)
				end
				info[n].profileAccessing = true
			elseif p[1] == cmds.help or p[1] == "h" then
				if info[n].menu.accessing then
					eventTextAreaCallback(nil,n,"menu.close")
				else
					if os.time() > info[n].menu.timer then
						info[n].menu.timer = os.time() + 1e3
						ui.menu(n)
					end
				end
			elseif p[1] == cmds.langue then
				p[2] = p[2] and p[2]:lower() or nil
				if p[2] and (p[2] == "default" or system.translation[p[2]]) then
					if p[2] == "default" then
						info[n].langue = (system.translation[tfm.get.room.playerList[n].community] and tfm.get.room.playerList[n].community or system.roomCommunity)
					else
						p[2] = p[2]:lower()
						info[n].langue = p[2]
					end
					tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("language",n):format(info[n].langue:upper())),n)
				else
					tfm.exec.chatMessage(string.format("<PT>[•] <J>!%s <PS>%s",p[1],table.concat(langues," <G>-</G> ")),n)
				end
			elseif p[1] == cmds.leaderboard or p[1] == "k" then
				if info[n].leaderboardAccessing then
					eventTextAreaCallback(nil,n,"ranking.close")
				else
					if os.time() > info[n].leaderboardTimer then
						info[n].leaderboardTimer = os.time() + 1e3
						ui.leaderboard(n)
					end
				end
			elseif p[1] == cmds.info or p[1] == "?" then
				local grounds = system.getTranslation("grounds",n)
				local ground = grounds[info[n].powersOP.GTYPE]
				if ground then
					ui.displayInfo(n,{"info","grounds",ground[1]:gsub("'","#"),ground[2]})
				end
			else
				local isAdmin,isMapEv,isTranslator = system.roomAdmins[n],table.find(system.staff.mapEvaluators,n,1),table.find(system.staff.translators,n,1)
				if p[1] == cmds.pw or p[1] == "pw" then
					if isAdmin then
						local newPassword = p[2] and table.concat(p," ",nil,2) or ""
						local pwMsg = system.getTranslation("password")
						if newPassword == "" then
							tfm.exec.chatMessage(string.format("<R>[•] %s",pwMsg.off))
						else
							local xxx = ("*"):rep(#newPassword)
							for k,v in next,tfm.get.room.playerList do
								if system.roomAdmins[k] and system.isPlayer(k) then
									tfm.exec.chatMessage(string.format("<R>[•] %s",pwMsg.on:format(newPassword)),k)
								else
									tfm.exec.chatMessage(string.format("<R>[•] %s",pwMsg.on:format(xxx)),k)
								end
							end
						end
						tfm.exec.setRoomPassword(newPassword)
					else
						tfm.exec.chatMessage("<ROSE>[•] /room #" .. system.module .. math.random(0,999) .. "@" .. n,n)
					end
				end
				if not system.isRoom then
					if p[1] == "time" and isMapEv then
						tfm.exec.setGameTime(p[2] or 1e7)
					elseif p[1] == "np" and p[2] and isMapEv then
						tfm.exec.newGame(p[2])
					elseif p[1] == "review" and isMapEv then
						review = not review
						tfm.exec.chatMessage("<BV>[•] REVIEW MODE : " .. tostring(review):upper(),n)
						tfm.exec.disableAfkDeath(review)
					elseif p[1] == "next" and currentTime > 5 and isMapEv then
						tfm.exec.newGame(system.newMap())
					elseif p[1] == "again" and currentTime > 5 and isMapEv then
						if tfm.get.room.currentMap then
							tfm.exec.newGame(tfm.get.room.currentMap)
						end
					end
				end
				if p[1] == "is" and isMapEv then
					p[2] = tonumber(p[2]:match("@?(%d+)")) or 0
					tfm.exec.chatMessage(string.format("<BV>[•] @%s : %s",p[2],tostring(table.find(system.maps,p[2])):upper()),n)
				end	
				if p[1] == "check" and isTranslator then
					p[2] = p[2] and p[2]:lower() or nil
					if p[2] and system.translation[p[2]] then
						local newP3 = p[3] and system.loadTable("system.translation."..p[2].."."..p[3]) or {}
						if newP3 and type(newP3) == "string" then
							tfm.exec.chatMessage("<CEP>[•] " .. p[3] .. " : <N><VI>\"</VI>" .. newP3 .. "<VI>\"</VI>",n)
						else
							tfm.exec.chatMessage("<CEP>[•] " .. (p[3] and "Invalid! Try one of these indexes:" or "!" .. p[1] .. " " .. p[2] .. " <VI>id"),n)
							for k,v in next,translationIndexes do
								tfm.exec.chatMessage("<N>\t\t" .. v,n)
							end
						end
					else
						tfm.exec.chatMessage("<CEP>[•] !" .. p[1] .. " " .. table.concat(langues," <G>-</G> "),n)
					end
				end
			end
		end
	end
	if system.gameMode == 2 then
		click.eventChatCommand(n,c)
	end
	if system.gameMode == 4 then
		chat.eventChatCommand(n,c)
	end
	if system.gameMode == 5 then
		cannonup.eventChatCommand(n,c)
	end
end
for k,v in next,cmds do
	disableChatCommand(v)
end
for k,v in next,{"o","p","h","k","?","pw","time","np","is","check","review","next","again"} do
	disableChatCommand(v)
end

--[[ Data ]]--
eventPlayerDataLoaded = function(n,d)
	if d ~= "" and d:find(":groundsCoins") then
		info[n].stats = serialization(d)
	else
		--system.savePlayerData(n,serialization(info[n].stats))
	end
	info[n].groundsDataLoaded = true
	tfm.exec.chatMessage("<G>Data loaded!",n)
end

--[[ Won ]]--
eventPlayerWon = function(n)
	if system.gameMode == 0 then
		if system.availableRoom and info[n].groundsDataLoaded and system.isPlayer(n) then
			podium = podium + 1
			if podium < 4 then
				info[n].stats.podiums = info[n].stats.podiums + 1
				local addedCoins = 20 - podium * 5
				info[n].stats.groundsCoins = info[n].stats.groundsCoins + addedCoins
				tfm.exec.setPlayerScore(n,4-podium,true)
				tfm.exec.chatMessage(string.format("<PT>[•] <BV>%s",system.getTranslation("gotcoin",n):format("<J>+$"..addedCoins.."</J>")),n)
				if podium == 1 and leftTime > 60 then
					tfm.exec.setGameTime(60)
				end
			else
				if podium == 4 and leftTime > 30 then
					tfm.exec.setGameTime(30)
				end
				info[n].stats.groundsCoins = info[n].stats.groundsCoins + 1
				tfm.exec.setPlayerScore(n,1,true)
			end
			if hasWater then
				system.bar(1,n,info[n].drown,0x6FDA51,100,20)
			end
			--system.savePlayerData(n,serialization(info[n].stats))
			if system.leaderMode ~= 0 then
				if podium == system.leaderMode then
					tfm.exec.setGameTime(0)
				end
			end
		end
		if review then
			tfm.exec.respawnPlayer(n)
		end
		info[n].canRev = false
	end
	if system.gameMode == 5 then
		cannonup.eventPlayerWon(n)
	end
end

--[[ Died ]]--
eventPlayerDied = function(n)
	if system.gameMode == 0 then
		if info[n].groundsDataLoaded and system.availableRoom then
			info[n].stats.deaths = info[n].stats.deaths + 1
			--system.savePlayerData(n,serialization(info[n].stats))
		end
		if hasWater then
			if info[n].drown > 0 then
				system.bar(1,n,info[n].drown,0xDA516D,100,20)
			end
		end
		system.bindKeyboard(n,32,true,false)
		ui.removeTextArea(-1,n)
		if review then
			tfm.exec.respawnPlayer(n)
		end
	end
	if system.gameMode == 2 then
		click.eventPlayerDied(n)
	end
	if system.gameMode == 5 then
		cannonup.eventPlayerDied(n)
	end
end

--[[ Left ]]--
eventPlayerLeft = function(n)
	if info[n] then
		info[n].isOnline = false
	end
end

--[[ Respawn ]]--
eventPlayerRespawn = function(n)
	if system.gameMode == 0 then
		if info[n].checkpoint ~= -1 then
			local g = system.grounds[info[n].checkpoint]
			local hTP = system.getTpPos(g,true)
			tfm.exec.movePlayer(n,hTP[1],hTP[2])
		end
		if info[n].groundsDataLoaded and system.availableRoom then
			info[n].stats.rounds = info[n].stats.rounds + 1
			--system.savePlayerData(n,serialization(info[n].stats))
		end
		if hasWater then
			system.bar(1,n,info[n].drown,0x519DDA,100,20)
		end
		tfm.exec.chatMessage(string.format("<R>[•] %s",system.getTranslation("zombie",n)),n)
	end
end

--[[ Popup ]]--
eventPopupAnswer = function(i,n,a)
	if system.gameMode == 4 then
		chat.eventPopupAnswer(i,n,a)
	end
end

--[[ Settings ]]--
system.setRoom()
if system.gameMode == 0 then
	tfm.exec.setGameTime(10)
	for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables"} do
		tfm.exec["disable"..f]()
	end
	tfm.exec.setRoomMaxPlayers(15)
	tfm.exec.setAutoMapFlipMode(false)
	ui.leaderboard()
end
if system.gameMode == 1 then
	jokenpo.init()
end
if system.gameMode == 2 then
	click.init()
end
if system.gameMode == 3 then
	presents.init()
end
if system.gameMode == 4 then
	chat.init()
end
if system.gameMode == 5 then
	cannonup.init()
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

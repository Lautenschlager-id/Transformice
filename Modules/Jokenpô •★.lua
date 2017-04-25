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
		jokenpo.totalRounds = system.miscAttrib>0 and system.miscAttrib or 5
		jokenpo.translations.pt = jokenpo.translations.br
		jokenpo.langue = jokenpo.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setRoomMaxPlayers(25)
		jokenpo.newRound()
	end,
	maps = {'<C><P /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="30" o="2d3232" H="400" Y="200" T="12" X="15" /><S P="0,0,0.3,0.2,0,0,0,0" L="800" o="2d3232" H="70" Y="410" T="12" X="400" /><S L="30" o="2d3232" H="400" X="785" Y="210" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" H="20" X="400" Y="10" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="E3454D" X="318" H="66" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="E3454D" H="46" Y="196" T="12" X="346" /><S L="10" o="E3454D" H="66" X="374" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="E3454D" H="46" X="346" Y="252" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="4577E3" X="482" Y="224" T="12" H="66" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="4577E3" X="454" Y="252" T="12" H="46" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="4577E3" H="66" Y="224" T="12" X="426" /><S L="10" o="4577E3" H="46" X="454" Y="196" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S L="10" o="45e374" H="66" X="372" Y="105" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="45e374" X="400" Y="77" T="12" H="46" /><S L="10" o="45e374" X="428" H="66" Y="105" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="45e374" X="400" H="46" Y="133" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S L="74" X="137" H="152" Y="300" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="73" X="122" H="10" Y="150" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="117" X="705" H="65" Y="340" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="14" X="677" H="10" Y="289" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="710" H="10" Y="285" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" X="655" H="18" Y="301" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D><P C="1c2b2b" Y="0" T="34" X="0" P="0,0" /><P P="0,0" Y="334" T="113" X="415" /><P C="cdc5bc,564740" Y="375" T="105" X="285" P="0,1" /><P C="cdc5bc,564740" Y="375" T="105" X="515" P="0,0" /><P C="564740" Y="376" T="104" X="400" P="0,0" /><DS Y="320" X="400" /><P C="413632" Y="379" T="95" P="0,0" X="707" /><P X="124" Y="174" T="112" P="0,0" /><P C="4577E3,babd2f,45e374,E3454D" Y="306" T="93" P="0,0" X="684" /><P C="413632,a3468e" Y="382" T="94" P="0,0" X="132" /><P P="0,0" Y="336" T="21" X="400" /><P X="400" Y="336" T="21" P="0,1" /><P X="475" Y="335" T="31" P="0,0" /><P X="325" Y="335" T="31" P="0,1" /></D><O /></Z></C>'},
	map = function()
		tfm.exec.newGame(table.random(jokenpo.maps))
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
		if jokenpo.cBlue == "" or jokenpo.cRed == "" then
			tfm.exec.respawnPlayer(n)
		else
			ui.addTextArea(1,"<p align='center'>"..jokenpo.players[1][1].."\n"..("%02d"):format(jokenpo.players[1][2]),n,270,165,105,nil,1,1,0,true)
			ui.addTextArea(2,"<p align='center'>"..jokenpo.players[2][1].."\n"..("%02d"):format(jokenpo.players[2][2]),n,425,165,105,nil,1,1,0,true)
			ui.addTextArea(3,"<p align='center'><font size='35'><J>"..math.floor(jokenpo.timer),n,380,85,40,40,1,1,0,true)
		end
	end,
	eventKeyboard = function(n,k,d,x,y)
		if k == 32 then
			if math.pythag(285,330,x,y,30) then
				if jokenpo.cRed == "" and n ~= jokenpo.cBlue then
					tfm.exec.chatMessage("<CE>[•] " .. jokenpo.translations[jokenpo.langue].guide:format("R",n,"B","N","M"),n)
					jokenpo.cRed = n
					jokenpo.players[1] = {n,0,-1,0}
					ui.addTextArea(1,"<p align='center'>"..n.."\n"..("%02d"):format(jokenpo.players[1][2]),nil,270,165,105,nil,1,1,0,true)
					jokenpo.player(n,true)
				end
			elseif math.pythag(515,330,x,y,30) then
				if jokenpo.cBlue == "" and n ~= jokenpo.cRed then
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

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	jokenpo.eventLoop(currentTime,leftTime)
end

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if jokenpo["event" .. evento] then
		_G["event" .. evento] = function(...)
			jokenpo["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

jokenpo.init()

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
			rival = "Rivals",
		},
		br = {
			nowinner = "Ninguém venceu",
			won = "venceu",
			welcome = "<J>Bem-vindo ao <VP><B>#presents</B><J>! Escolha um buraco de acordo com o presente representado e boa sorte! Você ganhará se sua sequência nos três presentes estiver correta!\n\n<CE>Desenvolvido por Bolodefchoco, pedido por Ruamorangos",
			appear = "Você irá aparecer no próximo jogo!",
			choose = "Escolha um presente em menos de <PT>%s segundos!",
			dead = "Aqueles que estão fora do presente correto serão mortos!",
			newGame = "Novo jogo em <PT>%s segundos!",
			rival = "Rivais",
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
		presents.translations.pt = presents.translations.br
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
		local mapName = "<N>"..presents.translations[presents.langue].rival.." : <V>"..(system.players()-1)
		if _G.currentTime > 4 and presents.isRunning then
			if presents.choice[2] then
				mapName = "<N>"..presents.translations[presents.langue].rival.." : <V>"..(system.players()-1).."   <G>|   <J>" .. presents.translations[presents.langue].choose:format(math.floor(presents.choice[1]).."<J>")
				presents.choice[1] = presents.choice[1] - .5
				if presents.choice[1] <= 0 then
					presents.choice = {15,false}
					presents.block[2] = true
				end
			end
			if presents.block[2] then
				mapName = "<N>"..presents.translations[presents.langue].rival.." : <V>"..(system.players()-1).."   <G>|   <R>" .. presents.translations[presents.langue].dead
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

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	presents.eventLoop(currentTime,leftTime)
end

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if presents["event" .. evento] then
		_G["event" .. evento] = function(...)
			presents["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

presents.init()

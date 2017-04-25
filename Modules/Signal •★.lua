signal = {
	translations = {
		en = {
			welcome = "<S>Welcome to <PS>#Signal<S>! Follow the signs and join the hole! Use !help to read more informations.\n\tReport any issue to Bolodefchoco",
			info = {
				[1] = {"Run","Run the faster you can. Do not stop!"},
				[2] = {"Attention","Pay attention! You can die in a few seconds!"},
				[3] = {"Stop","Stop or die!"},
			},
			close = "Close",
			skip = "<PS>[•] <S>Impossible map? Type !skip",
			skipped = "Your vote to skip the map has been recorded.",
		},
		br = {
			welcome = "<S>Bem-vindo ao <PS>#Signal<S>! Siga os sinais e entre na toca!  Use !help para ler mais informações.\n\tReporte qualquer problema para Bolodefchoco",
			info = {
				[1] = {"Corra","Corra o mais rápido que puder. Não pare!"},
				[2] = {"Atenção","Preste atenção! Você poderá morrer a qualquer momento!"},
				[3] = {"Pare","Pare ou morra!"},
			},
			close = "Fechar",
			skip = "<PS>[•] <S>Mapa impossível? Digite !skip",
			skipped = "Seu voto para passar o mapa foi registrado.",
		},
	},
	langue = "en",
	sys = {0,1},
	info = {},
	discrepancy = 0,
	lights = {"15b52f8717d","15b52f8583a","15b52f88765"},
	lightId = -1,
	skip = 0,
	rounds = 0,
	possible = false,
	init = function()
		signal.translations.pt = signal.translations.br
		signal.langue = signal.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		for _,f in next,{"AutoShaman","AutoNewGame","AutoTimeLeft","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end

		signal.generateMap()
	end,
	message = function(id)
		tfm.exec.removeImage(signal.lightId)
		signal.lightId = tfm.exec.addImage(signal.lights[signal.sys[2]] .. ".png","&0",375,30)
		local color = ({0x1CB70C,0xF4D400,0xEC0000})[signal.sys[2]]
		for k,v in next,signal.info do
			if id == 1 then
				if not v.afk and v.canRev then
					tfm.exec.respawnPlayer(k)
				end
			end
			tfm.exec.setNameColor(k,color)
		end
	end,
	displayInfo = function(n,id)
		local color = ({"<VP>","<J>","<R>"})[id]
		ui.addTextArea(1,"<p align='center'><font size='25'>" .. color .. signal.translations[signal.langue].info[id][1] .. "\n</font></p><p align='left'><font size='14'>" .. signal.translations[signal.langue].info[id][2],n,250,110,300,181,0x324650,0x27343A,1,true)
		ui.addTextArea(2,"<font size='2'>\n</font><p align='center'><font size='16'><a href='event:close'>" .. signal.translations[signal.langue].close,n,250,300,300,30,0x27343A,0x27343A,1,true)
		ui.addTextArea(3,"<p align='center'><font size='20'><a href='event:info.1'><VP>•</a> <a href='event:info.2'><J>•</a> <a href='event:info.3'><R>•</a>",n,250,145,300,30,1,1,0,true)
		tfm.exec.removeImage(signal.info[n].imageId)
		signal.info[n].imageId = tfm.exec.addImage(signal.lights[id] .. ".png","&1",375,200,n)
	end,
	generateMap = function()
		local groundProperties = {[0] = {.3,.2},[4] = {20,.2},[5] = {.3,.2},[6] = {.3,.2},[7] = {.1,.2},[10] = {.3,0},[11]
 = {.05,.1},[3] = {5,20}}
		local groundDecorations = {[0] = {0,4,5},[4] = {1,42,51},[5] = {1,2,4,12,18,20,32,42,46},[6] = {0,1,2,3,4,5,11,42},[7] = {7,8,9,10},[10] = {42,103,118},[11] = {51,106},[3] = {}}
		local newGround = "<S L=\"%s\" H=\"%s\" X=\"%s\" Y=\"%s\" T=\"%s\" P=\"0,0,%s,%s,0,0,0,0\" />"
		local newDecoration = "<P P=\"%s,0\" X=\"%d\" Y=\"%d\" T=\"%d\" />"
		local object = "<%s X=\"%s\" Y=\"%s\"/>"
		local objects = {hole="T",mice="DS",cheese="F"}

		local mapHeight = math.random(1500,3000)

		local grounds = {}
		local decorations = {}
		for i = 1,22 do
			local T = table.random({0,4,5,6,7,10,11,table.random({4,5,6,10,3})})

			local H = T==3 and math.random(10,20) or math.random(40,100)

			local Y = (#grounds > 1 and grounds[#grounds].Y < 320 and math.random(250,300) or math.random(300,350)) or math.random(300,350)

			local X,L
			repeat
				X = (#grounds > 1 and (grounds[#grounds].X + ((math.random(-1,1) * 30) + 200)) or math.random(50,300))
				X = X < 60 and 100 or X > mapHeight - 100 and mapHeight - 300 or X
				L = T==3 and H or math.random(40,mapHeight/15)
			until (X - (L/2)) > 50 and (X + (L/2)) < mapHeight - 50

			local properties = groundProperties[T]
			grounds[#grounds + 1] = {X=X,Y=Y,L=L,H=H,newGround:format(L,H,X,Y,T,properties[1],properties[2])}

			if T ~= 3 and math.random(20) < 10 then
				local decoList = groundDecorations[T]
				decorations[#decorations + 1] = newDecoration:format(table.random({0,0,0,math.random(0,1),1}),X - math.random(-((L/4)+1),((L/4)+1)),Y - (H/2),table.random(decoList))
			end
		end
		
		local cheeseX
		repeat
			cheeseX = math.random(200,mapHeight - 500)
		until (function()
			for k,v in next,grounds do
				if (cheeseX + 10) > (v.X - v.L/2) and (cheeseX - 10) < (v.X + v.L/2) then
					return false
				end
			end
			return true
		end)()

		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,newGround:format(200,40,100,380,2,.3,.9)}
		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,newGround:format(300,40,mapHeight - 150,380,6,.3,.2)}

		tfm.exec.newGame(string.format("<C><P G=\"0,%s\" F=\"%s\" L=\"%s\" /><Z><S>%s</S><D>%s%s%s%s</D><O /></Z></C>",table.random({math.random(7,12),10,11,9}),table.random({0,1,2,3,4,5,7,8}),mapHeight,table.concat(grounds,"",function(k,v) return v[1] end),object:format(objects.hole,mapHeight - 30,360),object:format(objects.mice,10,365),object:format(objects.cheese,cheeseX,math.random(280,340)),table.concat(decorations)))
	end,
	eventNewPlayer = function(n)
		if not signal.info[n] then
			signal.info[n] = {
				isMoving = {false,false,false,false},
				imageId = -1,
				afk = true,
				skipped = false,
				canRev = true,
			}
		end
		for i = 0,3 do
			system.bindKeyboard(n,i,true,true)
			system.bindKeyboard(n,i,false,true)
		end
		tfm.exec.chatMessage(signal.translations[signal.langue].welcome,n)
	end,
	eventNewGame = function()
		signal.skip = 0
		signal.possible = false
		signal.rounds = signal.rounds + 1
		if signal.rounds % 3 == 0 then
			tfm.exec.chatMessage(signal.translations[signal.langue].skip)
		end
		ui.setMapName("<BL>@" .. math.random(999) .. "   <G>|   <N>Round : <V>" .. signal.rounds)
		for k,v in next,signal.info do
			v.isMoving = {false,false,false,false}
			v.afk = true
			v.skipped = false
			v.canRev = true
		end
		signal.sys = {0,1}
		signal.message(signal.sys[2])
	end,
	eventKeyboard = function(n,k,d)
		if signal.sys[2] == 3 and d and os.time() > signal.discrepancy then
			tfm.exec.killPlayer(n)
		else
			signal.info[n].isMoving[k + 1] = d
		end
		signal.info[n].afk = false
	end,
	eventLoop = function(currentTime,leftTime)
		if _G.currentTime > 8 then
			if os.time() > signal.sys[1] then
				signal.sys[2] = (signal.sys[2] % 3) + 1
				signal.sys[1] = os.time() + ({math.random(7,13),math.random(2,3),math.random(3,5)})[signal.sys[2]] * 1000
				signal.message(signal.sys[2])
				signal.discrepancy = os.time() + 520
			end
		end

		if _G.leftTime > 2 and system.players() > 0 then
			if signal.sys[2] == 3 and os.time() > signal.discrepancy then
				for k,v in next,signal.info do
					for i,j in next,v.isMoving do
						if j then
							tfm.exec.killPlayer(k)
							break
						end
					end
				end
			end
		else
			signal.generateMap()
		end
	end,
	eventTextAreaCallback = function(i,n,c)
		local p = {}
		for k in c:gmatch("[^%.]+") do
			p[#p + 1] = k
		end

		if p[1] == "info" then
			signal.displayInfo(n,tonumber(p[2]))
		elseif p[1] == "close" then
			tfm.exec.removeImage(signal.info[n].imageId)
			for i = 1,3 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	eventChatCommand = function(n,c)
		if c == "info" or c == "help" or c == "?" then
			eventTextAreaCallback(nil,n,"info." .. signal.sys[2])
		elseif c == "skip" and _G.currentTime > 8 and not signal.possible and not signal.info[n].skipped then
			signal.skip = signal.skip + 1
			tfm.exec.chatMessage(signal.translations[signal.langue].skipped,n)
			local alive,total = system.players()
			if signal.skip == math.ceil(.5 * total) then
				tfm.exec.chatMessage("o/")
				signal.generateMap()
			end
		end
	end,
	eventPlayerWon = function(n)
		signal.possible = true
		signal.info[n].canRev = false
		tfm.exec.setGameTime(40,false)
	end,
}

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	signal.eventLoop(currentTime,leftTime)
end

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if signal["event" .. evento] then
		_G["event" .. evento] = function(...)
			signal["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

signal.init()

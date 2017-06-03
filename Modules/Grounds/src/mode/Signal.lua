mode.signal = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "<S>Welcome to <PS>#Signal<S>! Follow the signs and join the hole! Use !help to read more informations.\n\tReport any issue to Bolodefchoco",
			
			-- Info
			info = {
				[1] = {"Run","Run the faster you can. Do not stop!"},
				[2] = {"Attention","Pay attention! You can die in a few seconds!"},
				[3] = {"Stop","Stop or die!"},
			},
			skip = "<PS>[•] <S>Impossible map? Type !skip",
			skipped = "Your vote to skip the map has been recorded.",
			
			-- Simple words
			close = "Close",
		},
		br = {
			welcome = "<S>Bem-vindo ao <PS>#Signal<S>! Siga os sinais e entre na toca!  Use !help para ler mais informações.\n\tReporte qualquer problema para Bolodefchoco",

			info = {
				[1] = {"Corra","Corra o mais rápido que puder. Não pare!"},
				[2] = {"Atenção","Preste atenção! Você poderá morrer a qualquer momento!"},
				[3] = {"Pare","Pare ou morra!"},
			},
			skip = "<PS>[•] <S>Mapa impossível? Digite !skip",
			skipped = "Seu voto para passar o mapa foi registrado.",

			close = "Fechar",
		},
	},
	langue = "en",
	-- Data
	info = {},
	-- Maps
	generateMap = function()
		local groundProperties = {[0] = {.3,.2},[4] = {20,.2},[5] = {.3,.2},[6] = {.3,.2},[7] = {.1,.2},[10] = {.3,0},[11] = {.05,.1},[3] = {5,20}}
		local groundDecorations = {[0] = {0,4,5},[4] = {1,42,51},[5] = {1,2,4,12,18,20,32,42,46},[6] = {0,1,2,3,4,5,11,42},[7] = {7,8,9,10},[10] = {42,103,118},[11] = {51,106},[3] = {}}
		local newGround = "<S L=\"%s\" H=\"%s\" X=\"%s\" Y=\"%s\" T=\"%s\" P=\"0,0,%s,%s,0,0,0,0\" />"
		local newDecoration = "<P P=\"%s,0\" X=\"%d\" Y=\"%d\" T=\"%d\" />"
		local object = "<%s X=\"%s\" Y=\"%s\"/>"
		local objects = {hole="T",mice="DS",cheese="F"}

		local mapHeight = math.random(1500,3000)

		local grounds = {}
		local decorations = {}
		for i = 1,math.ceil(mapHeight/180) do
			local T = table.random({0,4,5,6,7,10,11,table.random({4,5,6,10,3})})

			local H = T==3 and math.random(10,20) or math.random(40,100)

			local Y = (#grounds > 1 and grounds[#grounds].Y < 320 and math.random(230,310) or math.random(300,350)) or math.random(290,350)

			local X,L
			repeat
				X = (#grounds > 1 and (grounds[#grounds].X + ((math.random(-1,1) * 30) + 200)) or math.random(50,300))
				X = X < 60 and 100 or X > mapHeight - 100 and mapHeight - 300 or X
				L = T==3 and H or math.random(40,math.ceil(mapHeight/18))
			until (X - (L/2)) > 50 and (X + (L/2)) < mapHeight - 50

			local properties = groundProperties[T]
			grounds[#grounds + 1] = {X=X,Y=Y,L=L,H=H,string.format(newGround,L,H,X,Y,T,properties[1],properties[2])}

			if T ~= 3 and math.random(20) < 10 then
				local decoList = groundDecorations[T]
				decorations[#decorations + 1] = string.format(newDecoration,table.random({0,0,0,math.random(0,1),1}),X - math.random(-((L/4)+1),((L/4)+1)),Y - (H/2),table.random(decoList))
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

		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,string.format(newGround,200,40,100,380,2,.3,.9)}
		grounds[#grounds + 1] = {X=0,Y=0,L=0,H=0,string.format(newGround,300,40,mapHeight - 150,380,6,.3,.2)}

		tfm.exec.newGame(string.format("<C><P G=\"0,%s\" F=\"%s\" L=\"%s\" /><Z><S>%s</S><D>%s%s%s%s</D><O /></Z></C>",table.random({math.random(7,12),10,11,9}),table.random({0,1,2,3,4,5,7,8}),mapHeight,table.concat(grounds,"",function(k,v) return v[1] end),string.format(object,objects.hole,mapHeight - 30,360),string.format(object,objects.mice,10,365),string.format(object,objects.cheese,cheeseX,math.random(280,340)),table.concat(decorations)))
	end,
	-- Settings
	sys = {0,1},
	discrepancy = 0,
	lights = {"15b52f8717d","15b52f8583a","15b52f88765"},
	lightId = -1,
	skip = 0,
	rounds = 0,
	possible = false,
	-- Settings
	update = function(id)
		tfm.exec.removeImage(mode.signal.lightId)
		mode.signal.lightId = tfm.exec.addImage(mode.signal.lights[mode.signal.sys[2]] .. ".png","&0",375,30)
		local color = ({0x1CB70C,0xF4D400,0xEC0000})[mode.signal.sys[2]]
		for k,v in next,mode.signal.info do
			if id == 1 then
				if not v.afk and v.canRev then
					tfm.exec.respawnPlayer(k)
				end
			end
			tfm.exec.setNameColor(k,color)
		end
	end,
	-- Help
	displayInfo = function(n,id)
		local color = ({"<VP>","<J>","<R>"})[id]
		ui.addTextArea(1,"<p align='center'><font size='25'>" .. color .. mode.signal.translations[mode.signal.langue].info[id][1] .. "\n</font></p><p align='left'><font size='14'>" .. mode.signal.translations[mode.signal.langue].info[id][2],n,250,110,300,181,0x324650,0x27343A,1,true)
		ui.addTextArea(2,"<font size='2'>\n</font><p align='center'><font size='16'><a href='event:close'>" .. mode.signal.translations[mode.signal.langue].close,n,250,300,300,30,0x27343A,0x27343A,1,true)
		ui.addTextArea(3,"<p align='center'><font size='20'><a href='event:info.1'><VP>•</a> <a href='event:info.2'><J>•</a> <a href='event:info.3'><R>•</a>",n,250,145,300,30,1,1,0,true)
		tfm.exec.removeImage(mode.signal.info[n].imageId)
		mode.signal.info[n].imageId = tfm.exec.addImage(mode.signal.lights[id] .. ".png","&1",375,200,n)
	end,
	-- Init
	init = function()
		mode.signal.translations.pt = mode.signal.translations.br
		mode.signal.langue = mode.signal.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		for _,f in next,{"AutoShaman","AutoNewGame","AutoTimeLeft","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end

		mode.signal.generateMap()
	end,
	-- New Player
	eventNewPlayer = function(n)
		if not mode.signal.info[n] then
			mode.signal.info[n] = {
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
		tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].welcome,n)
	end,
	-- New Game
	eventNewGame = function()
		mode.signal.skip = 0
		mode.signal.possible = false
		mode.signal.rounds = mode.signal.rounds + 1
		
		if mode.signal.rounds % 3 == 0 then
			tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].skip)
		end
		
		ui.setMapName("<BL>@" .. math.random(999) .. "   <G>|   <N>Round : <V>" .. mode.signal.rounds)
		
		for k,v in next,mode.signal.info do
			v.isMoving = {false,false,false,false}
			v.afk = true
			v.skipped = false
			v.canRev = true
		end
		
		mode.signal.sys = {0,1}
		mode.signal.update(mode.signal.sys[2])
	end,
	-- Keyboard
	eventKeyboard = function(n,k,d)
		if mode.signal.sys[2] == 3 and d and os.time() > mode.signal.discrepancy then
			tfm.exec.killPlayer(n)
		else
			mode.signal.info[n].isMoving[k + 1] = d
		end
		mode.signal.info[n].afk = false
	end,
	-- Loop
	eventLoop = function(currentTime,leftTime)
		if _G.currentTime > 8 then
			if os.time() > mode.signal.sys[1] then
				mode.signal.sys[2] = (mode.signal.sys[2] % 3) + 1
				mode.signal.sys[1] = os.time() + ({math.random(7,13),math.random(2,3),math.random(3,5)})[mode.signal.sys[2]] * 1000
				mode.signal.update(mode.signal.sys[2])
				mode.signal.discrepancy = os.time() + 520
			end
		end

		if _G.leftTime > 2 and system.players() > 0 then
			if mode.signal.sys[2] == 3 and os.time() > mode.signal.discrepancy then
				for k,v in next,mode.signal.info do
					for i,j in next,v.isMoving do
						if j then
							tfm.exec.killPlayer(k)
							break
						end
					end
				end
			end
		else
			mode.signal.generateMap()
		end
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		local p = string.split(c,"[^%.]+")
		if p[1] == "info" then
			mode.signal.displayInfo(n,tonumber(p[2]))
		elseif p[1] == "close" then
			tfm.exec.removeImage(mode.signal.info[n].imageId)
			for i = 1,3 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		if c == "info" or c == "help" or c == "?" then
			eventTextAreaCallback(nil,n,"info." .. mode.signal.sys[2])
		elseif c == "skip" and _G.currentTime > 8 and not mode.signal.possible and not mode.signal.info[n].skipped then
			mode.signal.skip = mode.signal.skip + 1
			tfm.exec.chatMessage(mode.signal.translations[mode.signal.langue].skipped,n)
			
			local alive,total = system.players()
			if mode.signal.skip == math.ceil(.5 * total) then
				tfm.exec.chatMessage("o/")
				mode.signal.generateMap()
			end
		end
	end,
	-- Victory
	eventPlayerWon = function(n)
		mode.signal.possible = true
		mode.signal.info[n].canRev = false
		tfm.exec.setGameTime(40,false)
	end,
}

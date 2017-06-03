mode.cannonup = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "Welcome to #cannonup. Your aim is to be the survivor! <VP>Take care, watermelons are dangerous!\n\t<J>Report any issue to Bolodefchoco.",

			-- Info
			nowinner = "No one won!",
			
			-- Simple words
			won = "won!",
			
			-- Profile
			profile = "Rounds : <V>%d</V>\nCheeses : <V>%d</V>\n\nDeaths : <V>%d</V>",
		},
		br = {
			welcome = "Bem-vindo ao #cannonup. Seu objetivo é ser o sobrevivente! <VP>Tome cuidado, melancias são perigosas!\n\t<J>Reporte qualquer problema para Bolodefchoco.",
		
			nowinner = "Ninguém ganhou!",
		
			won = "venceu!",
			
			profile = "Rodadas : <V>%d</V>\nQueijos : <V>%d</V>\n\nMortes : <V>%d</V>",
		},
	},
	langue = "en",
	-- Data
	info = {},
	-- Maps
	maps = {3746497,6001536,3666224,4591929,"#10","#10","#10","#10","#10","#10","#10","#10","#10"},
	-- Settings
	isRunning = false,
	totalPlayers = 0,
	-- New Map Settings
	cannon = {
		x = 0,
		y = 0,
		time = 3,
		amount = 1,
		speed = 20,
	},
	canMessage = false,
	currentXml = -1,
	toDespawn = {},
	alivePlayers = {},
	-- Cannon ID
	getCannon = function()
		-- 1705 maçã
		-- 1706 melancia
		local currentMonth = tonumber(os.date("%m"))
		
		if currentMonth == 12 then
			return 1703 -- Christmas [Ornament]
		elseif currentMonth == 10 then
			return table.random({17,1701,1702}) -- Halloween [Normal, Glass, Lollipop]
		elseif currentMonth == 5 and tonumber(os.date("%d")) < 11 then
			return 1704 -- Transformice's Birthday [Shaman]
		elseif currentMonth == 7 then
			return table.random({17,1705,1706}) -- Vacations [Normal, Apple, Watermellon]
		else
			return table.random({17,17,17,1706}) -- Standard
		end
	end,
	-- Spawn Cannon
	newCannon = function()
		local alive = system.players(true)
		if #alive > 0 then
			local player
			repeat
				player = tfm.get.room.playerList[table.random(alive)]
			until not player.isDead
			
			local coordinates = {
				{player.x,math.random() * 700},
				{player.y,math.random() * 300},
				{false,false}
			}
			
			if mode.cannonup.cannon.x ~= 0 then
				coordinates[1][2] = mode.cannonup.cannon.x
				coordinates[3][1] = true
			end
			if mode.cannonup.cannon.y ~= 0 then
				coordinates[2][2] = mode.cannonup.cannon.y
				coordinates[3][2] = true
			end
			
			if not coordinates[3][2] and coordinates[2][2] > coordinates[2][1] then
				coordinates[2][2] = coordinates[2][1] - math.random(100) - 35
			end
			if not coordinates[3][1] and math.abs(coordinates[1][2] - coordinates[1][1]) > 350 then
				coordinates[1][2] = coordinates[1][1] + math.random(-100,100)
			end
			
			local ang = math.deg(math.atan2(coordinates[2][2] - coordinates[2][1],coordinates[1][2] - coordinates[1][1]))
			tfm.exec.addShamanObject(0,coordinates[1][2] - (coordinates[3][1] and 0 or 10),coordinates[2][2] - (coordinates[3][2] and 0 or 10),ang + 90)
			
			system.newTimer(function()
				mode.cannonup.toDespawn[#mode.cannonup.toDespawn + 1] = {tfm.exec.addShamanObject(mode.cannonup.getCannon(),coordinates[1][2],coordinates[2][2],ang - 90,mode.cannonup.cannon.speed),os.time() + 5000}
			end,math.isNegative((mode.cannonup.cannon.speed - 1) * 500,0),false)
		end
	end,
	-- Profile
	uiprofile = function(p,n)
		ui.addTextArea(1,"\n\n<font size='13'>\n" .. string.format(system.getTranslation("profile"),mode.cannonup.info[p].round,mode.cannonup.info[p].victory,mode.cannonup.info[p].death),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
		ui.addTextArea(2,"<p align='center'><font size='20'><VP><B><a href='event:close'>"..p.."</a>",n,305,105,190,30,0x244452,0x1B282E,.4,true)
	end,
	-- Update data
	updatePlayers = function()
		local alive,total = system.players()
		mode.cannonup.alivePlayers = system.players(true)
		mode.cannonup.totalPlayers = total
	end,
	-- Init
	init = function(map)
		if not map then
			mode.cannonup.translations.pt = mode.cannonup.translations.br

			-- Sets the main language according to the community
			if mode.cannonup.translations[tfm.get.room.community] then
				mode.cannonup.langue = tfm.get.room.community
			end
			
			-- Init
			for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","PhysicalConsumables"} do
				tfm.exec["disable"..f]()
			end
			tfm.exec.setRoomMaxPlayers(25)
		end
		tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
	end,
	-- New Player
	eventNewPlayer = function(n)
		if not mode.cannonup.info[n] then
			mode.cannonup.info[n] = {
				round = 0,
				victory = 0,
				death = 0
			}
		end
		
		tfm.exec.chatMessage("<J>" .. system.getTranslation("welcome"),n)
	end,
	-- New Game
	eventNewGame = function()
		ui.setMapName("#CannonUp")
		
		mode.cannonup.cannon = {
			x = 0,
			y = 0,
			time = 3,
			amount = ((mode.cannonup.totalPlayers - (mode.cannonup.totalPlayers % 10)) / 10) + math.min(5,math.max(1,system.miscAttrib+1)),
			speed = 20,
		}

		mode.cannonup.toDespawn = {}
		
		if mode.cannonup.currentXml == -1 then
			mode.cannonup.currentXml = 0
		elseif mode.cannonup.currentXml == -2 then
			mode.cannonup.currentXml = -1
		end
		
		ui.removeTextArea(0,nil)
		if mode.cannonup.isRunning then
			if mode.cannonup.currentXml == 0 then
				tfm.exec.setGameTime(5)
				
				mode.cannonup.currentXml = xml.addAttrib(tfm.get.room.xmlMapInfo.xml or "",{
					[1] = {
						tag = "BH",
						value = "",
					}
				},false)
				ui.addTextArea(0,"",nil,-1500,-1500,3e3,3e3,0x6A7495,0x6A7495,1,true)
				
				mode.cannonup.canMessage = false
			else
				tfm.exec.setGameTime(125)
				mode.cannonup.canMessage = true
				
				if mode.cannonup.totalPlayers > 3 then
					for k,v in next,mode.cannonup.info do
						v.round = v.round + 1
					end
				end
				
				xml.attribFunc(mode.cannonup.currentXml or "",{
					[1] = {
						attribute = "cn",
						func = function(value)
							local coord,axY = xml.getCoordinates(value)
							if type(coord) == "table" then
								mode.cannonup.cannon.x = coord[1].x
								mode.cannonup.cannon.y = coord[1].y
							else
								if axY == 0 then
									mode.cannonup.cannon.x = coord
								else
									mode.cannonup.cannon.y = coord
								end
							end
						end
					},
					[2] = {
						attribute = "cheese",
						func = function()
							table.foreach(tfm.get.room.playerList,tfm.exec.giveCheese)
						end,
					},
					[3] = {
						attribute = "meep",
						func = function()
							table.foreach(tfm.get.room.playerList,tfm.exec.giveMeep)
						end,
					},
				})
			
				mode.cannonup.currentXml = 0
				mode.cannonup.canMessage = true
			end
		else
			tfm.exec.setGameTime(1e7)
			mode.cannonup.currentXml = -1
			mode.cannonup.canMessage = false
		end
	end,
	-- Loop
	eventLoop = function()
		mode.cannonup.updatePlayers()

		if mode.cannonup.isRunning then
			if mode.cannonup.totalPlayers < 2 then
				mode.cannonup.isRunning = false
				mode.cannonup.canMessage = false
				mode.cannonup.currentXml = -2
			else
				if mode.cannonup.currentXml == -1 then
					tfm.exec.newGame(table.random(mode.cannonup.maps))
				elseif mode.cannonup.currentXml ~= 0 then
					tfm.exec.newGame(mode.cannonup.currentXml)
				else		
					if _G.leftTime < 4 or #mode.cannonup.alivePlayers < 2 then
						if mode.cannonup.canMessage and mode.cannonup.totalPlayers > 1  then
							mode.cannonup.canMessage = false
							if #mode.cannonup.alivePlayers > 0 then
								for k,v in next,mode.cannonup.alivePlayers do
									tfm.exec.giveCheese(v)
									tfm.exec.playerVictory(v)
									if mode.cannonup.totalPlayers > 3 then
										mode.cannonup.info[v].victory = mode.cannonup.info[v].victory + 1
									end
									tfm.exec.setPlayerScore(v,5,true)
								end
								
								tfm.exec.chatMessage("<J>" .. table.concat(mode.cannonup.alivePlayers,"<G>, <J>") .. " <J>" .. system.getTranslation("won"))
							else
								tfm.exec.chatMessage("<J>" .. system.getTranslation("nowinner"))
							end
						end
						tfm.exec.newGame(table.random(mode.cannonup.maps))
					else
						if _G.currentTime > 5 and mode.cannonup.currentXml == 0 then
							if _G.currentTime % mode.cannonup.cannon.time == 0 then
								for i = 1,mode.cannonup.cannon.amount do
									mode.cannonup.newCannon()
								end
							end
							
							if #mode.cannonup.toDespawn > 0 then
								for i = 1,#mode.cannonup.toDespawn do
									if os.time() > mode.cannonup.toDespawn[i][2] then
										tfm.exec.removeObject(mode.cannonup.toDespawn[i][1])
									end
								end
							end
							
							if _G.currentTime % 20 == 0 then
								mode.cannonup.cannon.amount = ((mode.cannonup.totalPlayers - (mode.cannonup.totalPlayers % 10)) / 10) + math.min(5,math.max(1,system.miscAttrib+1))
								mode.cannonup.cannon.speed = mode.cannonup.cannon.speed + 20
								mode.cannonup.cannon.time = math.max(.5,mode.cannonup.cannon.time-.5)
							end
						end
					end
				end
			end
		else
			if mode.cannonup.currentXml == -2 then
				tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
			end
		
			if mode.cannonup.totalPlayers > 1 then
				mode.cannonup.isRunning = true
			end
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "p" or p[1] == "profile" then
			if p[2] then
				p[2] = string.nick(p[2])
				if tfm.get.room.playerList[p[2]] then
					mode.cannonup.uiprofile(p[2],n)
				end
			else
				mode.cannonup.uiprofile(n,n)
			end
		end
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			for i = 1,2 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	-- Player Left
	eventPlayerLeft = function()
		mode.cannonup.updatePlayers()
	end,
	-- Player Died
	eventPlayerDied = function(n)
		mode.cannonup.info[n].death = mode.cannonup.info[n].death + 1
	end,
}

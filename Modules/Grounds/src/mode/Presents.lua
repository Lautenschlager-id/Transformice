mode.presents = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "<J>Welcome to <VP><B>#presents</B><J>! Choose a gap according to the gift represented and good luck! You will win if your three-gifts-sequence is correct!\nType !p PlayerName to open the profile of the specified player\n\n<CE>Developed by Bolodefchoco and projected by Ruamorangos",
		
			-- Info
			choose = "Choose a gift before <PT>%s seconds!",
			kill = "Those who are out of the correct gift will be dead!",
			newGame = "New game in <PT>%s seconds!",
			nowinner = "No one won!",
			appear = "You will appear in the next game!",
			
			-- Simple words
			rival = "Rivals",
			won = "won!",
			
			-- Profile
			profile = "Rounds <BL>: <V>%s\n<J>Gifts <BL>: <V>%s\n\n<J>Victories <BL>: <V>%s",
		},
		br = {
			welcome = "<J>Bem-vindo ao <VP><B>#presents</B><J>! Escolha um buraco de acordo com o presente representado e boa sorte! Você ganhará se sua sequência nos três presentes estiver correta!\nDigite !p Jogador para abrir o perfil o jogador especificado\n\n<CE>Desenvolvido por Bolodefchoco, pedido por Ruamorangos",
		
			choose = "Escolha um presente antes de <PT>%s segundos!",
			kill = "Aqueles que estão fora do presente correto serão mortos!",
			newGame = "Novo jogo em <PT>%s segundos!",
			nowinner = "Ninguém ganhou!",
			appear = "Você irá aparecer no próximo jogo!",
			
			rival = "Rivais",
			won = "venceu!",

			profile = "Partidas <BL>: <V>%s\n<J>Presents <BL>: <V>%s\n\n<J>Vitórias <BL>: <V>%s",
		},
	},
	langue = "en",
	-- Data
	info = {},
	-- System
	isRunning = false,
	gifts = {},
	-- Timers
	chooseTimer = 15,
	blockTimer = 0,
	newMapTimer = 0,
	currentGift = 1,
	-- Map
	generateMap = function()
		mode.presents.isRunning = true
		mode.presents.gifts = {
			[1] = table.random({2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101}),
			[2] = table.random({2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104}),
			[3] = table.random({2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102})
		}
		
		tfm.exec.newGame('<C><P DS="m;250,120,400,120,550,120" D="x_transformice/x_inventaire/'..mode.presents.gifts[1]..'.jpg,230,60;x_transformice/x_inventaire/'..mode.presents.gifts[2]..'.jpg,380,60;x_transformice/x_inventaire/'..mode.presents.gifts[3]..'.jpg,530,60;x_transformice/x_inventaire/2100.jpg,140,320;x_transformice/x_inventaire/2101.jpg,260,320;x_transformice/x_inventaire/2102.jpg,380,320;x_transformice/x_inventaire/2103.jpg,500,320;x_transformice/x_inventaire/2104.jpg,620,320" /><Z><S><S P="1,0.0001,20,0.2,90,1,0,0" H="700" L="15" X="400" c="3" Y="161" T="4" /><S X="100" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="220" c="3" Y="335" T="4" /><S X="340" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="460" c="3" Y="335" T="4" /><S X="580" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="40" P="0,0,0.3,0.2,0,0,0,0" L="40" X="100" c="3" Y="160" T="0" /><S X="700" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="550" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="250" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S H="20" P="0,0,0.3,0.2,0,0,0,0" L="800" X="400" Y="10" T="0" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="700" c="3" Y="335" T="4" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="800" H="100" c="3" Y="415" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" H="10" L="50" o="324650" X="745" c="3" Y="138" T="13" /><S X="55" P="0,0,0.3,0.2,0,0,0,0" L="50" o="324650" H="10" c="3" Y="138" T="13" /><S P="0,0,0.3,0.2,0,0,0,0" H="140" L="100" o="324650" X="55" c="3" Y="72" T="12" /><S X="745" P="0,0,0.3,0.2,0,0,0,0" L="100" o="324650" H="140" c="3" Y="72" T="12" /><S P="0,0,0,0,0,0,0,0" H="102" L="581" o="6a7495" X="401" c="4" v="3001" Y="78" T="12" /></S><D /><O /><L><JR M2="10" M1="0" /></L></Z></C>')
	end,
	-- Kill wrong gaps
	killOutOfRange = function()
		local gift = mode.presents.gifts[mode.presents.currentGift] - 2099
		for k,v in next,tfm.get.room.playerList do
			if not v.isDead then
				if v.x >= (gift * 120) and v.x <= (gift * 120 + 80) and v.y > 267 then
					mode.presents.info[k].gifts = mode.presents.info[k].gifts + 1
					tfm.exec.setPlayerScore(k,1,true)
				else
					tfm.exec.killPlayer(k)
				end
			end
		end
	end,
	-- Victory
	victory = function(noone)
		if noone then
			tfm.exec.chatMessage("<J>" .. system.getTranslation("nowinner"))
			mode.presents.chooseTimer = 0
			mode.presents.blockTimer = 0
		else
			tfm.exec.chatMessage("<S>" .. table.concat(system.players(true),"<J>, <S>",function(k,v)
				mode.presents.info[v].victories = mode.presents.info[v].victories + 1
				return v
			end) .. " <J>" .. system.getTranslation("won"))
		end
		mode.presents.newMapTimer = 10.5
	end,
	-- Init
	init = function()
		mode.presents.translations.pt = mode.presents.translations.br

		-- Sets the main language according to the community
		if mode.presents.translations[tfm.get.room.community] then
			mode.presents.langue = tfm.get.room.community
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoNewGame","AutoScore","AfkDeath","MortCommand","DebugCommand","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end	
		tfm.exec.setRoomMaxPlayers(30)

		mode.presents.generateMap()
	end,
	-- New Player
	eventNewPlayer = function(n)
		if not mode.presents.info[n] then
			mode.presents.info[n] = {
				rounds = 0,
				gifts = 0,
				victories = 0,
			}
		end
		
		tfm.exec.chatMessage(system.getTranslation("welcome"),n)
		
		if mode.presents.isRunning then
			local m = "<PT>" .. system.getTranslation("appear")
			ui.addTextArea(0,"<p align='center'><font size='20'><VP>" .. m,n,216,65,365,35,1,1,1,true)
			tfm.exec.chatMessage(m,n)
		else
			tfm.exec.respawnPlayer(n)
		end
	end,
	-- New Game
	eventNewGame = function()
		if mode.presents.isRunning then
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
			mode.presents.chooseTimer = 15
			mode.presents.blockTimer = 0
			mode.presents.newMapTimer = 0
			mode.presents.currentGift = 1
			for k,v in next,mode.presents.info do
				v.rounds = v.rounds + 1
			end
		end
	end,
	-- Loop
	eventLoop = function()
		local mapName = "<N>" .. system.getTranslation("rival") .." : <V>" .. math.isNegative(system.players()-1,0)
		if _G.currentTime > 4 and mode.presents.isRunning then
			if mode.presents.chooseTimer > 0 then
				mode.presents.chooseTimer = mode.presents.chooseTimer - .5
				
				if mode.presents.chooseTimer <= 0 then
					mode.presents.blockTimer = 5
					tfm.exec.addPhysicObject(4,400,270,{
						type = 4,
						height = 10,
						width = 640,
						miceCollision = true,
						groundCollision = false
					})
					tfm.exec.removePhysicObject(mode.presents.currentGift)
				else
					mapName = mapName .. "   <G>|   <J>" .. string.format(system.getTranslation("choose"),math.floor(mode.presents.chooseTimer).."<J>")
				end
				
				if system.players() == 0 then
					mode.presents.victory(true)
				end
			end
			
			if mode.presents.blockTimer > 0 then
				mode.presents.blockTimer = mode.presents.blockTimer - .5
				
				if mode.presents.blockTimer == 2 then
					mode.presents.killOutOfRange()
				end
				
				if mode.presents.blockTimer <= 0 then
					mode.presents.currentGift = mode.presents.currentGift + 1
					if mode.presents.currentGift > 3 then
						mode.presents.victory()
					else
						tfm.exec.removePhysicObject(4)
						mode.presents.chooseTimer = 15
					end
				else
					mapName = mapName .. "   <G>|   <R>" .. system.getTranslation("kill")
				end
			end
			
			if mode.presents.newMapTimer > 0 then
				mode.presents.newMapTimer = mode.presents.newMapTimer - .5
				
				mapName = "<PS>" .. string.format(system.getTranslation("newGame"),math.floor(mode.presents.newMapTimer) .. "<PS>")
				if mode.presents.newMapTimer <= 0 then
					mode.presents.generateMap()
				end
			end
		end
		ui.setMapName(mapName .. "<")
	end,
	-- Commands
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "p" then
			p[2] = p[2] and string.nick(p[2]) or n
			if mode.presents.info[p[2]] then
				ui.addTextArea(1,"<p align='center'><font size='18'><a:active><a href='event:close'>"..p[2].."</a><p align='left'><font size='13'>\n<J>" .. string.format(system.getTranslation("profile"),mode.presents.info[p[2]].rounds,mode.presents.info[p[2]].gifts,mode.presents.info[p[2]].victories),n,5,30,790,100,1,1,.8,true)
			end
		end
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			ui.removeTextArea(1,n)
		end
	end,
}

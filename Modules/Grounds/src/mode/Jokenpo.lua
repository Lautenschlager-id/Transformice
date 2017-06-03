mode.jokenpo = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "Welcome to <ROSE>#Jokenpo<CE>! Choose a chair, press space and start playing!\n\tReport any issue to Bolodefchoco",
			
			-- Simple words
			round = "Round",
			players = "Players",
			won = "won the round!",
			tie = "Tie!",
			victory = "won the game!",
			
			-- Info
			guide = "Press\n\t<PS>»</PS> %s<PT> - Rock</PT>\n\t<PS>»</PS> %s<PT> - Paper</PT>\n\t<PS>»</PS> %s<PT> - Scissor (Pufferfish)</PT>",
			
			-- Game
			items = {"Rock","Paper","Scissor"},
			selected = "You've selected the item %s!",
		},
		br = {
			welcome = "Bem-vindo ao <ROSE>#Jokenpo<CE>! Escolha uma cadeira, aperte espaço e comece a jogar!\n\tReporte qualquer problema para Bolodefchoco",
		
			round = "Partida",
			players = "Jogadores",
			won = "venceu a partida!",
			tie = "Empate!",
			victory = "ganhou!",
			
			guide = "Pressione\n\t<PS>»</PS> %s<PT> - Pedra</PT>\n\t<PS>»</PS> %s<PT> - Papel</PT>\n\t<PS>»</PS> %s<PT> - Tesoura (Baiacu)</PT>",
			
			items = {"Pedra","Papel","Tesoura"},
			selected = "Você selecionou o item %s!",
		},
	},
	langue = "en",
	-- Maps
	maps = {5198315,4093087},
	buildSquares = function(c)
		tfm.exec.removePhysicObject(1)
		for k,v in next,{{346,224},{454,224},{400,105}} do
			for i = 1,4 do
				local x = i == 1 and v[1] + 28 or i == 2 and v[1] - 28 or v[1]
				local y = i == 3 and v[2] + 28 or i == 4 and v[2] - 28 or v[2]
				
				local w = x == v[1] and 46 or 10
				local h = w == 10 and 66 or 10
				
				tfm.exec.addPhysicObject(i..k,x,y,{
					type = 12,
					color = c[k],
					width = w,
					height = h,
				})
			end
		end
	end,
	-- New Round Settings
	playing = false,
	players = {},
	colors = {0xE3454D,0x4577E3,0x45E374},
	timer = 9.5,
	partialTimer = 0,
	tie = 0,
	round = 0,
	roundsPerGame = 5,
	-- Game settings
	objects = {
		85,
		95,
		65,
	},
	-- Emotes
	emote = {
		sit = 8,
		victory = 24,
		fail = 5,
		tie = 4,
		no = 2
	},
	-- Battle
	decision = function()
		for i = 1,2 do
			mode.jokenpo.players[i].obj = mode.jokenpo.players[i].obj ~= 0 and mode.jokenpo.players[i].obj or false
			if mode.jokenpo.players[i].obj then
				mode.jokenpo.players[i].remId = tfm.exec.addShamanObject(mode.jokenpo.objects[mode.jokenpo.players[i].obj],({350,455})[i],200)
			end
		end

		local winner = ((mode.jokenpo.players[1].obj and mode.jokenpo.players[2].obj) and ((3 + mode.jokenpo.players[1].obj - mode.jokenpo.players[2].obj) % 3) or mode.jokenpo.players[1].obj and 1 or mode.jokenpo.players[2].obj and 2 or 0)
		
		if winner == 0 then
			mode.jokenpo.tie = mode.jokenpo.tie + 1
			tfm.exec.chatMessage("<CE>[•] <J>" .. system.getTranslation("tie"))
			
			for k,v in next,mode.jokenpo.players do
				tfm.exec.playEmote(v.name,mode.jokenpo.emote.tie)
			end
		else
			mode.jokenpo.players[winner].score = mode.jokenpo.players[winner].score + 1
			tfm.exec.playEmote(mode.jokenpo.players[winner].name,mode.jokenpo.emote.victory)
			
			local looser = (winner == 1 and 2 or 1)
			local looserEmote = mode.jokenpo.emote.fail
			if not mode.jokenpo.players[looser].obj then
				looserEmote = mode.jokenpo.emote.no
			end
			tfm.exec.playEmote(mode.jokenpo.players[looser].name,looserEmote)

			tfm.exec.chatMessage("<CE>[•] " .. mode.jokenpo.players[winner].color .. mode.jokenpo.players[winner].name .. " " .. system.getTranslation("won"))
		end
		
		ui.addTextArea(5,string.format("<font size='50'><p align='center'>%s%d <PT>| <J>%d <PT>| %s%s",mode.jokenpo.players[1].color,mode.jokenpo.players[1].score,mode.jokenpo.tie,mode.jokenpo.players[2].color,mode.jokenpo.players[2].score),nil,5,270,795,nil,1,1,0,true)
	end,
	-- Partial Next Round
	pNextRound = function()
		mode.jokenpo.playing = false
		mode.jokenpo.timer = 9.5
		mode.jokenpo.partialTimer = 3.5
		mode.jokenpo.decision()
		if mode.jokenpo.round == mode.jokenpo.roundsPerGame then
			table.sort(mode.jokenpo.players,function(p1,p2) return p1.score > p2.score end)
			if mode.jokenpo.tie > mode.jokenpo.players[1].score then
				tfm.exec.chatMessage("<CE>[•] " .. system.getTranslation("tie"))
			else
				tfm.exec.chatMessage("<CE>[•] " .. mode.jokenpo.players[1].color .. mode.jokenpo.players[1].name .. " " .. system.getTranslation("victory"))
			end
		end
	end,
	-- Next Round
	nextRound = function()
		for i = 1,2 do
			if mode.jokenpo.players[i].remId then
				tfm.exec.removeObject(mode.jokenpo.players[i].remId)
			end
			mode.jokenpo.players[i].remId = nil
			mode.jokenpo.players[i].obj = 0
		end
		ui.removeTextArea(5,nil)
		mode.jokenpo.partialTimer = 0
		if mode.jokenpo.roundsPerGame > mode.jokenpo.round then
			mode.jokenpo.playing = true
			mode.jokenpo.round = mode.jokenpo.round + 1
		else
			mode.jokenpo.playing = false
			mode.jokenpo.round = 0
			mode.jokenpo.tie = 0
			mode.jokenpo.timer = 9.5
			mode.jokenpo.partialTimer = 0
			mode.jokenpo.players = {}
			tfm.exec.newGame(table.random(mode.jokenpo.maps))
			for i = 2,3 do
				ui.removeTextArea(i,nil)
			end
		end
		mode.jokenpo.uiinfo()
	end,
	-- Display names
	displayNames = function()
		if #mode.jokenpo.players == 0 then
			return ""
		else
			return "   <G>|   <N>" .. system.getTranslation("players") .. " : " .. table.concat(mode.jokenpo.players," <V>- ",function(k,v)
				tfm.exec.setNameColor(v.name,mode.jokenpo.colors[v.id])
				return v.color .. v.name
			end)
		end
	end,
	-- Info textareas
	uiinfo = function()
		ui.addTextArea(0,"<p align='center'><font size='35'><J>"..math.floor(mode.jokenpo.timer),nil,380,85,40,40,1,1,0,true)
		ui.addTextArea(1,"<p align='center'><font size='25'><J><B>X</B><font size='13'>\n"..string.format("%02d",mode.jokenpo.tie),nil,380,207,40,nil,1,1,0,true)
		
		for k,v in next,mode.jokenpo.players do
			ui.addTextArea(v.id + 1,"<p align='center'>"..v.name.."\n"..string.format("%02d",v.score),nil,v.x,165,105,nil,1,1,0,true)
		end
		
		ui.setMapName("<PT>#Jokenpo   <G>|   <N>" .. system.getTranslation("round") .. " : <V>" .. mode.jokenpo.round .. mode.jokenpo.displayNames() .. "<")
	end,
	-- Init
	init = function()
		mode.jokenpo.translations.pt = mode.jokenpo.translations.br
	
		-- Sets the main language according to the community
		if mode.jokenpo.translations[tfm.get.room.community] then
			mode.jokenpo.langue = tfm.get.room.community
		end
		
		-- Sets the rounds per game
		mode.jokenpo.roundsPerGame = math.max(5,system.miscAttrib)
		
		-- Init
		for _,f in next,{"AutoShaman","AutoNewGame","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)
		tfm.exec.setRoomMaxPlayers(20)

		tfm.exec.newGame(table.random(mode.jokenpo.maps))
	end,
	-- New Player
	eventNewPlayer = function(n)
		tfm.exec.chatMessage("<CE>[•] " .. system.getTranslation("welcome"),n)
	
		for k,v in next,{32,string.byte("BNM",1,3)} do
			system.bindKeyboard(n,v,true,true)
		end
		
		if mode.jokenpo.playing then
			mode.jokenpo.round = mode.jokenpo.round + 1
		else
			tfm.exec.respawnPlayer(n)
		end
		
		mode.jokenpo.buildSquares(mode.jokenpo.colors)
		mode.jokenpo.uiinfo()
	end,
	-- New Game
	eventNewGame = function()
		if mode.jokenpo.playing then
			for k,v in next,tfm.get.room.playerList do
				if not table.find(mode.jokenpo.players,k,"name") then
					tfm.exec.killPlayer(k)
				end
			end
		end
	
		mode.jokenpo.colors = {0xE3454D,0x4577E3,0x45E374}	
		xml.attribFunc(tfm.get.room.xmlMapInfo.xml or "",{
			[1] = {
				attribute = "o",
				func = function(color)
					local c = string.split(color,"[^,]+",function(o)
						return string.match(o,"#?(.+)")
					end)
					
					for i = 1,#c do
						mode.jokenpo.colors[i] = tonumber(c[i],16)
					end
				end
			}
		})
		
		mode.jokenpo.buildSquares(mode.jokenpo.colors)
		mode.jokenpo.uiinfo()
	end,
	-- Keyboard
	eventKeyboard = function(n,k,d,x,y)
		if k == 32 and #mode.jokenpo.players < 2 then
			for k,v in next,{{285,330,270},{515,330,425}} do
				if math.pythag(v[1],v[2],x,y,30) then
					if not table.find(mode.jokenpo.players,n,"name") then
						if not table.find(mode.jokenpo.players,k,"id") then
							mode.jokenpo.players[#mode.jokenpo.players + 1] = {
								name = n,
								x = v[3],
								score = 0,
								color = string.format("<font color='#%s'>",string.format("%x",mode.jokenpo.colors[k])),
								id = k,
								obj = 0,
								remId = nil,
							}
							
							tfm.exec.chatMessage("<CE>[•] " .. mode.jokenpo.players[#mode.jokenpo.players].color .. string.format(system.getTranslation("guide"),"B","N","M"),n)
							
							mode.jokenpo.uiinfo()
							tfm.exec.playEmote(n,mode.jokenpo.emote.sit)
						end
					end
				end
			end
			
			if #mode.jokenpo.players == 2 then
				table.sort(mode.jokenpo.players,function(p1,p2) return p1.id < p2.id end)
				mode.jokenpo.playing = true
			end
		else
			if mode.jokenpo.playing then
				local foundObject,objectIndex = table.find({string.byte("BNM",1,3)},k)
				if foundObject then	
					local found,i = table.find(mode.jokenpo.players,n,"name")
					if found then
						i = mode.jokenpo.players[i]
						if i.obj == 0 then
							i.obj = objectIndex

							tfm.exec.chatMessage("<CE>[•] " .. i.color .. string.format(system.getTranslation("selected"),system.getTranslation("items")[objectIndex]),n)
						end
					end
				end
			end
		end
	end,
	-- Loop
	eventLoop = function()
		if mode.jokenpo.playing then
			if mode.jokenpo.timer > 0 then
				mode.jokenpo.timer = mode.jokenpo.timer - .5
				ui.addTextArea(0,"<p align='center'><font size='35'><J>"..math.floor(mode.jokenpo.timer),nil,380,85,40,40,1,1,0,true)
				for i = 1,2 do
					tfm.exec.movePlayer(mode.jokenpo.players[i].name,({285,515})[i],330)
					tfm.exec.playEmote(mode.jokenpo.players[i].name,26)
				end
			else
				mode.jokenpo.pNextRound()
			end
		else
			if mode.jokenpo.partialTimer > 0 then
				mode.jokenpo.partialTimer = mode.jokenpo.partialTimer - .5
				ui.addTextArea(0,"<p align='center'><font size='35'><PT>"..math.floor(mode.jokenpo.partialTimer),nil,380,85,40,40,1,1,0,true)
				
				if mode.jokenpo.partialTimer <= 0 then
					mode.jokenpo.nextRound()
				end
			end
		end
	end,
	-- Player Left
	eventPlayerLeft = function(n)
		if table.find(mode.jokenpo.players,n,"name") then
			mode.jokenpo.round = mode.jokenpo.roundsPerGame
			mode.jokenpo.nextRound()
		end
	end,
}

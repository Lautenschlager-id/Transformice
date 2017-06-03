mode.click = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "<BV>Welcome to <CH><B>#click</B><BV>!\n\t» Type <B>!p Playername</B> to open the profile of the player\n\t» Report any issue to <B>Bolodefchoco</B>",
		
			-- Info
			newGame = "New game in %s seconds!",
			clickfast = "Click several times in the circle before %s seconds!",
			
			-- Simple words
			click = "CLICK!",
			won = "won!",
			
			-- Profile
			profile = "Total clicks <BL>: <V>%s\n<J>High Score <BL>: <V>%s\n\n<J>Victories <BL>: <V>%s",
		},
		br = {
			welcome = "<BV>Bem-vindo ao <CH><B>#click</B><BV>!\n\t\n\t» Digite <B>!p Jogador</B> para abrir o perfil do jogador\n\t» Reporte qualquer problema para <B>Bolodefchoco</B>",
			
			newGame = "Novo jogo em %s segundos!",
			clickfast = "Clique várias vezes no círculo antes de %s segundos!",
			
			click = "CLIQUE!",
			won = "venceu!",
			
			profile = "Cliques totais <BL>: <V>%s\n<J>Maior pontuação <BL>: <V>%s\n\n<J>Vitórias <BL>: <V>%s",
		},
	},
	langue = "en",
	-- Data
	info = {},
	-- System
	circle = {
		id = 0,
		status = false
	},
	spawnCircle = function(on)
		if mode.click.circle.id > 0 then
			tfm.exec.removeJoint(mode.click.circle)
		end
		
		mode.click.circle = {id = 1,status = on}
		
		local color = on and 0x53D08B or 0x555D77
		
		tfm.exec.addJoint(1,0,0,{
			type = 0,
			alpha = .9,
			color = color,
			foreground = false,
			line = 300,
			point1 = "400,200",
			point2 = "400,201"
		})
	end,
	-- Timers
	partialTimer = 1,
	counter = 0,
	-- Ranking
	uileaderboard = function()
		local data = {}
		for k,v in next,mode.click.info do
			if v.canPlay and v.roundClick > 0 then
				data[#data + 1] = {k,v.roundClick}
			end
			
			if v.highScore < v.roundClick then
				v.highScore = v.roundClick
			end
			v.totalClick = v.totalClick + v.roundClick
			v.roundClick = 0
		end
		
		table.sort(data,function(p1,p2) return p1[2] > p2[2] end)
		
		local str = ""
		for k,v in next,data do
			if k < 51 then
				if k == 1 then
					mode.click.info[v[1]].victories = mode.click.info[v[1]].victories + 1
					tfm.exec.chatMessage("<J>" .. v[1] .. " <G>" .. system.getTranslation("won"))
					tfm.exec.setPlayerScore(v[1],1,true)
				end
				
				str = str .. string.format("<J>%s. <V>%s <BL>- <PT>%sP\n",k,v[1],v[2])
			end
		end
		
		ui.addTextArea(1,str,nil,5,30,250,330,1,1,.9,true)
	end,
	-- Init
	init = function()
		mode.click.translations.pt = mode.click.translations.br

		-- Sets the main language according to the community
		if mode.click.translations[tfm.get.room.community] then
			mode.click.langue = tfm.get.room.community
		end
		
		-- Init
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AfkDeath"} do
			tfm.exec["disable"..f]()
		end

		tfm.exec.newGame(5993911)
	end,
	-- New Player
	eventNewPlayer = function(n)
		system.bindMouse(n,true)
		if not mode.click.info[n] then
			mode.click.info[n] = {
				canPlay = false,
				totalClick = 0,
				roundClick = 0,
				highScore = 0,
				victories = 0,
			}
		end
		if not mode.click.circle.status then
			tfm.exec.respawnPlayer(n)
			mode.click.info[n].canPlay = true
		end
		tfm.exec.chatMessage(system.getTranslation("welcome"),n)
	end,
	-- New Game
	eventNewGame = function()
		mode.click.spawnCircle(false)
		mode.click.partialTimer = 10.5
	end,
	-- Loop
	eventLoop = function()
		if mode.click.partialTimer > 0 then
			mode.click.partialTimer = mode.click.partialTimer - .5
			ui.setMapName(string.format(system.getTranslation("newGame"),"<ROSE>"..math.floor(mode.click.partialTimer).."<J>") .. "<")
			if mode.click.partialTimer <= 0 then
				mode.click.spawnCircle(true)
				
				mode.click.counter = math.max(20,system.miscAttrib)
				
				for k,v in next,mode.click.info do
					v.canPlay = true
					tfm.exec.respawnPlayer(k)
				end
				
				ui.removeTextArea(1,nil)
				ui.setMapName(system.getTranslation("click") .. "<")
			end
		else
			if mode.click.counter > 0 then
				mode.click.counter = mode.click.counter - .5
				ui.addTextArea(0,"<p align='center'><font size='28'>" .. string.format(system.getTranslation("clickfast"),math.floor(mode.click.counter)),nil,0,30,800,50,1,1,0,true)
				if mode.click.counter <= 0 then
					mode.click.spawnCircle(false)

					mode.click.partialTimer = 10.5

					ui.removeTextArea(0,nil)
					mode.click.uileaderboard()
				end
			end
		end
	end,
	-- Mouse
	eventMouse = function(n,x,y)
		if mode.click.circle.status then
			if mode.click.info[n].canPlay then
				if math.pythag(400,200,x,y,150) then
					mode.click.info[n].roundClick = mode.click.info[n].roundClick + 1
					tfm.exec.displayParticle(15,math.random(150,650),math.random(100,300),0,0,0,0,n)
				end
			end
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "p" then
			p[2] = p[2] and string.nick(p[2]) or n
			if mode.click.info[p[2]] then
				ui.addTextArea(2,"<p align='center'><font size='18'><a:active><a href='event:close'>"..p[2].."</a><p align='left'><font size='13'>\n<J>" .. string.format(system.getTranslation("profile"),mode.click.info[p[2]].totalClick,mode.click.info[p[2]].highScore,mode.click.info[p[2]].victories),n,620,295,175,100,1,1,1,true)
			end
		end
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			ui.removeTextArea(2,n)
		end
	end,
	-- Respawn
	eventPlayerDied = function(n)
		tfm.exec.respawnPlayer(n)
	end,
	-- Player Left
	eventPlayerLeft = function(n)
		mode.click.info[n].canPlay = false
	end,
}

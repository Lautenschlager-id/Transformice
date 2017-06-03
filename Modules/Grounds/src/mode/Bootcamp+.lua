mode.bootcampP = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "Welcome to <B>#Bootcamp+</B>! Type !info to check the commands\n\tReport any issue to Bolodefchoco!",
			
			-- Info
			info = "Checkpoint:\n\tIf the checkpoint system is enabled, press <B>E</B> to put a checkpoint and <B>Shift+E</B> to remove it.\nAdmin\n\tIf you are a room admin, there are some commands that you can execute:\n\tMaps\n\t\t!next <V>--> Pass the map</V>\n\t\t!again <V>--> Resets the current map</V>\n\t\t!np @Code <VP>or</VP> !map @Code <V>--> Loads a map</V>\n\t\t!queue clear <V>--> Clear the map queue</V>\n\t\t!queue add @Code <V>--> Adds a map in the map queue</V>\n\t\t!queue P3 <VP>or</VP> P13 <VP>or</VP> P23 <V>--> Adds the whole official rotation of P3 or P13 or P23 in the map queue</V>\n\tTime\n\t\t!time TimeInMinutes <V>--> Set the time of the current round in TimeInMinutes</V>\n\t\t!standtime TimeInMinutes <V>--> Set the time of all the rounds in TimeInMinutes</V>\n\tOthers\n\t\t<B>Shift+Click</B> in a ground to read its properties\n\t\t!checkpoint <V>--> Enables/Disables the checkpoint system</V>\n\t\tKey Delete <V>--> Kills you</V>",
			skip = "<VP>%s</VP> just skipped the map!",
			restart = "<VP>%s</VP> just restarted the current map!",
			loadmap = "<VP>%s</VP> just loaded the map %s!",
			settime = "The time has been set to %s minutes!",
			setstandtime = "The standard time of all the rounds has been set to %s minutes!",
			enabled = "enabled! Press <B>E</B> to put a checkpoint and <B>Shift+E</B> to remove it.",
			
			-- Simple words
			disabled = "disabled!",
		},
		br = {
			welcome = "Bem-vindo ao <B>#Bootcamp+</B>! Digite !info para checar os comandos\n\tReporte quaisquer problemas para Bolodefchoco!",
			
			info = "Checkpoint:\n\tSe o sistema de checkpoint está ativado, pressione <B>E</B> para marcar um checkpoint e <B>Shift+E</B> para remove-lo.\nAdmin\n\tSe você é um administrador da sala, há alguns comandos que você pode executar:\n\tMapas\n\t\t!next <V>--> Passa o mapa</V>\n\t\t!again <V>--> Reinicia o mapa atual</V>\n\t\t!np @Código <VP>ou</VP> !map @Código <V>--> Carrega um mapa</V>\n\t\t!queue clear <V>--> Limpa a lista de mapas</V>\n\t\t!queue add @Código <V>--> Adiciona um mapa na lista de mapas</V>\n\t\t!queue P3 <VP>ou</VP> P13 <VP>ou</VP> P23 <V>--> Adiciona a rotação inteira de P3 ou P13 ou P23 na lista de mapas</V>\n\tTempo\n\t\t!time TempoEmMinutos <V>--> Define o tempo do mapa atual em TempoEmMinutos</V>\n\t\t!standtime TempoEmMinutos <V>--> Define o tempo de todas as partidas em TempoEmMinutos</V>\n\tOutros\n\t\t<B>Shift+Click</B> sobre um piso para ler suas propriedades\n\t\t!checkpoint <V>--> Ativa/Desativa o sistema de checkpoint</V>\n\t\tTecla Delete <V>--> Mata-o</V>",
			skip = "<VP>%s</VP> acabou de passar o mapa!",
			restart = "<VP>%s</VP> acabou de reiniciar o mapa atual!",
			loadmap = "<VP>%s</VP> acabou de carregar o mapa %s!",
			settime = "O tempo foi definido para %s minutos!",
			setstandtime = "O tempo padrão para todas as partidas foram definidas para %s minutos!",
			enabled = "ativado! Pressione <B>E</B> para marcar um checkpoint e <B>Shift+E</B> para remove-lo.",
			
			disabled = "desativado!",
		},
		pl = {
			welcome = "Witaj w <B>#Bootcamp+</B>! Wpisz !info na czacie aby sprawdzić jakie są komendy\n\tZgłaszaj wszelkie błędy do Bolodefchoco!",
	
			info = "Checkpoint:\n\tJeżeli system checkpointów jest włączony, kliknij <B>E</B>, aby ustawić checkpoint i <B>Shift+E</B>, aby go usunąć.\nAdmin\n\tJeżeli jesteś administratorem pokoju, jest kilka komend, które możesz użyć:\n\tMapy\n\t\t!next <V>--> Przełącza mapę</V>\n\t\t!again <V>--> Restartuje mapę</V>\n\t\t!np @Code <VP>albo</VP> !map @Code <V>--> Ładuje mapę</V>\n\t\t!queue clear <V>--> Czyści kolejkę map</V>\n\t\t!queue add @Code <V>--> Dodaję mapę do kolejki</V>\n\t\t!queue P3 <VP>albo</VP> P13 <VP>albo</VP> P23 <V>--> Dodaje wszystkie oficjalne rotacje z permów P3 albo P13 albo P23 do kolejki map</V>\n\tCzas\n\t\t!time CzasWMinutach <V>--> Ustawia czas obecnej mapy na CzasWMinutach</V>\n\t\t!standtime CzasWMinutach <V>--> Ustawia czas dla wszystkich rund na CzasWMinutach</V>\n\tInne\n\t\t<B>Shift+Click</B> na gruncie aby przeczytać jego właściwości\n\t\t!checkpoint <V>--> Włącza/Wyłącza system checkpointów</V>\n\t\tKey Delete <V>--> Kills you</V>",
			skip = "<VP>%s</VP> pominął/-ęła mapę!",
			restart = "<VP>%s</VP> zrestartował/-a mapę!",
			loadmap = "<VP>%s</VP> załadował/-a mapę %s!",
			settime = "Czas został ustawiony na %s minut!",
			setstandtime = "Standardowy czas dla wszystkich map został ustawiony na %s minut!",
			enabled = "włączony! Kliknij <B>E</B>, aby ustawić checkpoint i <B>Shift+E</B>, aby go usunąć.",
			
			disabled = "wyłączony!",
		},
	},
	langue = "en",
	-- Data
	info = {},
	-- Maps
	maps = {},
	map = function()
		mode.bootcampP.maps = {6501305,6118143,2604997,2836937,6921682,3339586,5776126,5678468,5731571,6531399,6794559,5847160,5745650,7091808,7000003,6999993,4559999,4559344,4784241,3883780,4976520,4854044,6374076,3636206,3883883,6793803,4499335,4694197,5485847,6258690,938895,1719709,4209243,6550335,5994088,3866650,3999455,4095418,4523127,1964971,1554670,4423047,764650,6079942,556223,4883346,2978216,1947288,7025830,6822222,7096798,7108857,4766627,5888889,6782978,7035277,7151255,5699275,6422459,2634659,4808290,3620953,2973289,2604643,6591698,7134487,7054821,6928736,6930231,6900009,7159725,3737744,6933187,6864581,6807369,4701337,5277821,263226,6631702,6761156,4212122,7035055,6654599,4160675,4623227,5191670}
	end,
	-- New Game Settings
	groundsData = {},
	mapData = {},
	standardTime = 6,
	checkpoint = false,
	-- Leaderboard
	rank = function(players,fromValue,showPos,showPoints,pointsName,lim)
		local p,rank = {},""
		fromValue,lim = fromValue or {tfm.get.room.playerList,"score"},tonumber(lim) or 100
		for n in next,players do
			p[#p+1] = {name=n,v=fromValue[1][n][fromValue[2]]}
		end
		table.sort(p,function(f,s) return f.v>s.v end)
		for o,n in next,p do
			if o <= lim then
				rank = rank .. (showPos and "<J>"..o..". " or "") .. "<V>" .. n.name .. (showPoints and " <BL>- <VP>" .. n.v .. " "..(pointsName or "points") .."\n" or "\n")
			end
		end
		return rank
	end,
	-- Init
	init = function()
		mode.bootcampP.translations.pt = mode.bootcampP.translations.br
		mode.bootcampP.langue = mode.bootcampP.translations[tfm.get.room.community] and tfm.get.room.community or "en"

		for _,f in next,{"AutoShaman","AutoScore","AutoTimeLeft","AutoNewGame","PhysicalConsumables","AfkDeath"} do
			tfm.exec["disable"..f]()
		end
		tfm.exec.setAutoMapFlipMode(false)

		mode.bootcampP.map()
		tfm.exec.newGame(mode.bootcampP.maps[math.random(#mode.bootcampP.maps)])
	end,
	-- New Game
	eventNewGame = function()
		tfm.exec.setGameTime(mode.bootcampP.standardTime * 60)
		mode.bootcampP.groundsData = {}
		mode.bootcampP.mapData = {}
		for k,v in next,mode.bootcampP.info do
			v.cheese = false
			v.checkpoint = {false,0,0}
			ui.removeTextArea(1,n)
		end
		
		local xml = tfm.get.room.xmlMapInfo.xml
		if xml then
			local grounds = string.match(xml,"<S>(.-)</S>")
			local properties = string.match(xml,"<C><P (.-)/>.*<Z>")
			if properties then
				mode.bootcampP.mapData = {
					width = string.match(properties,'L="(%d+)"') or 800,
					heigth = string.match(properties,'H="(%d+)"') or 400,
				}
			else
				mode.bootcampP.mapData = {
					width = 800,
					heigth = 400,
				}
			end

			local data = {}
			string.gsub(grounds,"<S (.-)/>",function(attributes)
				data[#data + 1] = attributes
			end)
			for i = 1,#data do
				mode.bootcampP.groundsData[i] = {}
				
				local type = string.match(data[i],'T="(%d+)"')
				mode.bootcampP.groundsData[i].type = type and tonumber(type) or -1

				local x = string.match(data[i],'X="(%d+)"')
				mode.bootcampP.groundsData[i].x = x and tonumber(x) or 0

				local y = string.match(data[i],'Y="(%d+)"')
				mode.bootcampP.groundsData[i].y = y and tonumber(y) or 0

				local width = string.match(data[i],'L="(%d+)"')
				mode.bootcampP.groundsData[i].width = width and tonumber(width) or 0

				local heigth = string.match(data[i],'H="(%d+)"')
				mode.bootcampP.groundsData[i].heigth = heigth and tonumber(heigth) or 0

				local info = string.match(data[i],'P="(.*)"')
				info = string.split(info,"[^,]+")

				mode.bootcampP.groundsData[i].friction = info[3] and tonumber(info[3]) or .3
				mode.bootcampP.groundsData[i].restitution = info[3] and tonumber(info[4]) or .2
				mode.bootcampP.groundsData[i].angle = info[3] and tonumber(info[5]) or 0
			end
		end
	end,
	-- New Player
	eventNewPlayer = function(n)
		if not mode.bootcampP.info[n] then
			mode.bootcampP.info[n] = {
				shift = false,
				checkpoint = {false,0,0},
				cheese = false,
			}
		end
		system.bindMouse(n,true)
		for i = 1,2 do
			system.bindKeyboard(n,16,i==1,true)
			system.bindKeyboard(n,string.byte("K"),i==1,true)
		end
		system.bindKeyboard(n,string.byte("E"),true,true)
		system.bindKeyboard(n,46,true,true) -- Delete key
		tfm.exec.chatMessage("<T>"..mode.bootcampP.translations[mode.bootcampP.langue].welcome .. "\n\t<CEP>/w Mquk #bootcamp+ @mapCode",n)
	end,
	-- Mouse
	eventMouse = function(n,x,y)
		if mode.bootcampP.info[n].shift then
			for i = #mode.bootcampP.groundsData,1,-1 do
				local g = mode.bootcampP.groundsData[i]
				local rad = math.rad(g.angle)
				local ax = {math.cos(rad),math.sin(rad)}

				local gX = g.x + ax[1] * (x - g.x) - ax[2] * (y - g.y)
				local gY = g.y + ax[2] * (x - g.x) + ax[1] * (y - g.y)

				if (g.type == 13 and math.pythag(x,y,g.x,g.y,g.width/2) or (math.abs(gX - g.x) < g.width/2 and math.abs(gY - g.y) < g.heigth/2)) then
					local properties = {"Type","ID","X","Y","Heigth","Width","Friction","Restitution","Angle"}
					local info = ""

					for k,v in next,properties do
						info = info .. string.format("<N>%s : <V>%s\n",v,(v == "ID" and i or v == "Type" and (({[0] = "Unknown","Wood","Ice","Trampoline","Lava","Chocolate","Earth","Grass","Sand","Cloud","Water","Stone","Snow","Rectangle","Circle","Spiderweb"})[g.type + 1]) or tostring(g[v:lower()])))
					end

					local mapW = tonumber(mode.bootcampP.mapData.width)
					local mapH = tonumber(mode.bootcampP.mapData.heigth)
					ui.addTextArea(0,info,n,(x + 150 <= mapW and x) or (x < 0 and 0) or (mapW - 150),(y + 180 <= mapH and y > 20 and y) or (y < 20 and 25) or (mapH - 180),nil,nil,nil,nil,.8,false)
				end
			end
		else
			ui.removeTextArea(0,n)
		end
	end,
	-- Keyboard
	eventKeyboard = function(n,k,d,x,y)
		if k == 16 then
			mode.bootcampP.info[n].shift = d
		elseif k == string.byte("E") and mode.bootcampP.checkpoint then
			if mode.bootcampP.info[n].shift then
				mode.bootcampP.info[n].checkpoint = {false,0,0}
				ui.removeTextArea(1,n)
			else
				mode.bootcampP.info[n].checkpoint = {true,x,y}
				ui.addTextArea(1,"",n,x-5,y-5,10,10,0x56A75A,0x56A75A,.5,true)
			end
		elseif k == string.byte("K") then
			if d then
				ui.addTextArea(2,mode.bootcampP.rank(tfm.get.room.playerList,{tfm.get.room.playerList,"score"},true,true,"points",20),n,5,30,nil,200,nil,nil,.8,true)
			else
				ui.removeTextArea(2,n)
			end
		elseif k == 46 then
			tfm.exec.killPlayer(n)
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "info" then
			tfm.exec.chatMessage("<T>" .. mode.bootcampP.translations[mode.bootcampP.langue].info,n)
		else
			if system.roomAdmins[n] then
				if p[1] == "next" then
					tfm.exec.newGame(mode.bootcampP.maps[math.random(#mode.bootcampP.maps)])
					tfm.exec.chatMessage("<T>• "..mode.bootcampP.translations[mode.bootcampP.langue].skip:format(n))
				elseif p[1] == "again" then
					tfm.exec.newGame(tfm.get.room.currentMap)
					tfm.exec.chatMessage("<T>• "..mode.bootcampP.translations[mode.bootcampP.langue].restart:format(n))
				elseif p[1] == "np" or p[1] == "map" then
					tfm.exec.newGame(p[2])
					tfm.exec.chatMessage("<T>• "..mode.bootcampP.translations[mode.bootcampP.langue].loadmap:format(n,p[2]:find("@") and p[2] or "@"..p[2]))
				elseif p[1] == "time" then
					tfm.exec.setGameTime(p[2] * 60)
					tfm.exec.chatMessage(mode.bootcampP.translations[mode.bootcampP.langue].settime:format(p[2]))
				elseif p[1] == "standtime" then
					p[2] = p[2] and tonumber(p[2]) or 6
					if p[2] > 0 and p[2] < 10 then
						mode.bootcampP.standardTime = p[2]
						tfm.exec.chatMessage(mode.bootcampP.translations[mode.bootcampP.langue].setstandtime:format(p[2]))
					end
				elseif p[1] == "checkpoint" then
					mode.bootcampP.checkpoint = not mode.bootcampP.checkpoint
					if not mode.bootcampP.checkpoint then
						ui.removeTextArea(1,nil)
						for k,v in next,mode.bootcampP.info do
							v.checkpoint = {false,0,0}
						end
					end
					tfm.exec.chatMessage("<T>Checkpoint " .. (mode.bootcampP.checkpoint and mode.bootcampP.translations[mode.bootcampP.langue].enabled or mode.bootcampP.translations[mode.bootcampP.langue].disabled))
				elseif p[1] == "queue" then
					if p[2] == "clear" then
						mode.bootcampP.maps = {}
					elseif p[2] == "add" then
						mode.bootcampP.maps[#mode.bootcampP.maps + 1] = p[3]
					elseif p[2]:sub(1,1) == "p" then
						if p[2] == "p3" or p[2] == "p13" or p[2] == "p23" then
							mode.bootcampP.maps[#mode.bootcampP.maps + 1] = "#" .. p[2]:sub(2)
						end
					else
						mode.bootcampP.map()
					end
				end
			end
		end
	end,
	-- Loop
	eventLoop = function()
		if _G.leftTime < 1 then
			tfm.exec.newGame(mode.bootcampP.maps[math.random(#mode.bootcampP.maps)])
		end
	end,
	-- Player Died
	eventPlayerDied = function(n)
		tfm.exec.respawnPlayer(n)
		if mode.bootcampP.checkpoint and mode.bootcampP.info[n].checkpoint[1] then
			tfm.exec.movePlayer(n,mode.bootcampP.info[n].checkpoint[2],mode.bootcampP.info[n].checkpoint[3])
		end
		if mode.bootcampP.info[n].cheese and system.miscAttrib == 1 then
			tfm.exec.giveCheese(n)
		end
	end,
	-- Victory
	eventPlayerWon = function(n,t,time)
		mode.bootcampP.info[n].cheese = false
		mode.bootcampP.info[n].checkpoint = {false,0,0}
		ui.removeTextArea(1,n)

		mode.bootcampP.eventPlayerDied(n)
		tfm.exec.setPlayerScore(n,1,true)
		tfm.exec.chatMessage(string.format("<ROSE>%s (%ss <PT>(%scheckpoint)</PT>)",n,time/100,mode.bootcampP.checkpoint and "" or "no "),n)
	end,
	-- Got Cheese
	eventPlayerGetCheese = function(n)
		mode.bootcampP.info[n].cheese = true
	end,
}

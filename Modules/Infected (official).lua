local module = {
	owner = "Bolodefchoco#0000",
	winner_score = 5 - 1,
	winner_color = 0xF79337,
	wait_time = 5,
	fly_power = -60,
	map_time = 60 * 2.3
}

local translations = {
	en = {
		greeting = "<R>Oh no, everyone is getting <VI><B>#infected</B><R>! RUN!\n<VI><font size='10'><R>•</R> Report bugs to Bolodefchoco#0000\n<R>•</R> !help for more info\n<R>•</R> Map Submissions: <CH2>https://atelier801.com/topic?f=6&t=882003</CH2>\n<R>•</R> Discord server: <CH2>https://discord.gg/quch83R</CH2></font>",
		mice_win = "<FC><B>All standing mice survived from the plague and got a point!</B>",
		vamp_win = "<R><B>All standing vampires bit 'em all and got a point!</B>",
		invalid_map = "<VI>You can't load this map in this module.",
		round_winner = "<%s>%s <%s>won the round!",
		help = "<R>Welcome to <VI><B>#infected</B><R>! The new version of the module was developed by <BV>Bolodefchoco#0000</B>.\n<font size='11'>\t<BL>- Each round a vampire will be chosen randomly!</BL>\n\t<G>- As a vampire, press spacebar to fly and capture all mice. You will win when all of them get infected.</G>\n\t<BL>- As a mouse, press space to push other players with Meep! and RUN from the vampires. You will win when all vampires die or when you are the only survivor.</BL>\n\t<G>- You will win the round when you get <B>5</B> points. Round winners have their nickname color changed.</G></font>",
		new_game = "<ROSE><font size='11'>A new game will start in %d seconds</font>",
		vamp = "<R>You're a vampire now. Press spacebar to fly and catch all mice!"
	},
	br = {
		greeting = "<R>Ah não, todo mundo está sendo <VI><B>#infected</B><R>! CORRA!\n<VI><font size='10'><R>•</R> Reporte bugs ao Bolodefchoco#0000\n<R>•</R> !help para mais informações</font>\n<R>•</R> Submissão de mapas: <CH2>https://atelier801.com/topic?f=6&t=882003</CH2>\n<R>•</R> Discord server: <CH2>https://discord.gg/quch83R</CH2></font>",
		mice_win = "<FC><B>Todos os ratos que sobreviveram à praga ganharam um ponto!</B>",
		vamp_win = "<R><B>Todos os vampiros em pé morderam os ratinhos vivos e ganharam um ponto!</B>",
		invalid_map = "<VI>Você não pode carregar este mapa nesse módulo.",
		round_winner = "<%s>%s <%s>venceu(ram) a partida!",
		help = "<R>Bem-vindo ao <VI><B>#infected</B><R>! A nova versão do módulo foi desenvolvida por <BV>Bolodefchoco#0000</B>.\n<font size='11'>\t<BL>- A cada mapa um vampiro será escolhido aleatóriamente!</BL>\n\t<G>- Como vampiro, aperte a barra de espaço para voar e capture todos os ratos. Você irá ganhar quando todos forem infectados.</G>\n\t<BL>- Como rato, aperte a barra de espaço para empurrar os outros jogadores com Meep! e CORRA dos vampiros. Você irá gganhar quando todos os vampiros morrerem ou quando você for o único sobrevivente.</BL>\n\t<G>- Você vencerá a partida quando conseguir <B>5</B> pontos. Vencedores da partida terão a cor de seus nicknames alterada.</G></font>",
		new_game = "<ROSE><font size='11'>Um novo mapa começará em %d segundos</font>",
		vamp = "<R>Você é um vampiro agora. Aperte a barra de espaço para voar e pegue todos os ratos!"
	}
}
local translate = translations[tfm.get.room.community] or translations.en

do
	local chatMessage = tfm.exec.chatMessage
	tfm.exec.chatMessage = function(msg, tgt, ignore)
		return chatMessage((ignore and '' or "<BL>[•] ") .. msg, tgt)
	end
end

local players = {
	_room = { },
	_alive = { },
	_dead = { },
	_vampire = { }
}

local copy = function(list)
	local out = { }
	for k, v in next, list do
		out[k] = v
	end
	return out
end

local insert = function(where, playerName)
	if not where[playerName] then
		where._count = (where._count or 0) + 1
		where[where._count] = playerName
		where[playerName] = where._count
	end
end

local remove = function(where, playerName)
	if where[playerName] then
		where._count = (where._count or 1) - 1
		table.remove(where, where[playerName])
		for i = where[playerName], where._count do
			where[where[i]] = where[where[i]] - 1
		end
		where[playerName] = nil
	end
end

eventNewPlayer = function(playerName)
	insert(players._room, playerName)
	insert(players._dead, playerName)

	tfm.exec.lowerSyncDelay(playerName)
	system.bindKeyboard(playerName, 32, true, true)
	system.bindKeyboard(playerName, 72, true, true) -- H
	tfm.exec.chatMessage(translate.greeting, playerName)
end
for playerName in next, tfm.get.room.playerList do
	eventNewPlayer(playerName)
	tfm.exec.setPlayerScore(playerName, 0)
end

eventPlayerLeft = function(playerName)
	remove(players._room, playerName)
end

eventPlayerDied = function(playerName)
	remove(players._alive, playerName)
	remove(players._vampire, playerName)
	insert(players._dead, playerName)
end

local started -- nil : new game, didn't start ; true : started ; false : current game, finished

local tmpFirstVamp
eventPlayerVampire = function(playerName, vampire)
	remove(players._alive, playerName)
	insert(players._vampire, playerName)

	if started == nil then
		started = true
	end
	if not vampire then
		local author = tfm.get.room.xmlMapInfo and tfm.get.room.xmlMapInfo.author or "?"
		
		if not tmpFirstVamp then
			tmpFirstVamp = playerName
			ui.setMapName("<J>" .. author .. " <BL>- " .. tfm.get.room.currentMap .. "   <G>|   <N>Alpha : <R>" .. playerName)
		else
			ui.setMapName("<J>" .. author .. " <BL>- " .. tfm.get.room.currentMap .. "   <G>|   <N>Alpha : <font size='11'><R>" .. tmpFirstVamp .. "<VI>,</VI> " .. playerName .. "</R></font>")
		end
	end

	tfm.exec.chatMessage(translate.vamp, playerName)
end

eventKeyboard = function(playerName, key)
	if key == 72 then
		return tfm.exec.chatMessage(translate.help, playerName)
	end
	if players._vampire[playerName] then
		tfm.exec.movePlayer(playerName, 0, 0, true, 0, module.fly_power)
	end
end

local lastRoundWinners = { }
local newGameTimer

eventNewGame = function()
	if not tfm.get.room.xmlMapInfo or (tfm.get.room.xmlMapInfo.permCode ~= 11 and tfm.get.room.xmlMapInfo.permCode ~= 21) then
		players._alive._count = 0
		tfm.exec.chatMessage(translate.invalid_map)
		return
	end

	players._dead = { }
	players._vampire = { }
	players._alive = copy(players._room)
	players.__roundTotal = players._alive._count

	tfm.exec.setGameTime(module.map_time)

	for playerName in next, tfm.get.room.playerList do
		tfm.exec.giveMeep(playerName)
	end

	for i = 1, #lastRoundWinners do
		tfm.exec.setNameColor(lastRoundWinners[i], module.winner_color)
	end

	started = nil
	newGameTimer = nil
	tmpFirstVamp = nil
end

eventLoop = function(currentTime, remainingTime)
	if newGameTimer then
		newGameTimer = newGameTimer - .5
	end

	if started then
		local roundWinner, counter, vampWin = { }, 0, false

		if players._alive._count == 0 then
			started = false

			for i = 1, players._vampire._count do
				if players._vampire[i] and tfm.get.room.playerList[players._vampire[i]] then
					tfm.exec.setPlayerScore(players._vampire[i], 1, true)
					if tfm.get.room.playerList[players._vampire[i]].score >= module.winner_score then
						counter = counter + 1
						roundWinner[counter] = players._vampire[i]
						if not vampWin then
							vampWin = true
						end
					end
				end
			end

			if players.__roundTotal > 3 then
				tfm.exec.chatMessage(translate.vamp_win)
			end
		elseif players._vampire._count == 0 or (players._alive._count == 1 and players.__roundTotal > 3) or (players._alive._count > 0 and remainingTime < 1000) then
			started = false

			for i = 1, players._alive._count do
				if players._alive[i] and tfm.get.room.playerList[players._alive[i]] then
					tfm.exec.setPlayerScore(players._alive[i], 1, true)
					if tfm.get.room.playerList[players._alive[i]].score >= module.winner_score then
						counter = counter + 1
						roundWinner[counter] = players._alive[i]
					end
				end
			end

			if players.__roundTotal > 3 then
				tfm.exec.chatMessage(translate.mice_win)
			end
		end

		if counter > 0 then
			for playerName in next, tfm.get.room.playerList do
				tfm.exec.setPlayerScore(playerName, 0)
			end

			lastRoundWinners = roundWinner
			
			tfm.exec.chatMessage(string.format(translate.round_winner, (vampWin and 'R' or "FC"), table.concat(roundWinner, ", "), (vampWin and "VI" or "ROSE")))
		end

		if not started and remainingTime > 5e3 then
			newGameTimer = module.wait_time
			if players.__roundTotal > 3 then
				tfm.exec.chatMessage(string.format(translate.new_game, newGameTimer))
			end
		end
	end
	if not newGameTimer and ((players._alive._count or 0) + (players._vampire._count or 0)) < 2 and currentTime < 9e4 then
		newGameTimer = module.wait_time
	end

	if remainingTime < 500 or (newGameTimer and newGameTimer < .5) then
		tfm.exec.newGame("#" .. math.random(1, 2) .. "1")
	end
end

eventChatCommand = function(playerName, command)
	local cmd, param = string.match(command, "^(%S+) *(.*)")
	cmd = string.lower(cmd)

	if cmd == "help" or cmd == "h" or cmd == "info" then
		tfm.exec.chatMessage(translate.help, playerName)
	elseif playerName == module.owner then
		if cmd == "speak" and param then
			if param ~= '' then
				tfm.exec.chatMessage("<VI><B>[#infected]</B> " .. param, nil, true)
			end
		elseif cmd == "np" and param then
			tfm.exec.newGame(param)
		end
	end
end

system.disableChatCommandDisplay()
tfm.exec.disableAutoNewGame()
tfm.exec.disableAutoTimeLeft()
tfm.exec.disableAutoScore()

eventLoop(0, 0)

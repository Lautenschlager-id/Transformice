events = {}
events.eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizeTime(currentTime / 1e3)
	_G.leftTime = normalizeTime(leftTime / 1e3)
end
events.eventChatCommand = function(n,c)
	if not system.isRoom then
		if os.time() > system.modeChanged and os.time() > system.newGameTimer then
			local newMode = system.getGameMode(c)
			if newMode then
				system.init()
			end
		end
	end
	if c == "module" then
		tfm.exec.chatMessage(string.format("VERSION : %s\nNAME : %s\nSTATUS : %s\nAUTHOR : %s\n\nMODE : %s",module._VERSION,module._NAME,module._STATUS,module._AUTHOR,system.gameMode),n)
	end
end

math.randomseed(os.time())

local isTribeHouse = string.byte(tfm.get.room.name, 2) == 3

local fastMode, noShamanMode, noCollisionMode = false, false, false
if not isTribeHouse then
	local mode
	if string.find(tfm.get.room.name, "vanilla") then
		mode = "vanilla"
	elseif string.find(tfm.get.room.name, "village") then
		mode = "village"
	else
		if string.find(tfm.get.room.name, "fast") then
			fastMode = true
		end
		if string.find(tfm.get.room.name, "noshaman") then
			noShamanMode = true
		end
		if string.find(tfm.get.room.name, "nocollision") then
			noCollisionMode = true
		end
	end

	if mode then
		tfm.exec.chatMessage("<ROSE>You can't play <N>#crowdsurf</N> in " .. mode .. " rooms.")
		return
	end
end

local getParam
do
	local categories = { 1, 4, 5, 6, 7, 8, 9 }
	getParam = function()
		local out
		if isTribeHouse then
			out = "#" .. categories[math.random(#categories)]
		end
		return out
	end
end

local players = 0
eventNewPlayer = function(playerName)
	players = players + 1
	tfm.exec.chatMessage("<N>Welcome to <ROSE>#crowdsurf<N>. Survive or win to become the next shaman!", playerName)
end
table.foreach(tfm.get.room.playerList, eventNewPlayer)

eventPlayerLeft = function()
	players = players - 1
end

local toReload, map, shaman
local skip = false

local skipMap = function()
	toReload = nil
	map = nil

	tfm.exec.setGameTime(5, true)
	tfm.exec.newGame(getParam())
end

eventNewGame = function()
	if not string.find(tfm.get.room.currentMap, '@') then
		skipMap()
		return
	end
	
	local xml = tfm.get.room.xmlMapInfo.xml
		
	if string.find(xml, "T=\"9\"") or string.find(xml, "T=\"15\"") then -- water or web doesn't disappear with the attribute v
		skipMap()
		return
	end

	if not toReload then
		xml = (string.gsub(xml, "<S ", function()
			return "<S v=\"" .. math.random(3000, (fastMode and 20000 or 50000)) .. "\" "
		end))

		xml = (string.gsub(xml, "defilante=\".-\"", ""))
		xml = (string.gsub(xml, "mgoc=\".-\"", ""))

		for i = 11, 16 do
			xml = (string.gsub(xml, "<O .-C=\"" .. i .. "\".->", ""))
		end
		xml = (string.gsub(xml, "<O .-C=\"22\".->", ""))

		if not noCollisionMode then
			xml = (string.gsub(xml, "<P ", function()
				return "<P C=\"\" "
			end))
		end
		
		if isTribeHouse then
			map = xml
		else
			tfm.exec.newGame(xml)
		end
		toReload = tfm.get.room.currentMap
		
		skip = true
	else
		if tfm.get.room.currentMap ~= "@0" then
			tfm.exec.setGameTime(6, true)
			skip = true
			return
		end
		skip = false

		map = nil

		tfm.exec.setGameTime(63)
		ui.setMapName("<N>" .. toReload)
		
		for playerName in next, tfm.get.room.playerList do
			if playerName ~= shaman then
				tfm.exec.giveMeep(playerName)
			end
		end
		
		if shaman then
			if not noShamanMode and tfm.get.room.playerList[shaman] then
				tfm.exec.setShaman(shaman)
			end
			shaman = nil
		end

		toReload = nil
	end
end

eventLoop = function(currentTime, remainingTime)
	if map and currentTime >= 3000 then
		tfm.exec.newGame(map)
	end
end

eventPlayerDied = function(playerName)
	if not skip then
		if shaman then
			if shaman == playerName then
				tfm.exec.setPlayerScore(shaman, -1, true)
				
				if not noShamanMode then
					tfm.exec.chatMessage("<ROSE>Just kidding, <N>" .. shaman .. "</N> will not be the next shaman :p")
				else
					tfm.exec.chatMessage("<ROSE>Ehhh, that was luck. <N>" .. shaman .. "</N> did not survive.")
				end
				shaman = nil
			end
			return
		end

		local survivor
		for playerName, playerData in next, tfm.get.room.playerList do
			if not playerData.isDead then
				if survivor then
					return
				end
				survivor = playerName
			end
		end
		
		tfm.exec.setGameTime(5, true)
		if survivor and players > 1 then
			shaman = survivor
			tfm.exec.setPlayerScore(shaman, 1, true)
			
			if not noShamanMode then
				tfm.exec.chatMessage("<ROSE>The next shaman will be <N>" .. shaman)
			else
				tfm.exec.chatMessage("<N>" .. shaman .. " <ROSE>is the survivor!")
			end
		end
	end
end

eventPlayerWon = function(playerName)
	if not skip and not shaman then
		tfm.exec.setGameTime(5, true)

		shaman = playerName
		tfm.exec.setPlayerScore(shaman, 1, true)
		
		if not noShamanMode then
			tfm.exec.chatMessage("<ROSE>The next shaman will be <N>" .. shaman)
		else
			tfm.exec.chatMessage("<N>" .. shaman .. " <ROSE>won!")
		end
	end
end

tfm.exec.disableAutoShaman()
tfm.exec.disableAutoScore()
tfm.exec.disableAllShamanSkills()

tfm.exec.newGame(getParam())

local players = 0
updateRoomBar = function(set,...)

	local attribs,args = {},{...}
	local author,map,time,shaman = "Tigrounette","@0",120,{}

	if not set.disableCreator then
		author = tfm.get.room.xmlMapInfo and tfm.get.room.xmlMapInfo.author or author
		attribs[#attribs+1] = string.format("<J>%s",author)
	end

	if not set.disableCode then
		map = tfm.get.room.xmlMapInfo and tfm.get.room.currentMap or map
		if not set.disableCreator then
			attribs[#attribs] = string.format("<J>%s <BL>- %s",author,map)
		else
			attribs[#attribs+1] = string.format("<BL>%s",map)
		end
	end

	if not set.disableTime then
		time = timeLeft or time
		local min,sec = math.floor((time/60)%60),math.floor(time%60)
		min,sec = (min < 10 and "0"..min or min),(sec < 10 and "0"..sec or sec)
		attribs[#attribs+1] = string.format("<N>New map in : <V>%s:%s",min,sec)
	end

	if not set.disableMice then
		attribs[#attribs+1] = string.format("<N>Noobs : <V>%d",players)
	end

	if not set.disableShaman then
		for k,v in next,tfm.get.room.playerList do
			if v.isShaman then
				table.insert(shaman,k)
			end
		end
		if #shaman > 0 then
			attribs[#attribs+1] = string.format("<N>Shaman : <CH>%s",table.concat(shaman," - <PS>"))
		end
	end

	if #args > 0 then
		for k,v in next,args do
			table.insert(attribs,"<N>"..v)
		end
	end

	local str = string.format(table.concat(attribs,"   <G>|<N>   "))
	ui.setMapName(str.."<")
end

eventPlayerLeft = function(n)
	players = players - 1
end

eventNewPlayer = function(n)
	players = players + 1
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

eventLoop = function(currentTime,timeLeft)
	if currentTime >= 1000 then
		_G.timeLeft = (timeLeft/1000)
		if _G.timeLeft < 0 then
			_G.timeLeft = 0
		end
	end
	updateRoomBar({
		disableCreator = false,
		disableCode = false,
		disableTime = false,
		disableMice = false,
		disableShaman = false
	},"Made by <PT>Bolodefchoco")
end
tfm.exec.newGame()

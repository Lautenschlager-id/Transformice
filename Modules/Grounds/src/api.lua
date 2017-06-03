--[[ API ]]--
	-- Timers
system.newGameTimer = 0

	-- Improvements
table.concat = function(list,sep,f,i,j)
	local txt = ""
	sep = sep or ""
	i,j = i or 1,j or #list
	for k,v in next,list do
		if k >= i and k <= j then
			txt = txt .. (f and f(k,v) or v) .. sep
		end
	end
	return string.sub(txt,1,-1-#sep)
end
do
	local newGame = tfm.exec.newGame
	tfm.exec.newGame = function(code)
		if os.time() > system.newGameTimer then
			system.newGameTimer = os.time() + 6000
			newGame(code)
			return true
		end
		return false
	end
	
	local addImage = tfm.exec.addImage
	local removeImage = tfm.exec.removeImage
	tfm.exec.addImage = function(...)
		local id = addImage(...)
		if id then
			system.objects.image[id] = true
		end
		return id
	end
	tfm.exec.removeImage = function(id)
		removeImage(id)
		if system.objects.image[id] then
			system.objects.image[id] = nil
		end
	end
	
	local addTextArea = ui.addTextArea
	ui.addTextArea = function(id,...)
		addTextArea(id,...)
		if not system.objects.textarea[id] then
			system.objects.textarea[id] = true
		end
	end
end

	-- Room
system.isRoom = string.byte(tfm.get.room.name,2) ~= 3
system.roomAdmins = {Bolodefchoco = true}
system.miscAttrib = 0
system.roomNumber,system.roomAttributes = (function()
	if system.isRoom then
		local number,attribute = string.match(tfm.get.room.name,"%*?#"..module._NAME.."(%d+)(.*)")
		return tonumber(number) or "",attribute or ""
	else
		return "",""
	end
end)()

	-- Player
system.isPlayer = function(n)
	--[[
		The player must not be a souris;
		The player must have played Transformice for at least 5 days
	]]
	return tfm.get.room.playerList[n] and string.sub(n,1,1) ~= "*" and tfm.get.room.playerList[n].registrationDate and (os.time() - (tfm.get.room.playerList[n].registrationDate or 0) >= 432e6) or false
end
system.players = function(alivePlayers)
	local alive,total = 0,0
	if alivePlayers then
		alive = {}
	end
	for k,v in next,tfm.get.room.playerList do
		if system.isPlayer(k) then
			if not v.isDead and not v.isVampire then
				if alivePlayers then
					alive[#alive + 1] = k
				else
					alive = alive + 1
				end
			end
			total = total + 1
		end
	end
	if alivePlayers then
		return alive
	else
		return alive,total
	end
end

	-- System
currentTime,leftTime = 0,0
system.loadTable = function(s)
	-- "a.b.c.1" returns a[b][c][1]
	local list
	for tbl in string.gmatch(s,"[^%.]+") do
		tbl = tonumber(tbl) and tonumber(tbl) or tbl
		list = (list and list[tbl] or _G[tbl])
	end
	return list
end
system.getTranslation = function(index,n)
	local t = string.format("mode.%s.translations.%s.%s",system.gameMode,(n and mode[system.gameMode].info[n].langue or mode[system.gameMode].langue),index)
	return system.loadTable(t) or system.loadTable(string.gsub(t,"translations%..-%.",function() return "translations.en." end))
end
system.looping = function(f,tick)
	local s = 1000 / tick
	local t = {}
	for timer = 0,1000 - s,s do
		system.newTimer(function()
			t[#t+1] = system.newTimer(f,1000,true)
		end,1000 + timer,false)
	end
	return t
end

	-- Math
math.isNegative = function(x,iN,iP)
	return (x<0 and (iN or x) or (iP or x))
end
math.percent = function(x,y,v)
	v = (v or 100)
	local m = x/y * v
	return math.min(m,v)
end
math.pythag = function(x1,y1,x2,y2,range)
	return (x1-x2)^2 + (y1-y2)^2 <= (range^2)
end

	-- String
string.split = function(value,pattern,f)
	local out = {}
	for v in string.gmatch(value,pattern) do
		out[#out + 1] = (f and f(v) or v)
	end
	return out
end
string.nick = function(player)
	return string.gsub(string.lower(player),"%a",string.upper,1)
end

	-- Table
table.find = function(list,value,index,f)
	for k,v in next,list do
		local i = (type(v) == "table" and index and v[index] or v)
		if (f and f(i) or i) == value then
			return true,k
		end
	end
	return false,0
end
table.turnTable = function(x)
	return (type(x)=="table" and x or {x})
end
table.random = function(t)
	return (type(t) == "table" and t[math.random(#t)] or math.random())
end
table.shuffle = function(t)
	local randomized = {}
	for v = 1,#t do
		table.insert(randomized,math.random(#randomized),t[v])
	end
	return randomized
end

	-- Others
deactivateAccents=function(str)
	local letters = {a = {"á","â","à","å","ã","ä"},e = {"é","ê","è","ë"},i = {"í","î","ì","ï"},o = {"ó","ô","ò","õ","ö"},u = {"ú","û","ù","ü"}}
	for k,v in next,letters do
		for i = 1,#v do
			str = string.gsub(str,v[i],tostring(k))
		end
	end
	return str
end
normalizeTime = function(time)
	return math.floor(time) + ((time - math.floor(time)) >= .5 and .5 or 0)
end
disableChatCommand = function(command)
	system.disableChatCommandDisplay(command,true)
	system.disableChatCommandDisplay(string.lower(command),true)
	system.disableChatCommandDisplay(string.upper(command),true)
end	

	-- XML Dealer
xml = {}
xml.parse = function(currentXml)
	currentXml = string.match(currentXml,"<P (.-)/>") or ""
	local out = {}
	for tag,_,value in string.gmatch(currentXml,"([%-%w]+)=([\"'])(.-)%2") do
		out[tag] = value
	end
	return out
end
xml.attribFunc = function(currentXml,funcs)
	local attributes = xml.parse(currentXml)
	for k,v in next,funcs do
		if attributes[v.attribute] then
			v.func(attributes[v.attribute])
		end
	end
end
xml.addAttrib = function(currentXml,out,launch)
	local parameters = string.match(currentXml,"<P (.-)/>") or ""
	for k,v in next,out do
		if not string.find(parameters,v.tag) then
			currentXml = string.gsub(currentXml,"<P (.-)/>",function(attribs)
				return string.format("<P %s=\"%s\" %s/>",v.tag,v.value,attribs)
			end)
		end
	end
	if launch then
		tfm.exec.newGame(currentXml)
	else
		return currentXml
	end
end
xml.getCoordinates = function(s)
	if string.find(s,";") then
		local x,y
		local axis,value = string.match(s,"(%a);(%d+)")
		value = tonumber(value)
		if value then
			if axis == "x" then x = value else y = value end
		end
		return x or 0,y or 0
	else
		local pos = {}
		for x,y in string.gmatch(s,"(%d+) ?, ?(%d+)") do
			pos[#pos+1] = {x = x,y = y}
		end
		return pos
	end
end

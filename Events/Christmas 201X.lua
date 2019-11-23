--[[ Module Info ]]--
local module = {
	name = "xm1X",
	team = {
		developer = { "Bolodefchoco#0000", "Tocutoeltuco#0000" },
		artist = { "Naomi#2792" },
		translator = { "Bolodefchoco#0000" }
	},
	reward = {

	},
	time = 2 * 60,
	map = {
		xml = [[<C><P APS="%s,,170,350,820,1250,," L="1000" H="1600" /><Z><S><S L="160" o="324650" H="17" X="76" Y="1574" T="12" P=",,.3,.2,-12,,," /><S L="115" o="324650" H="17" X="209" Y="1563" T="12" P=",,.3,.2,5,,," /><S L="100" o="324650" H="17" X="297" Y="1559" T="12" P=",,.3,.2,-10,,," /><S L="150" o="324650" H="17" X="417" Y="1560" T="12" P=",,.3,.2,7,,," /><S L="150" o="324650" H="17" X="565" Y="1568" T="12" P=",,.3,.2,-1,,," /><S L="92" o="324650" H="17" X="672" Y="1544" T="12" P=",,.3,.2,-34,,," /><S L="82" o="324650" H="17" X="743" Y="1503" T="12" P=",,.3,.2,-26,,," /><S L="66" o="324650" H="17" X="790" Y="1461" T="12" P=",,.3,.2,-65,,," /><S L="15" o="324650" H="853" X="789" Y="1014" T="12" P=",,.3,.2,,,," /><S L="530" o="324650" H="17" X="457" Y="1408" T="12" P=",,.3,.2,1,,," /><S L="401" o="324650" H="17" X="532" Y="1250" T="12" P=",,.3,.2,1,,," /><S L="442" o="324650" H="17" X="500" Y="1082" T="12" P=",,.3,.2,,,," /><S L="82" o="324650" H="17" X="761" Y="1274" T="12" P=",,.3,.2,32,,," /><S L="167" o="324650" H="17" X="736" Y="1183" T="12" P=",,.3,.2,-52,,," /><S L="99" o="324650" H="17" X="422" Y="1051" T="12" P=",,.3,.2,218,,," /><S L="99" o="324650" H="17" X="356" Y="983" T="12" P=",,.3,.2,235,,," /><S L="339" o="324650" H="17" X="561" Y="921" T="12" P=",,.3,.2,,,," /><S L="92" o="324650" H="17" X="759" Y="949" T="12" P=",,.3,.2,40,,," /><S L="178" o="324650" H="17" X="731" Y="854" T="12" P=",,.3,.2,-49,,," /><S L="350" o="324650" H="17" X="536" Y="754" T="12" P=",,.3,.2,,,," /><S L="28" o="324650" X="500" H="10" Y="730" T="13" P=",,.3,.2,,,," /><S L="124" o="324650" H="17" X="448" Y="677" T="12" P=",,.3,.2,55,,," /><S L="503" o="324650" H="17" X="748" Y="597" T="12" P=",,.3,.2,-1,,," /><S L="14" o="324650" H="211" X="991" Y="487" T="12" P=",,.3,.2,2,,," /><S L="532" o="324650" H="27" X="736" Y="378" T="12" P=",,.3,.2,,,," /><S L="20" o="324650" H="1104" X="326" Y="901" T="12" P=",,.3,.2,15,,," /><S L="26" o="324650" H="394" X="998" Y="173" T="12" P=",,,,,,," /><S L="10" o="324650" H="1596" X="-2" Y="800" T="12" P=",,,,,,," /><S P=",,.3,.2,-115,,," L="10" o="324650" X="788" Y="1444" T="12" H="10" /><S P=",,.3,.2,50,,," L="172" o="324650" X="293" Y="1340" T="12" H="17" /><S L="100" o="324650" c="2" H="10" X="748" Y="1410" T="12" P=",,,,,,," /><S L="100" o="324650" c="2" H="10" X="290" Y="1245" T="12" P=",,,,,,," /><S L="100" o="324650" c="2" H="10" X="748" Y="1080" T="12" P=",,,,,,," /><S L="100" o="324650" c="2" H="10" X="380" Y="920" T="12" P=",,,,,,," /><S L="100" o="324650" c="2" H="10" X="754" Y="753" T="12" P=",,,,,,," /><S L="100" o="324650" c="2" H="10" X="455" Y="596" T="12" P=",,,,,,," /><S P="0,0,,,,0,0,0" L="10" o="324650" H="394" c="2" Y="173" T="12" X="465" /><S P="0,0,,,,0,0,0" L="10" o="324650" X="183" c="2" Y="1493" T="12" H="150" /></S><D /><O /></Z></C>]],
		background = "16e6f4bb3dc.jpg",
		foreground = "167515a75c9.png"
	},
	timerRate = 12
}

--> Debug <--
local DEBUG, _eventKeyboard = true
if DEBUG then
	for _, dev in next, module.team.developer do
		system.bindMouse(dev)
		system.bindKeyboard(dev, 16, true)
		system.bindKeyboard(dev, 16, false)
	end

	local shift
	eventMouse = function(playerName, x, y)
		if shift then
			tfm.exec.chatMessage(x .. ", " .. y)
		else
			tfm.exec.movePlayer(playerName, x, y)
		end
	end

	_eventKeyboard = function(playerName, key, down)
		if key == 16 then
			shift = down
		end
	end

	local lastImg
	eventChatMessage = function(playerName, message)
		local code, target, x, y = message:match("^(%S+%.[pnjpg]+) (%S+) (%-?%d+%.?%d*) (%-?%d+%.?%d*)$")
		if code then
			if lastImg then
				tfm.exec.removeImage(lastImg)
			end
			lastImg = tfm.exec.addImage(code, target:gsub("&amp;", "&"), x * 1, y * 1)
		end
	end

	local p = print
	_G.print = function(...)
		local args = { ... }
		for i = 1, select('#', ...) do
			args[i] = tostring(args[i])
		end
		p(table.concat(args, "\t"))
	end
end

if not DEBUG and (not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team.developer[1]]) and tfm.get.room.uniquePlayers < 4) then
	return system.exit()
end

--[[ Translations ]]--
local translation
do
	local texts = {
		en = {
			dialog = {
				[1] = ''
			},
			closeDialog = ''
		},
		br = {
			dialog = {
				[1] = ''
			},
			closeDialog = ''
		}
	}
	texts.pt = texts.br

	translation = texts[tfm.get.room.community] or texts.en
end

-- Enumerations
local objectId = {
	fish = 6300,
	snowball = 34
}

local interfaceId = {
	dialog = 100
}

local keyCode = {
	space = 32
}

local workingTimerState = {
	stop = -1,
	start = 0,
	defineAsBroken = 2,
	broken = 3
}

local monsterType = {
	snow = 1,
	roar = 2,
	freeze = 3,
	magician = 4
}

local movementType = {
	biggerGroup = 1,
	nearestPlayer = 2
}

local monsterAxis = {
	[monsterType.snow] = { -30, -35 },
	[monsterType.roar] = { -30, -35 },
	[monsterType.freeze] = { -30, -35 },
	[monsterType.magician] = { 0, 0 }
}

local monsterData = {
	snowballForce = 50,
	snowballQuantity = 2,

	freezeRadius = 80,
	freezeTime = 3500
}

-- Images
local images = {
	christmasTree = {
		[1] = "167515a46dc.png",
		[2] = "167515a2f6b.png",
		[3] = "167515a17f9.png",
		[4] = "167515a0088.png",
		[5] = "1675159e916.png",
		[6] = "1675159d1a5.png",
		[7] = "1675159ba32.png",
		[8] = "1675159a2c0.png"
	},
	treeItems = {
		[1] = "167515b314e.png", -- Seed
		[2] = "167515b19dc.png", -- Water can
		[3] = "167515b026a.png", -- Fertilizer
		[4] = "167515aeaf8.png", -- Light
		[5] = "167515ad387.png", -- Candy cane
		[6] = "167515abc15.png", -- Bell
		[7] = "167515aa4a3.png", -- Ball
		[8] = "167515a8d32.png" -- Star
	},
	objects = {
		caldron = "16751bfa8a6.png",
		gifts = "16751bfeefd.png",
		fireMachine = "16751bfd789.png",
		lock = { "16e71438e8a.png", "16e71423da7.png" },
		snowballs = "16751bfc016.png"
	},
	monsters = {
		[monsterType.snow] = { -- ←↑→↓
			[1] = "1675aae4e38.png",
			[2] = "1675aae36c8.png",
			[3] = "1675aae65ab.png",
			[4] = "1675aae7d1d.png",
		},
		[monsterType.roar] = {
			[1] = "1675b976856.png",
			[2] = "1676161df38.png",
			[3] = "1675b977fc8.png",
			[4] = "1675b973973.png",
		},
		[monsterType.freeze] = {
			[1] = "1675a9d872b.png",
			[2] = "1675a9d6fb9.png",
			[3] = "1675a9dbdde.png",
			[4] = "1675a9d9e9c.png",
		},
		[monsterType.magician] = {
			[1] = "167515b48bf.png", -- Alive
			[2] = "167515b602f.png" -- Tig
		},
		attack = {
			[monsterType.freeze] = {
				[1] = "16761935c62.png",
				[3] = "167619344f1.png"
			},
			[monsterType.roar] = {
				[1] = "1676161f6a9.png",
				[3] = "16761620e1a.png"
			}
		}
	},
	dialogNpc = {
		background = "1666b88049d.png",
		[1] = ''
	}
}

local imageLayer = {
	mapBackground = "?0",
	objectBackground = "?1",
	objectForeground = "!1",
	dialogForeground = "&1",
	dialogBackgroud = ":1"
}

--[[ Data ]]--
local playerCache, playerData = { }, {
	treeStage = {
		index = 1,
		default = 0
	}
}
do
	-- Laagaadoo#0000's DataHandler shortened
	local DataHandler = {}
	DataHandler.VERSION = '1.4'
	DataHandler.__index = DataHandler
	function DataHandler.new(moduleID, skeleton, otherOptions) local self = setmetatable({}, DataHandler) assert(moduleID, 'Invalid module ID (nil)') assert(moduleID ~= '', 'Invalid module ID (empty text)') assert(skeleton, 'Invalid skeleton (nil)')  for k, v in next, skeleton do v.type = v.type or type(v.default) end self.players = {} self.moduleID = moduleID self.moduleSkeleton = skeleton self.moduleIndexes = {} self.otherOptions = otherOptions self.otherData = {} self.originalStuff = {} for k,v in pairs(skeleton) do self.moduleIndexes[v.index] = k end if self.otherOptions then self.otherModuleIndexes = {} for k,v in pairs(self.otherOptions) do self.otherModuleIndexes[k] = {} for k2,v2 in pairs(v) do v2.type = v2.type or type(v2.default) self.otherModuleIndexes[k][v2.index] = k2 end end end return self end
	function DataHandler.newPlayer(self, name, dataString) assert(name, 'Invalid player name (nil)') assert(name ~= '', 'Invalid player name (empty text)') self.players[name] = {} self.otherData[name] = {} dataString = dataString or '' local function turnStringToTable(str) local output = {} for data in string.gsub(str, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') if string.match(data, '^{.-}$') then table.insert(output, turnStringToTable(string.match(data, '^{(.-)}$'))) else table.insert(output, tonumber(data) or data) end end return output end local function getDataIndexName(skeleton, index) for k,v in pairs(skeleton) do if v.index == index then return k end end return 0 end local function getHigherIndex(skeleton) local higher = 0 for k,v in pairs(skeleton) do if v.index > higher then higher = v.index end end return higher end local function handleModuleData(moduleID, skeleton, moduleData, makeTable) local dataIndex = 1 local higherIndex = getHigherIndex(skeleton) moduleID = "__" .. moduleID if makeTable then self.players[name][moduleID] = {} end local setPlayerData = function(data, dataType, dataName, dataDefault) local value if dataType == "number" then value = tonumber(data) or dataDefault elseif dataType == "string" then value = string.match(data or '', "^\"(.-)\"$") or dataDefault elseif dataType == "table" then value = string.match(data or '', "^{(.-)}$") value = value and turnStringToTable(value) or dataDefault elseif dataType == "boolean" then if data then value = data == '1' else value = dataDefault end end if makeTable then self.players[name][moduleID][dataName] = value else self.players[name][dataName] = value end end if #moduleData > 0 then for data in string.gsub(moduleData, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') local dataName = getDataIndexName(skeleton, dataIndex) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(data, dataType, dataName, dataDefault) dataIndex = dataIndex + 1 end end if dataIndex <= higherIndex then for i = dataIndex, higherIndex do local dataName = getDataIndexName(skeleton, i) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(nil, dataType, dataName, dataDefault) end end end local modules, originalStuff = self:getModuleData(dataString) self.originalStuff[name] = originalStuff if not modules[self.moduleID] then modules[self.moduleID] = '{}' end handleModuleData(self.moduleID, self.moduleSkeleton, modules[self.moduleID]:sub(2,-2), false) if self.otherOptions then for moduleID, skeleton in pairs(self.otherOptions) do if not modules[moduleID] then local strBuilder = {} for k,v in pairs(skeleton) do local dataType = v.type or type(v.default) if dataType == 'string' then strBuilder[v.index] = '"'..tostring(v.default)..'"' elseif dataType == 'table' then strBuilder[v.index] = '{}' elseif dataType == 'number' then strBuilder[v.index] = v.default elseif dataType == 'boolean' then strBuilder[v.index] = v.default and '1' or '0' end end modules[moduleID] = '{'..table.concat(strBuilder, ',')..'}' end end end for moduleID, moduleData in pairs(modules) do if moduleID ~= self.moduleID then if self.otherOptions and self.otherOptions[moduleID] then handleModuleData(moduleID, self.otherOptions[moduleID], moduleData:sub(2,-2), true) else self.otherData[name][moduleID] = moduleData end end end end
	function DataHandler.dumpPlayer(self, name) local output = {} local function turnTableToString(tbl) local output = {} for k,v in pairs(tbl) do local valueType = type(v) if valueType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(v) if output[#output]:sub(-1) == ',' then output[#output] = output[#output]:sub(1, -2) end output[#output+1] = '}' output[#output+1] = ',' else if valueType == 'string' then output[#output+1] = '"' output[#output+1] = v output[#output+1] = '"' elseif valueType == 'boolean' then output[#output+1] = v and '1' or '0' else output[#output+1] = v end output[#output+1] = ',' end end if output[#output] == ',' then output[#output] = '' end return table.concat(output) end local function getPlayerDataFrom(name, moduleID) local output = {moduleID, '=', '{'} local player = self.players[name] local moduleIndexes = self.moduleIndexes local moduleSkeleton = self.moduleSkeleton if self.moduleID ~= moduleID then moduleIndexes = self.otherModuleIndexes[moduleID] moduleSkeleton = self.otherOptions[moduleID] moduleID = '__'..moduleID player = self.players[name][moduleID] end if not player then return '' end for i = 1, #moduleIndexes do local dataName = moduleIndexes[i] local dataType = moduleSkeleton[dataName].type if dataType == 'string' then output[#output+1] = '"' output[#output+1] = player[dataName] output[#output+1] = '"' elseif dataType == 'number' then output[#output+1] = player[dataName] elseif dataType == 'boolean' then output[#output+1] = player[dataName] and '1' or '0' elseif dataType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(player[dataName]) output[#output+1] = '}' end output[#output+1] = ',' end if output[#output] == ',' then output[#output] = '}' else output[#output+1] = '}' end return table.concat(output) end output[#output+1] = getPlayerDataFrom(name, self.moduleID) if self.otherOptions then for k,v in pairs(self.otherOptions) do local moduleData = getPlayerDataFrom(name, k) if moduleData ~= '' then output[#output+1] = ',' output[#output+1] = moduleData end end end for k,v in pairs(self.otherData[name]) do output[#output+1] = ',' output[#output+1] = k output[#output+1] = '=' output[#output+1] = v end return table.concat(output)..self.originalStuff[name] end
	function DataHandler.get(self, name, dataName, moduleName) if not moduleName then return self.players[name][dataName] else assert(self.players[name]['__'..moduleName], 'Module data not available ('..moduleName..')') return self.players[name]['__'..moduleName][dataName] end end
	function DataHandler.set(self, name, dataName, value, moduleName) if moduleName then self.players[name]['__'..moduleName][dataName] = value else self.players[name][dataName] = value end return self end
	function DataHandler.save(self, name) system.savePlayerData(name, self:dumpPlayer(name)) end
	function DataHandler.removeModuleData(self, name, moduleName) assert(moduleName, "Invalid module name (nil)") assert(moduleName ~= '', "Invalid module name (empty text)") assert(moduleName ~= self.moduleID, "Invalid module name (current module data structure)") if self.otherData[name][moduleName] then self.otherData[name][moduleName] = nil return true else if self.otherOptions and self.otherOptions[moduleName] then self.players[name]['__'..moduleName] = nil return true end end return false end
	function DataHandler.getModuleData(self, str) local output = {} for moduleID, moduleData in string.gmatch(str, '([0-9A-Za-z_]+)=(%b{})') do output[moduleID] = moduleData end for k,v in pairs(output) do str = str:gsub(k..'='..v:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%0")..',?', '') end return output, str end

	playerData = DataHandler.new(module.name, playerData)
end

local canStart = false
local workingTimer = workingTimerState.start

local playerStage = { }

--[[ Utils ]]--
local getRandomValue = function(tbl)
	return tbl[math.random(#tbl)]
end

local pythagoras = function(x1, y1, x2, y2, radius)
	return (((x1 - x2) ^ 2) + ((y1 - y2) ^ 2)) <= (radius ^ 2)
end

local getAngle = function(x1, y1, x2, y2)
	return math.atan2(y2 - y1, x2 - x1)
end

local getAcceleration = function(angle)
	return math.cos(angle), math.sin(angle)
end

local getNeededXSpeed = function(distance)
	-- Returns the needed xSpeed to cover distance over a 0° ground of 0.3 friction.
	return math.floor(distance ^ .5 + 0.5)
end

local getPlayersInStage = function(stage)
	if not playerStage[stage] then return end

	if playerStage[stage]._intern._update then
		local list, index = { }, 0
		for playerName, isBool in next, playerStage[stage] do
			if isBool == true then
				index = index + 1
				list[index] = playerName
			end
		end

		playerStage[stage]._intern._keys = (index > 0 and list)
		playerStage[stage]._intern._update = false
	end
	return playerStage[stage]._intern._keys
end

local getNearPlayers = function(stagePlayers, x, y, radius)
	local list, index = { }, 0
	for _, playerName in next, stagePlayers do
		playerName = tfm.get.room.playerList[playerName]
		if pythagoras(playerName.x, playerName.y, x, y, radius) then
			index = index + 1
			list[index] = playerName.playerName
		end
	end
	return list
end

local clearClassEmptyObjects = function(class)
	local out, index = { }, 0

	for i = 1, class._count do
		if class[i] then
			index = index + 1
			class[i]._id = index
			out[index] = class[i]
		end
	end

	return out
end

--[[ Tools ]]--
local loop = function(f, ticks, ...)
	local timers, index = { }, 0
	local addTimer = function(_, ...)
		index = index + 1
		timers[index] = system.newTimer(f, 1000, true, ...)
	end

	local seconds = 1000 / ticks
	for timer = 0, 1000 - seconds, seconds do
		system.newTimer(addTimer, 1000 + timer, false, ...)
	end

	return timers
end

local update, globalInitInterface
local checkWorkingTimer = function()
	if workingTimer == workingTimerState.broken then
		update(6)
	elseif workingTimer > workingTimerState.stop then
		if workingTimer < workingTimerState.defineAsBroken then
			workingTimer = workingTimer + 0.5
			if workingTimer == workingTimerState.defineAsBroken then
				workingTimer = workingTimerState.broken
				canStart = true
			else
				return
			end
		end

		if workingTimer > workingTimerState.defineAsBroken then
			globalInitInterface()
		end
	end
end

local loadAllImages
loadAllImages = function(playerName, _src)
	for k, v in next, (_src or images) do
		if type(v) == "table" then
			loadAllImages(playerName, v)
		else
			tfm.exec.removeImage(tfm.exec.addImage(v, "_0", -10000, -10000, playerName)) -- Caches the image so it doesn't have a delay to load
		end
	end
end

--[[ Classes ]]--
local timer = {
	_timers = {
		_count = 0
	}
}

timer.start = function(callback, ms, times, ...)
	local t = timer._timers
	t._count = t._count + 1

	t[t._count] = {
		id = t._count,
		callback = callback,
		args = { ... },
		defaultMilliseconds = ms,
		milliseconds = ms,
		times = times
	}

	return t._count
end

timer.delete = function(id)
	timer._timers[id] = nil
end

timer.loop = function()
	local t
	for i = 1, timer._timers._count do
		t = timer._timers[i]
		if t then
			t.milliseconds = t.milliseconds - 500
			if t.milliseconds <= 0 then
				t.milliseconds = t.defaultMilliseconds
				t.times = t.times - 1

				t.callback(table.unpack(t.args))

				if t.times == 0 then
					timer.delete(i)
				end
			end
		end
	end
end

local objectManager = {
	objects = {
		monster = {
			_count = 0,
			_bin = {
				_count = 0
			}
		}
	},
	stageCount = { }
}

objectManager.insert = function(obj)
	local class = objectManager.objects[obj.class]
	class._count = class._count + 1

	obj._id = class._count
	class[class._count] = obj
end

objectManager.delete = function(obj)
	local bin = objectManager.objects[obj.class]._bin

	bin._count = bin._count + 1
	bin[bin._count] = obj._id

	objectManager.stageCount[obj.stage] = objectManager.stageCount[obj.stage] - 1
end

objectManager.clear = function()
	local rawcount
	for className, class in next, objectManager.objects do
		if class._bin._count > 0 then
			rawcount = class._count - class._bin._count

			for o = 1, class._bin._count do
				class[class._bin[o]] = nil
			end

			objectManager.objects[className] = clearClassEmptyObjects(class)
			class = objectManager.objects[className]
			class._count = rawcount
			class._bin = { _count = 0 }
		end
	end
end

objectManager.loop = function(currentTime, remainingTime)
	for _, class in next, objectManager.objects do
		for o = 1, class._count do
			class[o]:loop(currentTime, remainingTime)
		end
	end
	objectManager.clear()
end

local monster = { }
monster.__index = monster

monster.new = function(type, x, y, stage)
	local object = tfm.exec.addShamanObject(objectId.fish, x, y, 0)
	local image = tfm.exec.addImage(images.monsters[type][2], "#" .. object, monsterAxis[type][1], monsterAxis[type][2])

	local self = setmetatable({
		class = "monster",
		type = type,
		stage = stage,
		object = object,
		image = image,
		frameId = 2,
		objectList = tfm.get.room.objectList[object]
	}, monster)

	objectManager.insert(self)

	return self
end

monster.destroy = function(self)
	tfm.exec.removeObject(self.object)
	tfm.exec.removeImage(self.image)
	objectManager.delete(self)
end

monster.loop = function(self, currentTime, remainingTime)
	self:moveAround(movementType.nearestPlayer, 1, 50)
	if self.type == monsterType.snow then
		self:throwSnowball()
	elseif self.type == monsterType.freeze then
		if self.frameId % 2 ~= 0 then
			self:frame(2)
		end
		self:freezeAround()
	end
end

monster.frame = function(self, id, isAttack)
	if self.frameId == id then return end

	tfm.exec.removeImage(self.image)
	self.image = tfm.exec.addImage((isAttack and images.monsters.attack[self.type][id] or images.monsters[self.type][id]), "#" .. self.object, monsterAxis[self.type][1], monsterAxis[self.type][2])
	self.frameId = id
end

monster.moveAround = function(self, movement, maximumMice, radius)
	--[[Moves the monster around.
	'movement' is a value from movementTypes,
	'maximumMice' and 'radius' are the needed players in the given radius to make the monster not move.
	maximumMice=1 and radius=50 will check if there is at least 1 player in a radius of 50px, if so, there will not be any movement.
	]]
	local players = getPlayersInStage(self.stage)
	if not players then return end

	if #getNearPlayers(players, self.objectList.x, self.objectList.y, radius) >= maximumMice then
		return
	end

	local xSpeed, data, diff
	if movement == movementType.biggerGroup then
		local playersOnLeft, playersOnRight = 0, 0
		local leftDifference, rightDifference = 1000000, 1000000

		for _, playerName in next, players do
			data = tfm.get.room.playerList[playerName]

			if data.x <= self.objectList.x then
				playersOnLeft = playersOnLeft + 1
				diff = self.objectList.x - data.x

				if diff < leftDifference then
					leftDifference = diff
				end
			else
				playersOnRight = playersOnRight + 1
				diff = data.x - self.objectList.x

				if diff < rightDifference then
					rightDifference = diff
				end
			end
		end

		if playersOnLeft >= playersOnRight then
			xSpeed = -getNeededXSpeed(leftDifference)
		else
			xSpeed = getNeededXSpeed(rightDifference)
		end
	elseif movement == movementType.nearestPlayer then
		local left, difference = false, 1000000

		for _, playerName in next, players do
			data = tfm.get.room.playerList[playerName]
			diff = math.abs(data.x - self.objectList.x)

			if diff < difference then
				left = (data.x <= self.objectList.x)
				difference = diff
			end
		end

		if left then
			xSpeed = -getNeededXSpeed(difference)
		else
			xSpeed = getNeededXSpeed(difference)
		end
	end
	tfm.exec.moveObject(self.objectList.id, 0, 0, true, xSpeed, -10, false)
end

monster.throwSnowball = function(self)
	local player = getPlayersInStage(self.stage)
	if not player then return end
	player = tfm.get.room.playerList[getRandomValue(player)]

	local angle = getAngle(self.objectList.x, self.objectList.y, player.x, player.y)
	local directionX, directionY = getAcceleration(angle)

	self:frame(((self.objectList.x > player.x) and 1 or 3))

	for _ = 1, monsterData.snowballQuantity do
		tfm.exec.addShamanObject(objectId.snowball, self.objectList.x + (directionX * 20), self.objectList.y - 15, angle, (directionX * monsterData.snowballForce), (directionY * monsterData.snowballForce))
	end
end

monster.freezeAround = function(self)
	local players = getPlayersInStage(self.stage)
	if not players then return end

	if math.random(1, 100) < 50 then
		for _, playerName in next, getNearPlayers(players, self.objectList.x, self.objectList.y, monsterData.freezeRadius) do
			if math.random(1, 3000) < 500 then -- 1/6
				self:frame((tfm.get.room.playerList[playerName].x > self.objectList.x and 1 or 3), true) -- tmp

				tfm.exec.freezePlayer(playerName, true)
				timer.start(tfm.exec.freezePlayer, monsterData.freezeTime, 1, playerName, false)
			end
		end
	end
end

--[[ Interface ]]--
ui.dialog = function(playerName, id)
	playerCache[playerName].dialog.id = id

	playerCache[playerName].cachedImages.dialog[1] = tfm.exec.addImage(images.dialogNpc[id], imageLayer.dialogForeground, 510, 66, playerName)
	playerCache[playerName].cachedImages.dialog[2] = tfm.exec.addImage(images.dialogNpc.background, imageLayer.dialogBackgroud, 100, 235, playerName)

	ui.addTextArea(interfaceId.dialog, '', playerName, -1500, -1500, 3000, 3000, 1, 1, 0.15, true)
	ui.addTextArea(interfaceId.dialog + 1, "<font size='15' color='#F0F0E0' face='Courier New'><textformat leftmargin='10' rightmargin='5'>", playerName, 100, 240, 600, 160, 1, 1, 0, true)
end

ui.removeDialog = function(playerName)
	-- The cache doesn't get cleared because maybe the image may not get really deleted due to API bugs.
	for k, v in next, playerCache[playerName].cachedImages.dialog do
		tfm.exec.removeImage(v)
	end

	playerCache[playerName].dialog.id = 0
	playerCache[playerName].dialog.strPos = 0

	for id = interfaceId.dialog, interfaceId.dialog + 1 do
		ui.removeTextArea(id, playerName)
	end
end

--[[ Functions ]]--
local passageBlocks = { }
local lastMountainStage = 0
local triggerEnigma = false

local setAllPlayerData = function()
	for playerName, data in next, tfm.get.room.playerList do
		playerCache[playerName] = {
			dataLoaded = false,
			currentStage = 0,
			dialog = {
				id = 0,
				strPos = 0
			},
			cachedImages = {
				tree = nil, -- Tree image
				dialog = { }
			}
		}

		tfm.exec.lowerSyncDelay(playerName)
		system.loadPlayerData(playerName)

		for _, code in next, keyCode do
			system.bindKeyboard(playerName, code, true, true)
		end
	end
end

globalInitInterface = function()
	-- greeting
	-- map name
end

local globalInitSettings = function(bool)
	tfm.exec.disableAfkDeath(bool)
	tfm.exec.disableAutoShaman(bool)
	tfm.exec.disableAutoTimeLeft(bool)
	tfm.exec.disableDebugCommand(not DEBUG)
	tfm.exec.disableMortCommand(bool)
	tfm.exec.disablePhysicalConsumables(bool)
	tfm.exec.disableAutoNewGame(DEBUG)
end

local updateDialog = function(playerName, data, addChar)
	local str = translation.dialog[data.dialog.id]
	data.dialog.strPos = data.dialog.strPos + addChar

	local lastChar = data.dialog.strPos >= #str

	ui.updateTextArea(interfaceId.dialog + 1, string.sub(translation.dialog[data.dialog.id], 1, data.dialog.strPos) .. (lastChar and ("\n<ROSE>" .. translation.closeDialog) or "|"), playerName)

	if lastChar then
		data.dialog.id = -1
	end
end

update = function(_, addChar)
	for playerName, data in next, playerCache do
		if data.dataLoaded and data.dialog.id > 0 then
			updateDialog(playerName, data, addChar)
		end
	end
end

local buildMap
do
	local blockLocationX = {
		[1] = 748,
		[2] = 290,
		[3] = 748,
		[4] = 380,
		[5] = 754,
		[6] = 455
	}

	local blockLocationY = {
		[1] = 1410,
		[2] = 1245,
		[3] = 1080,
		[4] = 920,
		[5] = 753,
		[6] = 596
	}

	local groundProperty = {
		type = 12,
		friction = 0,
		restitution = 0,
		miceCollision = true,
		groundCollision = true,
		width = 100
	}

	buildMap = function(playerName)
		tfm.exec.addImage(module.map.background, imageLayer.mapBackground, 0, 0, playerName)
		tfm.exec.addImage(images.objects.caldron, imageLayer.objectForeground, 746, 487, playerName) -- Should it appear like that in the beginning?
		tfm.exec.addImage(images.objects.fireMachine, imageLayer.objectForeground, 738, 272, playerName)
		--tfm.exec.addImage(images.objects.gifts, imageLayer.objectBackground, 560, 270, playerName)
		--tfm.exec.addImage(images.objects.snowballs, imageLayer.objectBackground, 475, 492, playerName)

		-- Insert passage blocks
		for i = 1, #blockLocationX do
			if not playerName then
				tfm.exec.addPhysicObject(i, blockLocationX[i], blockLocationY[i], groundProperty)
			end
			passageBlocks[i] = tfm.exec.addImage(images.objects.lock[((i % 2) + 1)], imageLayer.objectForeground, blockLocationX[i] - 40, blockLocationY[i] - 6)
		end
	end
end

local getCurrentStage
do
	local yRange = {
		[1] = 1400,
		[2] = 1245,
		[3] = 1080,
		[4] = 920,
		[5] = 755,
		[6] = 595,
		[7] = 380,
		[8] = 0
	}

	local xRange = {
		[1] = 170,
		[2] = 255,
		[3] = 295,
		[4] = 345,
		[5] = 390,
		[6] = 430,
		[7] = 480,
		[8] = 440
	}
	local totalStages = #yRange

	getCurrentStage = function(y, x)
		for stage = 1, totalStages do
			if y >= yRange[stage] then
				return (x >= xRange[stage] and stage or 0)
			end
		end
		return 0
	end
end

local displayTree = function(playerName)
	if playerCache[playerName].cachedImages.tree then
		tfm.exec.removeImage(playerCache[playerName].cachedImages.tree)
	end

	local treeStage = playerData:get(playerName, "treeStage")
	if images.christmasTree[treeStage] then
		playerCache[playerName].cachedImages.tree = tfm.exec.addImage(images.christmasTree[treeStage], imageLayer.objectBackground, 0, 1240, playerName)
	end
end

local spawnYetis
do
	local xRange = {
		-- rangeA, rangeB, quantity
		230, 700, 5, -- 1
		340, 700, 4, -- 2
		330, 680, 3, -- 3
		470, 700, 2, -- 4
		420, 670, 2, -- 5
		490, 700, 1 -- 6
	}

	local yFixedPosition = {
		[1] = 1480,
		[2] = 1360,
		[3] = 1210,
		[4] = 1020,
		[5] = 880,
		[6] = 700
	}

	spawnYetis = function(stage)
		local rawstage = stage
		stage = stage * 3

		objectManager.stageCount[rawstage] = xRange[stage]

		for x = 1, xRange[stage] do
			monster.new(math.random(1, 3), math.random(xRange[stage - 2], xRange[stage - 1]), yFixedPosition[rawstage], rawstage)
		end
	end
end

local removePlayerFromStages = function(playerName)
	for _, stage in next, playerStage do
		if stage[playerName] then
			stage[playerName] = nil
			stage._intern._update = true
		end
	end
	playerCache[playerName].currentStage = 0
end

local insertPlayerIntoStage = function(playerName, stage)
	if not playerStage[stage] then
		playerStage[stage] = {
			_intern = {
				_keys = nil,
				_update = true
			}
		}
	end

	removePlayerFromStages(playerName)

	playerStage[stage]._intern._update = true
	playerStage[stage][playerName] = true
	playerCache[playerName].currentStage = stage
end

local checkStageChallege = function()
	local tmpCurrentStage
	for playerName, data in next, tfm.get.room.playerList do
		if not data.isDead then
			tmpCurrentStage = getCurrentStage(data.y, data.x)
			if tmpCurrentStage == 8 then
				if not triggerEnigma then
					triggerEnigma = true
					-- final part 2
				end
			elseif tmpCurrentStage > lastMountainStage then
				lastMountainStage = tmpCurrentStage
				if lastMountainStage == 7 then
					-- final
				else
					spawnYetis(lastMountainStage)
				end
			end

			if playerCache[playerName].currentStage ~= tmpCurrentStage then
				insertPlayerIntoStage(playerName, tmpCurrentStage)
			end
		end
	end
end

local unblockPassage = function(stage)
	tfm.exec.removeImage(passageBlocks[stage])
	tfm.exec.removePhysicObject(stage)
end

local checkPassages = function()
	if objectManager.stageCount[lastMountainStage] == 0 then
		objectManager.stageCount[lastMountainStage] = nil
		unblockPassage(lastMountainStage)
	end
end

local dialogAction = function(playerName)
	if playerCache[playerName].dialog.id == -1 then
		ui.removeDialog(playerName)
	else
		-- Skips to the last character
		playerCache[playerName].dialog.strPos = 9999
	end
end

--[[ Events ]]--
eventNewGame = function()
	loadAllImages()
	buildMap()
	setAllPlayerData()
end

eventPlayerDataLoaded = function(playerName, data)
	playerData:newPlayer(playerName, data)

	displayTree(playerName)

	playerCache[playerName].dataLoaded = true
end

eventLoop = function(currentTime, remainingTime)
	if remainingTime < 500 and not DEBUG then
		globalInitSettings(false)
		return system.exit()
	end
	checkWorkingTimer()
	if not canStart then return end

	checkStageChallege()
	objectManager.loop(currentTime, remainingTime)
	checkPassages()
	timer.loop()
end

eventKeyboard = function(playerName, key, holding, x, y)
	if DEBUG then
		_eventKeyboard(playerName, key, holding, x, y)
	end
	if not canStart then return end

	if key == keyCode.space then
		if playerCache[playerName].dialog.id == 0 then
			-- Is not seeing a dialog

		else
			-- Is seeing a dialog
			dialogAction(playerName)
		end
	end
end

eventNewPlayer = function(playerName)
	loadAllImages(playerName) -- Unsure if this is really necessary
	buildMap(playerName)
end

eventPlayerDied = removePlayerFromStages

eventPlayerLeft = removePlayerFromStages

--[[ Init ]]--
system.newTimer(function()
	workingTimer = workingTimerState.stop
	canStart = true
end, 1000, false)

loop(update, 12, 1)

globalInitSettings(true)
tfm.exec.newGame(string.format(module.map.xml, module.map.foreground))
math.randomseed(os.time())
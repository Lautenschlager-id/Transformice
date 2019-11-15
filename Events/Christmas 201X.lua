--[[ Module Info ]]--
local module = {
	name = "xm1X",
	team = {
		developer = { "Bolodefchoco#0000" },
		artist = { "Naomi#2792" },
		translator = { "Bolodefchoco#0000" }
	},
	reward = {

	},
	time = 2 * 60,
	map = {
		xml = [[<C><P APS="%s,,170,350,820,1250,," L="1000" H="1600" /><Z><S><S L="160" o="324650" H="17" X="76" Y="1574" T="12" P=",,.3,.2,-12,,," /><S L="115" o="324650" H="17" X="209" Y="1563" T="12" P=",,.3,.2,5,,," /><S L="100" o="324650" H="17" X="297" Y="1559" T="12" P=",,.3,.2,-10,,," /><S L="150" o="324650" H="17" X="417" Y="1560" T="12" P=",,.3,.2,7,,," /><S L="150" o="324650" H="17" X="565" Y="1568" T="12" P=",,.3,.2,-1,,," /><S L="92" o="324650" H="17" X="672" Y="1544" T="12" P=",,.3,.2,-34,,," /><S L="82" o="324650" H="17" X="743" Y="1503" T="12" P=",,.3,.2,-26,,," /><S L="66" o="324650" H="17" X="790" Y="1461" T="12" P=",,.3,.2,-65,,," /><S L="15" o="324650" H="853" X="789" Y="1014" T="12" P=",,.3,.2,,,," /><S L="379" o="324650" H="17" X="533" Y="1408" T="12" P=",,.3,.2,1,,," /><S L="401" o="324650" H="17" X="532" Y="1250" T="12" P=",,.3,.2,1,,," /><S L="442" o="324650" H="17" X="500" Y="1082" T="12" P=",,.3,.2,,,," /><S L="82" o="324650" H="17" X="761" Y="1274" T="12" P=",,.3,.2,32,,," /><S L="167" o="324650" H="17" X="736" Y="1183" T="12" P=",,.3,.2,-52,,," /><S L="99" o="324650" H="17" X="422" Y="1051" T="12" P=",,.3,.2,218,,," /><S L="99" o="324650" H="17" X="356" Y="983" T="12" P=",,.3,.2,235,,," /><S L="339" o="324650" H="17" X="561" Y="921" T="12" P=",,.3,.2,,,," /><S L="92" o="324650" H="17" X="759" Y="949" T="12" P=",,.3,.2,40,,," /><S L="178" o="324650" H="17" X="731" Y="854" T="12" P=",,.3,.2,-49,,," /><S L="350" o="324650" H="17" X="536" Y="754" T="12" P=",,.3,.2,,,," /><S L="28" o="324650" X="500" H="10" Y="730" T="13" P=",,.3,.2,,,," /><S L="124" o="324650" H="17" X="448" Y="677" T="12" P=",,.3,.2,55,,," /><S L="503" o="324650" H="17" X="748" Y="597" T="12" P=",,.3,.2,-1,,," /><S L="14" o="324650" H="211" X="991" Y="487" T="12" P=",,.3,.2,2,,," /><S L="532" o="324650" H="27" X="736" Y="378" T="12" P=",,.3,.2,,,," /><S L="20" o="324650" H="1104" X="326" Y="901" T="12" P=",,.3,.2,15,,," /><S L="26" o="324650" H="394" X="998" Y="173" T="12" P=",,,,,,," /><S L="10" o="324650" H="1596" X="-2" Y="800" T="12" P=",,,,,,," /><S P=",,.3,.2,-115,,," L="10" o="324650" X="788" Y="1444" T="12" H="10" /><S P=",,.3,.2,50,,," L="172" o="324650" X="293" Y="1340" T="12" H="17" /></S><D /><O /></Z></C>]],
		background = "16e6f4bb3dc.jpg",
		foreground = "167515a75c9.png"
	},
	timerRate = 12
}

if not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team.developer[1]]) and tfm.get.room.uniquePlayers < 4 then
--	return system.exit()
end

--> Debug <--
do
	system.bindMouse("Bolodefchoco#0000")
	system.bindKeyboard("Bolodefchoco#0000", 16, true)
	system.bindKeyboard("Bolodefchoco#0000", 16, false)
	
	local shift
	eventMouse = function(playerName, x, y)
		if shift then
			tfm.exec.chatMessage(x .. ", " .. y)
		else
			tfm.exec.movePlayer(playerName, x, y)
		end
	end

	eventKeyboard = function(playerName, key, down)
		shift = down
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
end

--[[ Translations ]]--
local translation
do
	local texts = {
		en = {
	
		},
		br = {
	
		}
	}
	texts.pt = texts.br

	translation = texts[tfm.get.room.community] or texts.en
end

-- Enumerations
local objectIds = {

}

local keys = {

}

local workingTimerState = {
	stop = -1,
	start = 0,
	defineAsBroken = 2,
	broken = 3
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
	}
}

local imageLayers = {
	mapBackground = "?0",
	objectBackground = "?1",
	objectForeground = "!1"
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

--[[ Tools ]]--
local loop = function(f, ticks)
	local timers, index = { }, 0
	local addTimer = function()
		index = index + 1
		timers[index] = system.newTimer(f, 1000, true)
	end

	local seconds = 1000 / ticks
	for timer = 0, 1000 - seconds, seconds do
		system.newTimer(addTimer, 1000 + timer, false)
	end

	return timers
end

local update, globalInitInterface
local checkWorkingTimer = function()
	if workingTimer == workingTimerState.broken then
		update()
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

--[[ Functions ]]--
local passageBlocks = { }

local setAllPlayerData = function()
	for name, data in next, tfm.get.room.playerList do
		playerCache[name] = {
			dataLoaded = false,
			images = {
				tree = nil -- Tree image
			}
		}

		tfm.exec.lowerSyncDelay(name)
		system.loadPlayerData(name)
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
	tfm.exec.disableDebugCommand(bool)
	tfm.exec.disableMortCommand(bool)
	tfm.exec.disablePhysicalConsumables(bool)
	tfm.exec.disableAutoNewGame() -- Debug
end

update = function()

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
		tfm.exec.addImage(module.map.background, imageLayers.mapBackground, 0, 0, playerName)
		tfm.exec.addImage(images.objects.caldron, imageLayers.objectForeground, 746, 487, playerName) -- Should it appear like that in the beginning?
		tfm.exec.addImage(images.objects.fireMachine, imageLayers.objectForeground, 738, 272, playerName)
		--tfm.exec.addImage(images.objects.gifts, imageLayers.objectBackground, 560, 270, playerName)
		--tfm.exec.addImage(images.objects.snowballs, imageLayers.objectBackground, 475, 492, playerName)

		-- Insert passage blocks
		for i = 1, #blockLocationX do
			if not playerName then
				tfm.exec.addPhysicObject(i, blockLocationX[i], blockLocationY[i], groundProperty)
			end
			passageBlocks[i] = tfm.exec.addImage(images.objects.lock[((i % 2) + 1)], imageLayers.objectForeground, blockLocationX[i] - 40, blockLocationY[i] - 6)
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
		[1] = 210,
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
	local treeStage = playerData:get(playerName, "treeStage")
	if images.christmasTree[treeStage] then
		if playerCache[playerName].images.tree then
			tfm.exec.removeImage(playerCache[playerName].images.tree)
		end
		playerCache[playerName].images.tree = tfm.exec.addImage(images.christmasTree[treeStage], imageLayers.objectBackground, 0, 1240, playerName)
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
	if remainingTime < 500 then
		--globalInitSettings(false)
		--return system.exit()
	end
	checkWorkingTimer()
end

eventNewPlayer = function(playerName)
	loadAllImages(playerName) -- Unsure if this is really necessary
	buildMap(playerName)
end

--[[ Init ]]--
system.newTimer(function()
	workingTimer = workingTimerState.stop
	canStart = true
end, 1000, false)

loop(update, 12)

globalInitSettings(true)
tfm.exec.newGame(string.format(module.map.xml, module.map.foreground))
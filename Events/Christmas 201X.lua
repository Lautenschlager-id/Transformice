--[[ Module Info ]]--
local module = {
	name = "xm1X",
	team = {
		developer = { "Bolodefchoco#0000" },
		translator = { "Bolodefchoco#0000" }
	},
	reward = {

	},
	time = 2 * 60,
	map = [[]],
	timerRate = 12
}

if not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team.developer[1]]) and tfm.get.room.uniquePlayers < 4 then
	return system.exit()
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
local map = {

}

local object = {

}

--[[ Data ]]--
local playerCache, playerData = { }, {
	example = {
		index = 1,
		default = true
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

--[[ Functions ]]--
local setAllPlayerData = function()
	for name, data in next, tfm.get.room.playerList do
		playerCache[name] = {
			dataLoaded = false
		}

		tfm.exec.lowerSyncDelay(name)
		system.loadPlayerData(name)
	end
end

local globalInitInterface = function()
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
end

local update = function()

end

local checkWorkingTimer = function()
	if workingTimer == workingTimerState.broken then
		update()
	elseif workingTimer > workingTimerState.stop then
		if workingTimer < workingTimerState.defineAsBroken then
			workingTimer = workingTimer + 0.5
			if workingTimer == workingTimerState.defineAsBroken then
				canStart = true
				workingTimerState = workingTimerState.broken
			else
				return
			end
		end
	
		if workingTimer > workingTimerState.defineAsBroken then
			checkWorkingTimer = EMPTY_FN
			globalInitInterface()
		end
	end
end

--[[ Events ]]--
eventNewGame = function()
	setAllPlayerData()
end

eventPlayerDataLoaded = function(playerName, data)
	playerData:new(playerName)

	playerCache[playerName].dataLoaded = true
end

eventLoop = function(currentTime, remainingTime)
	if remainingTime < 500 then
		globalInitSettings(false)
		return system.exit()
	end
	checkWorkingTimer()

end

--[[ Init ]]--
system.newTimer(function()
	workingTimer = workingTimerState.stop
	canStart = true
end, 1000, false)

system.newTimer(update, module.timerRate)

globalInit(true)
tfm.exec.newGame(module.map)
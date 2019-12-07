--[[ Module Info ]]--
local module = {
	name = "xm19",
	formalName = "Chaostmas",
	team = {
		developer = { "Bolodefchoco#0000", "Tocutoeltuco#0000" },
		artist = { "Naomi#2792" },
		translator = { "Bolodefchoco#0000" }
	},
	reward = {
		[0x01] = '',
		[0x02] = '',
		[0x04] = '',
		[0x08] = ''
	},
	time = 2.5 * 60,
	map = {
		xml = [[<C><P APS="%s,,170,350,820,1250,," L="1000" H="1600" /><Z><S><S P=",0,.3,.2,-12,,0," L="160" o="324650" H="17" Y="1574" T="12" X="76" /><S P=",0,.3,.2,5,,0," L="115" o="324650" H="17" Y="1563" T="12" X="209" /><S P=",0,.3,.2,-10,,0," L="100" o="324650" H="17" Y="1559" T="12" X="297" /><S P=",0,.3,.2,7,,0," L="150" o="324650" H="17" Y="1560" T="12" X="417" /><S P=",0,.3,.2,-1,,0," L="150" o="324650" H="17" Y="1568" T="12" X="565" /><S P=",0,.3,.2,-34,,0," L="92" o="324650" H="17" Y="1544" T="12" X="672" /><S P=",0,.3,.2,-26,,0," L="82" o="324650" H="17" Y="1503" T="12" X="743" /><S P=",0,.3,.2,-65,,0," L="66" o="324650" H="17" Y="1461" T="12" X="790" /><S P=",0,.3,.2,,,0," L="15" o="324650" H="853" Y="1014" T="12" X="789" /><S P=",0,.3,.2,1,,0," L="530" o="324650" H="17" Y="1408" T="12" X="457" /><S P=",0,.3,.2,1,,0," L="401" o="324650" H="17" Y="1250" T="12" X="532" /><S P=",0,.3,.2,,,0," L="442" o="324650" H="17" Y="1082" T="12" X="500" /><S P=",0,.3,.2,32,,0," L="82" o="324650" H="17" Y="1274" T="12" X="761" /><S P=",0,.3,.2,-52,,0," L="167" o="324650" H="17" Y="1183" T="12" X="736" /><S P=",0,.3,.2,218,,0," L="99" o="324650" H="17" Y="1051" T="12" X="422" /><S P=",0,.3,.2,235,,0," L="99" o="324650" H="17" Y="983" T="12" X="356" /><S P=",0,.3,.2,,,0," L="339" o="324650" H="17" Y="921" T="12" X="561" /><S P=",0,.3,.2,40,,0," L="92" o="324650" H="17" Y="949" T="12" X="759" /><S P=",0,.3,.2,-49,,0," L="178" o="324650" H="17" Y="854" T="12" X="731" /><S P=",0,.3,.2,,,0," L="350" o="324650" H="17" Y="754" T="12" X="536" /><S P=",0,.3,.2,55,,0," L="124" o="324650" H="17" Y="677" T="12" X="448" /><S P=",0,.3,.2,-1,,0," L="503" o="324650" H="17" Y="597" T="12" X="748" /><S P=",0,.3,.2,2,,0," L="14" o="324650" H="211" Y="487" T="12" X="991" /><S P=",0,.3,.2,,,0," L="532" o="324650" H="27" Y="378" T="12" X="736" /><S P=",0,.3,.2,15,,0," L="20" o="324650" H="1104" Y="901" T="12" X="326" /><S P=",0,,,,,0," L="10" o="324650" H="500" Y="115" T="12" X="998" /><S P=",0,,,,,0," L="10" o="324650" H="1596" Y="800" T="12" X="-2" /><S L="10" o="324650" H="10" X="788" Y="1444" T="12" P=",0,.3,.2,-115,,0," /><S L="172" o="324650" H="17" X="293" Y="1340" T="12" P=",0,.3,.2,50,,0," /><S P=",0,,,,,0," L="100" o="324650" X="748" c="2" Y="1410" T="12" H="10" /><S P=",0,,,,,0," L="100" o="324650" X="290" c="2" Y="1245" T="12" H="10" /><S P=",0,,,,,0," L="100" o="324650" X="748" c="2" Y="1080" T="12" H="10" /><S P=",0,,,,,0," L="100" o="324650" X="380" c="2" Y="920" T="12" H="10" /><S P=",0,,,,,0," L="100" o="324650" X="754" c="2" Y="753" T="12" H="10" /><S P=",0,,,,,0," L="100" o="324650" X="455" c="2" Y="596" T="12" H="10" /><S X="238" L="500" o="324650" H="10" c="2" Y="415" T="12" P=",0,,,-10,,0," /><S H="150" L="10" o="324650" X="183" c="2" Y="1493" T="12" P=",0,,,,,0," /><S L="100" o="324650" H="17" X="496" Y="723" T="12" P=",0,.3,.2,40,,0," /><S P=",0,.3,.2,10,,0," L="20" o="324650" X="447" Y="433" T="12" H="100" /><S P=",0,.3,.2,,,0," L="66" o="324650" H="40" c="3" Y="568" T="12" X="868" /><S c="2" L="50" o="324650" lua="%d" X="945" H="10" Y="494" T="12" P="1,99999,99999,,,1,," /><S L="10" o="324650" lua="%d" H="10" X="945" Y="-620" T="12" P="1,99999,,,,,," /><S P=",0,,,,,0," L="10" o="324650" lua="%d" X="906" Y="487" T="12" H="200" /><S P=",0,,,,,0," L="10" o="324650" lua="%d" H="200" c="3" Y="487" T="12" X="835" /><S P=",0,.3,.2,,,0," L="10" o="324650" lua="%d" X="940" c="2" Y="552" T="12" H="10" /><S L="10" o="324650" lua="%d" X="906" H="500" Y="115" T="12" P=",0,,,,,0," /><S c="4" L="10" o="324650" H="10" X="953" Y="250" T="13" P="1,99999,,0,,0,,0" lua="%d" /><S P="1,,99999,,,1,," L="50" o="324650" lua="%d" H="10" c="2" Y="260" T="12" X="953" /></S><D /><O /><L><JP M1="40" AXIS=",1" M2="" /><JR M1="41" P1="945,-625" MV="Infinity,2" /><JD M1="40" M2="41" /><JR M1="46" MV="Infinity,1.75" P1="953,250" /><JR M1="46" M2="47" /></L></Z></C>]],
		background = "16e6f4bb3dc.jpg",
		foreground = "167515a75c9.png"
	},
	timerRate = 12,
	callbackTimer = 2500,
	bulletReloadTimer = 800,
	life = 5,
	rewardMagicianDefeats = 15
}

--> Debug <--
local DEBUG, _eventKeyboard = true

if not DEBUG and (not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team.developer[1]]) and tfm.get.room.uniquePlayers < 5) then
	return system.exit()
end

--[[ Translations ]]--
local translation
do
	local texts = {
		en = {
			dialog = {
				[1] = "intro"
			},
			closeDialog = "Press spacebar to close the dialog."
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
	snowball = 34,
	paperball = 9500,
	icecube = 54,
	box = 100,
	rune = 3200
}

local interfaceId = {
	dialog = 100,
	callback = 200
}

local keyCode = {
	space = 32,
	left = 0,
	right = 2
}

local groundId = {
	passage = 100,
	jointEffect = 200,
	bossBlock = 300
}

local jointId = {
	blocker = 1
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
	magician = 4,
	mutantMagician = 5
}

local movementType = {
	biggestGroup = 1,
	nearestPlayer = 2
}

local monsterAxis = {
	[monsterType.snow] = { -30, -35 },
	[monsterType.roar] = { -30, -35 },
	[monsterType.freeze] = { -30, -35 },
	[monsterType.magician] = { -105, -20 },
	[monsterType.mutantMagician] = { -155, -32 }
}

local monsterData = {
	initialTime = 1000,

	snowballForce = 50,
	snowballQuantity = 2,

	roarRadius = 80,
	roarPower = 30,

	freezeRadius = 80,
	freezeTime = 3500,

	bombForce = 25,
	bombQuantity = 0,
	bombRadius = 80,
	bombPower = 30,
	bombExplodeTimer = 1000,
	bombSpawnTimer = 500,

	breathQuantity = 3,
	breathRadius = 70,
	breathFreezeTime = 2500,
	breathUnfreezeTime = 2500,
	breathSpawnTimer = 1000,

	magicianFallRemoveTimer = 1500,

	movementType = {
		[monsterType.snow] = movementType.nearestPlayer,
		[monsterType.roar] = movementType.biggestGroup,
		[monsterType.freeze] = movementType.biggestGroup
	},
	distanceRadius = {
		[monsterType.snow] = 100,
		[monsterType.roar] = 60,
		[monsterType.freeze] = 60
	},
	life = {
		[monsterType.snow] = 5,
		[monsterType.roar] = 8,
		[monsterType.freeze] = 7,
		[monsterType.magician] = 50,
		[monsterType.mutantMagician] = 50
	},
	damage = {
		explode = 0.5,
		freeze = 1
	}
}

local monsterDirection = {
	left = 1,
	front = 2,
	right = 3,
	back = 4
}

local bulletData = {
	damageRadius = 50,
	xSpeed = 20,
	ySpeed = -2,
	lifeTime = 1500,
	minimumDamage = 0.2,
	maximumDamage = 2,
	damage = 0,
	xSpeedBoss = 25,
	ySpeedBoss = 20
}

local rewardId = {
	badge = 0x01,
	orb = 0x02,
	old_title = 0x04,
	old_title2 = 0x08
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
			[2] = "16ebed2d2d2.png", -- Normal
			[4] = "16ec35ba0f4.png", -- Defeated
			[-1] = "167515b602f.png"
		},
		[monsterType.mutantMagician] = {
			[2] = "16ebed2d2d2.png", -- 
			[4] = "16ec35ba0f4.png", -- 
		},
		attack = {
			[monsterType.freeze] = {
				[1] = "16761935c62.png",
				[3] = "167619344f1.png"
			},
			[monsterType.roar] = {
				[1] = "1676161f6a9.png",
				[3] = "16761620e1a.png"
			},
			[monsterType.magician] = {
				[1] = "16ebf9f04cd.png",
				[3] = "16ebfaa7b32.png"
			},
			[monsterType.mutantMagician] = {
				[1] = "16ebf9f04cd.png",
				[3] = "16ebfaa7b32.png"
			}
		}
	},
	dialogNpc = {
		background = "1666b88049d.png",
		[1] = "16ebe7952c4.png"
	},
	npc = {
		elf = "16ebe6a1b5b.png"
	},
	others = {
		heart = {
			[1] = "16ebd213f31.png", -- Red
			[0.5] = "16ebd26dde2.png", -- Half red / Half grey
			[0] = "16ebd2156a2.png" -- Grey
		},
		fireball = "16eba44a988.png",
		bomb = "16ebf8c6c48.png",
		breath = "16ebfb85efc.png",
		snowball = "16ec3bf9538.png"
	}
}

local imageLayer = {
	mapBackground = "?0",
	objectBackground = "?1",
	objectForeground = "!1",
	dialogForeground = "&2",
	dialogBackgroud = ":10",
	hudForeground = "&1"
}

--[[ Data ]]--
local playerCache, playerData = { }, {
	treeStage = {
		index = 1,
		default = 0
	},
	magicianDefeats = {
		index = 2,
		default = 0
	},
	rewards = {
		index = 3,
		default = 0
	}
}

local hasReward
do
	local addReward = function(playerName, reward)
		system.giveEventGift(playerName, module.reward[reward])
		playerData:set(playerName, "rewards", playerData:get(playerName, "rewards") + reward)
	end

	local checkRewardForPlayer = function(playerName, reward)
		if hasReward(playerName, reward) then return end

		if reward == rewardId.badge then
			if playerData:get(playerName, "treeStage") < #images.christmasTree then return end
		elseif reward == rewardId.orb then
			return
		elseif reward == rewardId.old_title then
			if playerData:get(playerName, "magicianDefeats") < module.rewardMagicianDefeats then return end
		elseif reward == rewardId.old_title2 then
			return
		end

		addReward(playerName, reward)
	end

	local checkAllRewardsForPlayer = function(playerName)
		for _, reward in next, rewardId do
			checkRewardForPlayer(playerName, reward)
		end
	end

	-- Laagaadoo#0000's DataHandler shortened
	local DataHandler = {}
	DataHandler.VERSION = '1.4'
	DataHandler.__index = DataHandler
	DataHandler.new = function(moduleID, skeleton, otherOptions) local self = setmetatable({}, DataHandler) assert(moduleID, 'Invalid module ID (nil)') assert(moduleID ~= '', 'Invalid module ID (empty text)') assert(skeleton, 'Invalid skeleton (nil)')  for k, v in next, skeleton do v.type = v.type or type(v.default) end self.players = {} self.moduleID = moduleID self.moduleSkeleton = skeleton self.moduleIndexes = {} self.otherOptions = otherOptions self.otherData = {} self.originalStuff = {} for k,v in pairs(skeleton) do self.moduleIndexes[v.index] = k end if self.otherOptions then self.otherModuleIndexes = {} for k,v in pairs(self.otherOptions) do self.otherModuleIndexes[k] = {} for k2,v2 in pairs(v) do v2.type = v2.type or type(v2.default) self.otherModuleIndexes[k][v2.index] = k2 end end end return self end
	DataHandler.newPlayer = function(self, name, dataString) assert(name, 'Invalid player name (nil)') assert(name ~= '', 'Invalid player name (empty text)') self.players[name] = {} self.otherData[name] = {} dataString = dataString or '' local function turnStringToTable(str) local output = {} for data in string.gsub(str, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') if string.match(data, '^{.-}$') then table.insert(output, turnStringToTable(string.match(data, '^{(.-)}$'))) else table.insert(output, tonumber(data) or data) end end return output end local function getDataIndexName(skeleton, index) for k,v in pairs(skeleton) do if v.index == index then return k end end return 0 end local function getHigherIndex(skeleton) local higher = 0 for k,v in pairs(skeleton) do if v.index > higher then higher = v.index end end return higher end local function handleModuleData(moduleID, skeleton, moduleData, makeTable) local dataIndex = 1 local higherIndex = getHigherIndex(skeleton) moduleID = "__" .. moduleID if makeTable then self.players[name][moduleID] = {} end local setPlayerData = function(data, dataType, dataName, dataDefault) local value if dataType == "number" then value = tonumber(data) or dataDefault elseif dataType == "string" then value = string.match(data or '', "^\"(.-)\"$") or dataDefault elseif dataType == "table" then value = string.match(data or '', "^{(.-)}$") value = value and turnStringToTable(value) or dataDefault elseif dataType == "boolean" then if data then value = data == '1' else value = dataDefault end end if makeTable then self.players[name][moduleID][dataName] = value else self.players[name][dataName] = value end end if #moduleData > 0 then for data in string.gsub(moduleData, '%b{}', function(b) return b:gsub(',', '\0') end):gmatch('[^,]+') do data = data:gsub('%z', ',') local dataName = getDataIndexName(skeleton, dataIndex) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(data, dataType, dataName, dataDefault) dataIndex = dataIndex + 1 end end if dataIndex <= higherIndex then for i = dataIndex, higherIndex do local dataName = getDataIndexName(skeleton, i) local dataType = skeleton[dataName].type local dataDefault = skeleton[dataName].default setPlayerData(nil, dataType, dataName, dataDefault) end end end local modules, originalStuff = self:getModuleData(dataString) self.originalStuff[name] = originalStuff if not modules[self.moduleID] then modules[self.moduleID] = '{}' end handleModuleData(self.moduleID, self.moduleSkeleton, modules[self.moduleID]:sub(2,-2), false) if self.otherOptions then for moduleID, skeleton in pairs(self.otherOptions) do if not modules[moduleID] then local strBuilder = {} for k,v in pairs(skeleton) do local dataType = v.type or type(v.default) if dataType == 'string' then strBuilder[v.index] = '"'..tostring(v.default)..'"' elseif dataType == 'table' then strBuilder[v.index] = '{}' elseif dataType == 'number' then strBuilder[v.index] = v.default elseif dataType == 'boolean' then strBuilder[v.index] = v.default and '1' or '0' end end modules[moduleID] = '{'..table.concat(strBuilder, ',')..'}' end end end for moduleID, moduleData in pairs(modules) do if moduleID ~= self.moduleID then if self.otherOptions and self.otherOptions[moduleID] then handleModuleData(moduleID, self.otherOptions[moduleID], moduleData:sub(2,-2), true) else self.otherData[name][moduleID] = moduleData end end end checkAllRewardsForPlayer(name) end
	DataHandler.dumpPlayer = function(self, name) local output = {} local function turnTableToString(tbl) local output = {} for k,v in pairs(tbl) do local valueType = type(v) if valueType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(v) if output[#output]:sub(-1) == ',' then output[#output] = output[#output]:sub(1, -2) end output[#output+1] = '}' output[#output+1] = ',' else if valueType == 'string' then output[#output+1] = '"' output[#output+1] = v output[#output+1] = '"' elseif valueType == 'boolean' then output[#output+1] = v and '1' or '0' else output[#output+1] = v end output[#output+1] = ',' end end if output[#output] == ',' then output[#output] = '' end return table.concat(output) end local function getPlayerDataFrom(name, moduleID) local output = {moduleID, '=', '{'} local player = self.players[name] local moduleIndexes = self.moduleIndexes local moduleSkeleton = self.moduleSkeleton if self.moduleID ~= moduleID then moduleIndexes = self.otherModuleIndexes[moduleID] moduleSkeleton = self.otherOptions[moduleID] moduleID = '__'..moduleID player = self.players[name][moduleID] end if not player then return '' end for i = 1, #moduleIndexes do local dataName = moduleIndexes[i] local dataType = moduleSkeleton[dataName].type if dataType == 'string' then output[#output+1] = '"' output[#output+1] = player[dataName] output[#output+1] = '"' elseif dataType == 'number' then output[#output+1] = player[dataName] elseif dataType == 'boolean' then output[#output+1] = player[dataName] and '1' or '0' elseif dataType == 'table' then output[#output+1] = '{' output[#output+1] = turnTableToString(player[dataName]) output[#output+1] = '}' end output[#output+1] = ',' end if output[#output] == ',' then output[#output] = '}' else output[#output+1] = '}' end return table.concat(output) end output[#output+1] = getPlayerDataFrom(name, self.moduleID) if self.otherOptions then for k,v in pairs(self.otherOptions) do local moduleData = getPlayerDataFrom(name, k) if moduleData ~= '' then output[#output+1] = ',' output[#output+1] = moduleData end end end for k,v in pairs(self.otherData[name]) do output[#output+1] = ',' output[#output+1] = k output[#output+1] = '=' output[#output+1] = v end return table.concat(output)..self.originalStuff[name] end
	DataHandler.get = function(self, name, dataName, moduleName) if not moduleName then return self.players[name][dataName] else assert(self.players[name]['__'..moduleName], 'Module data not available ('..moduleName..')') return self.players[name]['__'..moduleName][dataName] end end
	DataHandler.set = function(self, name, dataName, value, moduleName) if moduleName then self.players[name]['__'..moduleName][dataName] = value else self.players[name][dataName] = value end return self end
	DataHandler.save = function(self, name) checkAllRewardsForPlayer(name) system.savePlayerData(name, self:dumpPlayer(name)) end
	DataHandler.removeModuleData = function(self, name, moduleName) assert(moduleName, "Invalid module name (nil)") assert(moduleName ~= '', "Invalid module name (empty text)") assert(moduleName ~= self.moduleID, "Invalid module name (current module data structure)") if self.otherData[name][moduleName] then self.otherData[name][moduleName] = nil return true else if self.otherOptions and self.otherOptions[moduleName] then self.players[name]['__'..moduleName] = nil return true end end return false end
	DataHandler.getModuleData = function(self, str) local output = {} for moduleID, moduleData in string.gmatch(str, '([0-9A-Za-z_]+)=(%b{})') do output[moduleID] = moduleData end for k,v in pairs(output) do str = str:gsub(k..'='..v:gsub("[%(%)%.%%%+%-%*%?%[%]%^%$]", "%%%0")..',?', '') end return output, str end

	playerData = DataHandler.new(module.name, playerData)
end

local canStart = false
local workingTimer = workingTimerState.start

local playerStage = { }

--[[ Utils ]]--
local percent = function(x, y, p)
	return x / (p or 100) * y
end

local clamp = function(value, min, max)
	return (value < min and min or value > max and max or value)
end

local round = function(value)
	return math.floor(value + 0.5)
end

local getRoomMicePercentage = function(percentage, min, max)
	return clamp(percent(percentage, tfm.get.room.uniquePlayers), (min or 1), (max or 10))
end

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

local getXSpeed = function(distance)
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
	local list, index, playerName, data = { }, 0
	for player = 1, #stagePlayers do
		playerName = stagePlayers[player]
		data = tfm.get.room.playerList[playerName]

		if pythagoras(data.x, data.y, x, y, radius) then
			index = index + 1
			list[index] = playerName
		end
	end
	return list, index
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

local getStageDoorDirection = function(stage)
	return (stage % 2 == 0 and -1 or 1)
end

local getPlayerAim = function(playerName, obj, ignoreAcceleration, _player)
	_player = _player or tfm.get.room.playerList[playerName]

	local angle = getAngle(obj:getRelativeX(), obj:getRelativeY(), _player.x, _player.y)

	local directionX, directionY
	if not ignoreAcceleration then
		directionX, directionY = getAcceleration(angle)
	end

	return angle, directionX, directionY, _player
end

local addMagicianKillForPlayers = function()
	for playerName, data in next, playerCache do
		if data.hasHitBoss then
			playerData:set(playerName, "magicianDefeats", playerData:get(playerName, "magicianDefeats" + 1)):save(playerName)
		end
	end
end

--[[ Tools ]]--
local isEventWorkingFor = function(playerName)
	return canStart and playerCache[playerName] and playerCache[playerName].dataLoaded	
end

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

hasReward = function(playerName, reward)
	return bit32.band(reward, playerData:get(playerName, "rewards")) > 0
end

local freezePlayer
local decreaseLife

--[[ Classes ]]--
local timer
do
	timer = {
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
end

local callback
do
	local id = interfaceId.callback - 1

	callback = {
		_instance = {
			_count = 0
		}
	}
	callback.__index = callback
	callback.__iter = function()
		return ipairs(callback._instance)
	end
	callback.__get = function(eventName)
		return callback._instance[callback._instance[eventName]]
	end

	callback.new = function(eventName, x, y, width, height, hideCallback)
		id = id + 1

		local self = setmetatable({
			id = id,
			eventName = eventName,
			x = x,
			y = y,
			width = width,
			height = height,
			isFixed = false,
			hasRange = false,
			borderRange = 0,
			action = nil,
			isActive = false,
			_blockedPlayers = { }
		}, callback)

		if not hideCallback then
			self:display()
		end

		local instance = callback._instance
		instance._count = instance._count + 1
		instance[instance._count] = self
		instance[eventName] = instance._count

		return self
	end

	callback.textarea = function(self, playerName)
		if playerName then
			self._blockedPlayers[playerName] = false
		end

		ui.addTextArea(self.id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. self.eventName .. "'>" .. string.rep('\n', self.height / 10), playerName, self.x - 5, self.y - 5, self.width + 5, self.height + 5, 1, 1, (DEBUG and .2 or 0), self.isFixed)

		return self
	end

	callback.display = function(self, f)
		if type(f) ~= "function" then
			-- Nil, Nickname, ...
			self:textarea(f)
		else
			for playerName, data in next, playerCache do
				if f(playerName, data) then
					self:textarea(playerName)
				end
			end
		end
		self.isActive = true

		return self
	end

	callback.setFixed = function(self)
		self.isFixed = true
		return self
	end

	callback.setClickable = function(self, borderRange)
		if borderRange then
			self.borderRange = borderRange
		end
		self.hasRange = true

		return self
	end

	callback.inClickableRange = function(self, playerName, x, y)
		if not self.isActive or self._blockedPlayers[playerName] then return end
		if not self.hasRange then
			-- Can be triggered in any position
			return true
		end

		return (
			(
				x >= (self.x - self.borderRange) and
				x <= (self.x + self.width + self.borderRange)
			) and
			(
				y >= (self.y - self.borderRange) and
				y <= (self.y + self.height + self.borderRange)
			)
		)
	end

	callback.setAction = function(self, action)
		self.action = action
		return self
	end

	callback.performAction = function(self, playerName, x, y, ...)
		if not self.action then return end
		if not self:inClickableRange(playerName, x, y) then return end

		return self:action(playerName, x, y, ...) -- self, playerName, x, y, ...
	end

	callback.remove = function(self, playerName)
		if not playerName then
			self.isActive = false
		else
			self._blockedPlayers[playerName] = true
		end

		ui.removeTextArea(self.id, playerName)
	end
end

local objectManager
do
	objectManager = {
		objects = {
			monster = {
				_count = 0,
				_bin = {
					_count = 0
				}
			},
			bullet = {
				_count = 0,
				_bin = {
					_count = 0
				}
			}
		}
	}

	objectManager.insert = function(obj)
		local class = objectManager.objects[obj.class]
		class._count = class._count + 1

		obj._id = class._count
		class[class._count] = obj

		return obj
	end

	objectManager.delete = function(obj)
		if obj._toDelete then return end
		obj._toDelete = true

		local bin = objectManager.objects[obj.class]._bin

		bin._count = bin._count + 1
		bin[bin._count] = obj._id

		if obj.remove then
			obj:remove()
		end
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
end

local monster
do
	monster = {
		_perStage = { }
	}
	monster.__index = monster

	local addToStage = function(obj, stage)
		if not monster._perStage[stage] then
			monster._perStage[stage] = {
				_id = 0,
				_count = 0
			}
		end

		local stage = monster._perStage[stage]
		stage._id = stage._id + 1
		stage[stage._id] = obj
		stage._count = stage._count + 1

		return obj
	end

	monster.new = function(type, x, y, stage)
		local object = tfm.exec.addShamanObject(objectId.fish, x, y)

		return objectManager.insert(addToStage(setmetatable({
			class = "monster",
			type = type,
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(images.monsters[type][2], "#" .. object, monsterAxis[type][1], monsterAxis[type][2]),
			spriteId = 2,
			objectData = tfm.get.room.objectList[object],
			isAttacking = false,
			life = monsterData.life[type],
			initialTime = monsterData.initialTime,
			deathCallback = nil,
			isAxisPosition = false,
			isBoss = (stage > 6),
			destroyed = false
		}, monster), stage))
	end

	monster.useAxisPosition = function(self)
		self.isAxisPosition = true
		return self
	end

	monster.getRelativeX = function(self)
		return self.objectData.x + (self.isAxisPosition and monsterAxis[self.type][1] or 0)
	end
	
	monster.getRelativeY = function(self)
		return self.objectData.y + (self.isAxisPosition and monsterAxis[self.type][2] or 0)
	end

	monster.onDeath = function(self, callback)
		self.deathCallback = callback
		return self
	end

	monster.remove = function(self)
		local stage = monster._perStage[self.stage]
		stage._count = stage._count - 1
		stage[self._id] = nil
	end

	local destroy = function(self)
		tfm.exec.removeImage(self.sprite)
		tfm.exec.removeObject(self.object)
		objectManager.delete(self)
	end

	monster.destroy = function(self)
		if self.destroyed then return end
		self.destroyed = true

		if self.isBoss then
			-- Adds +1 kill for players
			addMagicianKillForPlayers()
		end

		if self.deathCallback then
			self.deathCallback(self, destroy)
		else
			destroy(self)
		end
	end

	monster.damage = function(self, damage)
		self.life = self.life - damage
		if self.life <= 0 then
			self:destroy()
			return true
		end
		return false
	end

	monster.loop = function(self, currentTime, remainingTime)
		if self.initialTime > 0 then
			self.initialTime = self.initialTime - 500
			return
		end

		local players = getPlayersInStage(self.stage)
		if not players then
			self:setSprite(monsterDirection.front)
			return
		end

		if self.type == monsterType.magician then
			if not self.isAttacking and math.random(1, 5) == 5 then
				if math.random(1, 2) == 1 then
					self:bomber(players)
				else
					self:freezeBreath(players)
				end
			end
		elseif self.type == monsterType.mutantMagician then
			return
		else
			if math.random(1, 5) < 4 then
				self:moveAround(players, monsterData.movementType[self.type], 1, monsterData.distanceRadius[self.type])
			elseif not self.isAttacking then
				if self.type == monsterType.snow then
					self:throwSnowball(players)
				elseif self.type == monsterType.freeze then
					self:freezeAround(players)
				elseif self.type == monsterType.roar then
					self:explode(players)
				end
			end
		end
	end

	monster.setSprite = function(self, id, isAttack)
		if self.spriteId == id and self.isAttacking == isAttack then return end
		self.isAttacking = isAttack

		tfm.exec.removeImage(self.sprite)
		self.sprite = tfm.exec.addImage((isAttack and images.monsters.attack[self.type][id] or images.monsters[self.type][id]), "#" .. self.object, monsterAxis[self.type][1], monsterAxis[self.type][2])
		self.spriteId = id

		return self
	end

	monster.moveAround = function(self, players, movement, maximumMice, radius)
		-- Avoids monsters to get too close of the target
		local _, totalNearPlayers = getNearPlayers(players, self.objectData.x, self.objectData.y, radius)
		if totalNearPlayers >= maximumMice then return end

		local xSpeed, data, distance
		if movement == movementType.biggestGroup then
			-- Aims the biggest group of players
			local playersOnLeft, playersOnRight = 0, 0
			local leftDifference, rightDifference = 9999, 9999

			for player = 1, #players do
				data = tfm.get.room.playerList[players[player]]

				if data.x <= self.objectData.x then
					playersOnLeft = playersOnLeft + 1
					distance = self.objectData.x - data.x

					if distance < leftDifference then
						leftDifference = distance
					end
				else
					playersOnRight = playersOnRight + 1
					distance = data.x - self.objectData.x

					if distance < rightDifference then
						rightDifference = distance
					end
				end
			end

			if playersOnLeft >= playersOnRight then
				xSpeed = -getXSpeed(leftDifference)
			else
				xSpeed = getXSpeed(rightDifference)
			end
		elseif movement == movementType.nearestPlayer then
			-- Aims the nearest player
			local isFacingLeft, difference = false, 9999

			for player = 1, #players do
				data = tfm.get.room.playerList[players[player]]
				distance = math.abs(data.x - self.objectData.x)

				if distance < difference then
					isFacingLeft = (data.x <= self.objectData.x)
					difference = distance
				end
			end

			if isFacingLeft then
				xSpeed = -getXSpeed(difference)
			else
				xSpeed = getXSpeed(difference)
			end
		end

		self:setSprite(((xSpeed < 0) and monsterDirection.left or monsterDirection.right))
		tfm.exec.moveObject(self.objectData.id, 0, 0, true, xSpeed, -15, false)

		return self
	end

	monster.throwSnowball = function(self, players)
		local angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), self)

		self:setSprite(((self.objectData.x > player.x) and monsterDirection.left or monsterDirection.right))

		for _ = 1, monsterData.snowballQuantity do
			tfm.exec.addShamanObject(objectId.snowball, self.objectData.x + (directionX * 20), self.objectData.y - 15, angle, (directionX * monsterData.snowballForce), (directionY * monsterData.snowballForce))
		end

		return self
	end

	local unfreezePlayers = function(players)
		for player = 1, #players do
			freezePlayer(players[player], false)
		end
	end

	monster.freezeAround = function(self, players)
		players = getNearPlayers(players, self.objectData.x, self.objectData.y, monsterData.freezeRadius)

		local frozenPlayers, index = { }, 0

		local directionRate = 0

		local playerName
		for player = 1, #players do
			playerName = players[player]

			if not playerCache[playerName].isFrozen and math.random(1, 3000) < 1500 then -- 1/2
				directionRate = directionRate + (self.objectData.x - tfm.get.room.playerList[playerName].x)

				freezePlayer(playerName, true)

				index = index + 1
				frozenPlayers[index] = playerName
			end
		end
		timer.start(unfreezePlayers, monsterData.freezeTime, 1, frozenPlayers)

		if directionRate ~= 0 then
			self:setSprite(((directionRate < 0) and monsterDirection.left or monsterDirection.right), true) -- tmp
		end

		return self
	end

	monster.explode = function(self, players)
		local totalPlayers
		players, totalPlayers = getNearPlayers(players, self.objectData.x, self.objectData.y, monsterData.roarRadius)
		if totalPlayers == 0 then return end

		local halfDistance = monsterData.roarRadius / 2
		local damage = monsterData.damage.explode

		local directionRate, distance, playerName = 0
		for player = 1, #players do
			playerName = players[player]
			distance = (self.objectData.x - tfm.get.room.playerList[playerName].x)
			directionRate = directionRate + distance

			if math.abs(distance) < halfDistance then -- The ones that are even closer
				decreaseLife(playerName, damage)
			end
		end

		local doorDirection = getStageDoorDirection(self.stage) * (directionRate < 0 and -1 or 1)

		self:setSprite(self.spriteId, true)
		tfm.exec.explosion(self.objectData.x, self.objectData.y, monsterData.roarPower * doorDirection, monsterData.roarRadius, true)

		return self
	end

	local explodeBomb = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.bombRadius)
		for player = 1, #players do
			decreaseLife(players[player], monsterData.damage.explode)
		end

		tfm.exec.explosion(objectData.x, objectData.y, monsterData.bombPower, monsterData.bombRadius, true)
	end

	local createBomb = function(obj, players, isAttacking)
		local angle, directionX, directionY, player
		local object

		angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), obj)

		local object = tfm.exec.addShamanObject(objectId.box, obj:getRelativeX(), obj:getRelativeY(), angle, (directionX * monsterData.bombForce), (directionY * monsterData.bombForce))
		local image = tfm.exec.addImage(images.others.bomb, "#" .. object, -15, -35)
		timer.start(explodeBomb, monsterData.bombExplodeTimer, 1, tfm.get.room.objectList[object], players, image)

		if not isAttacking then
			obj:setSprite(monsterDirection.front, false)
		end
	end

	monster.bomber = function(self, players)
		self:setSprite(monsterDirection.left, true)

		for bomb = 1, monsterData.bombQuantity + (DEBUG and 2 or 0) do
			timer.start(createBomb, monsterData.bombSpawnTimer + (bomb * monsterData.bombSpawnTimer), 1, self, players, bomb ~= monsterData.bombQuantity + (DEBUG and 2 or 0))
		end
	end

	local breathFreeze = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.breathRadius)
		for player = 1, #players do
			freezePlayer(players[player], true)
		end
		timer.start(unfreezePlayers, monsterData.breathUnfreezeTime, 1, players)
	end

	local createBreath = function(obj, players, isAttacking)
		local player = tfm.get.room.playerList[getRandomValue(players)]

		local angleAim = math.deg(getPlayerAim(getRandomValue(players), obj, true))
		local object = tfm.exec.addShamanObject(objectId.rune, obj:getRelativeX(), obj:getRelativeY(), angleAim, 0, 0, true)
		local image = tfm.exec.addImage(images.others.breath, "#" .. object, -25, -25)

		timer.start(breathFreeze, monsterData.breathFreezeTime, 1, tfm.get.room.objectList[object], players, image)

		if not isAttacking then
			obj:setSprite(monsterDirection.front, false)
		end
	end

	monster.freezeBreath = function(self, players)
		self:setSprite(monsterDirection.right, true)

		for i = 1, monsterData.breathQuantity do
			timer.start(createBreath, (i * monsterData.breathSpawnTimer), 1, self, players, i ~= monsterData.breathQuantity)
		end
	end
end

local bullet
do
	bullet = { }
	bullet.__index = bullet

	bullet.new = function(x, y, stage, playerName, direction, isBoss)
		if not monster._perStage[stage] then return end

		local object, sprite

		local boss = isBoss and monster._perStage[stage][1] -- isBoss and has a boss
		if boss then
			local x, y = (x + 25), (y - 15)

			local angle, directionX, directionY = getPlayerAim(nil, boss, false, { x = x, y = y })

			object = tfm.exec.addShamanObject(objectId.paperball, x, y, angle, (-directionX * bulletData.xSpeedBoss), (-directionY * bulletData.ySpeedBoss)) -- Using negative because 'boss' was passed first, for the getRelativeN function.
			sprite = images.others.snowball
		else
			object = tfm.exec.addShamanObject(objectId.paperball, x + (25 * direction), y - 15, 0, bulletData.xSpeed * direction, bulletData.ySpeed)
			sprite = images.others.fireball
		end

		return objectManager.insert(setmetatable({
			class = "bullet",
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(sprite, "#" .. object, -6, -6),
			objectData = tfm.get.room.objectList[object],
			lifeTime = bulletData.lifeTime,
			shooter = playerCache[playerName],
			isBoss = isBoss
		}, bullet))
	end

	bullet.destroy = function(self)
		tfm.exec.removeImage(self.sprite)
		tfm.exec.removeObject(self.object)
		objectManager.delete(self)
	end

	bullet.loop = function(self, currentTime, remainingTime)
		local monsters, obj = monster._perStage[self.stage]
		for m = 1, (monsters._count or 0) do
			obj = monsters[m]

			if obj and obj.stage == self.stage and pythagoras(self.objectData.x, self.objectData.y, obj:getRelativeX(), obj:getRelativeY(), bulletData.damageRadius) then
				obj:damage(bulletData.damage)
				self:destroy()

				if self.isBoss and not self.shooter.hasHitBoss then
					self.shooter.hasHitBoss = true
				end
				return
			end
		end

		self.lifeTime = self.lifeTime - 500
		if self.lifeTime <= 0 then
			self:destroy()
		end
	end
end

--[[ Interface ]]--
ui.dialog = function(playerName, id)
	playerCache[playerName].dialog.id = id

	playerCache[playerName].cachedImages.dialog[1] = tfm.exec.addImage(images.dialogNpc[id], imageLayer.dialogForeground, 510, 52, playerName)
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
local mutantMagicianTriggered = false

local displayLife
do
	local updateHeart = function(cache, id, level)
		cache = cache.cachedImages.heart

		if cache[id] then
			tfm.exec.removeImage(cache[id])
		end
		cache[id] = tfm.exec.addImage(images.others.heart[level], imageLayer.hudForeground, (id - 1) * 30, 30, playerName)
	end

	displayLife = function(playerName)
		local cache = playerCache[playerName]

		playerCache[playerName].life = module.life
		for heart = 1, module.life do
			updateHeart(cache, heart, 1)
		end
	end

	decreaseLife = function(playerName, level)
		local cache = playerCache[playerName]
		if cache.life <= 0 then return end

		local lastHeartLevel = 1 - cache.life % 1
		local lastHeartFloor = math.ceil(cache.life)
		cache.life = cache.life - level
		local currentHeart = math.ceil(cache.life)

		if currentHeart ~= lastHeartFloor then
			updateHeart(cache, lastHeartFloor, 0)
			level = (lastHeartLevel + 1) - level
		end
		if currentHeart > 0 and level < 1 then
			updateHeart(cache, currentHeart, level)
		end

		if cache.life <= 0 then
			tfm.exec.killPlayer(playerName)
		end	
	end
end

freezePlayer = function(playerName, freeze)
	if playerCache[playerName].isFrozen == freeze then return end
	playerCache[playerName].isFrozen = freeze

	if freeze then
		decreaseLife(playerName, monsterData.damage.freeze)
	end

	return tfm.exec.freezePlayer(playerName, freeze)
end

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
				treeItem = nil, -- Tree item
				dialog = { },
				heart = { }
			},
			isFrozen = false,
			treeItem = nil, -- The id of the item to be collected
			hasItem = false, -- If the player is carrying the item
			placedItem = false, -- If the player has placed the item
			callbackAction = 0,
			bulletAction = 0,
			life = module.life,
			isFacingRight = true,
			hasHitBoss = false
		}

		tfm.exec.lowerSyncDelay(playerName)
		system.loadPlayerData(playerName)

		for _, code in next, keyCode do
			system.bindKeyboard(playerName, code, true, true)
		end

		displayLife(playerName)
	end
end

globalInitInterface = function()
	-- Data
	monsterData.bombQuantity = clamp(round(tfm.get.room.uniquePlayers / 10), 1, 5)
	bulletData.damage = clamp((2 - (tfm.get.room.uniquePlayers / 25)), bulletData.minimumDamage, bulletData.maximumDamage)
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

	ui.updateTextArea(interfaceId.dialog + 1, string.sub(translation.dialog[data.dialog.id], 1, data.dialog.strPos) .. (lastChar and ("\n<PT>" .. translation.closeDialog) or "|"), playerName)

	if lastChar then
		data.dialog.id = -1
	end
end

update = function(_, addChar)
	if not canStart then return end

	for playerName, data in next, playerCache do
		if data.dataLoaded and data.dialog.id > 0 then
			updateDialog(playerName, data, addChar)
		end
	end
end

local buildMap, defeatMagician
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
		[6] = 598
	}

	local blockProperty = {
		type = 12,
		friction = 0,
		restitution = 0,
		miceCollision = true,
		groundCollision = true,
		width = 100,
		color = (DEBUG and 0 or nil)
	}

	local blockerJoint = {
		type = 0,
		point = "0,0"
	}

	buildMap = function(playerName)
		tfm.exec.addImage(module.map.background, imageLayer.mapBackground, 0, 0, playerName)
		tfm.exec.addImage(images.objects.caldron, imageLayer.objectForeground, 746, 487, playerName) -- Should it appear like that in the beginning?
		tfm.exec.addImage(images.objects.fireMachine, imageLayer.objectForeground, 738, 272, playerName)
		--tfm.exec.addImage(images.objects.gifts, imageLayer.objectBackground, 560, 270, playerName)
		--tfm.exec.addImage(images.objects.snowballs, imageLayer.objectBackground, 475, 492, playerName)

		-- Insert passage blocks
		local totalBlocks = #blockLocationX
		for i = 1, totalBlocks do
			if not playerName then
				tfm.exec.addPhysicObject(groundId.passage + i, blockLocationX[i], blockLocationY[i], blockProperty)
			end
			passageBlocks[i] = tfm.exec.addImage(images.objects.lock[((i % 2) + 1)], imageLayer.objectForeground, blockLocationX[i] - 40, blockLocationY[i] - 6)
		end

		-- Blocks the joint effect
		totalBlocks = groundId.passage + totalBlocks
		tfm.exec.addJoint(jointId.blocker, totalBlocks, groundId.jointEffect, blockerJoint)
		blockerJoint.type = 1
		tfm.exec.addJoint(jointId.blocker + 1, totalBlocks, groundId.jointEffect + 2, blockerJoint)
	end

	local executeMagicianBaseRemove = function(obj, base)
		base(obj)
		tfm.exec.removePhysicObject(groundId.bossBlock + 2)
		tfm.exec.removePhysicObject(groundId.jointEffect)
	end

	defeatMagician = function(obj, base)
		obj:setSprite(monsterDirection.back)

		tfm.exec.removePhysicObject(groundId.jointEffect + 1)

		for g = groundId.bossBlock, groundId.bossBlock + 1 do
			tfm.exec.removePhysicObject(g)
		end

		timer.start(executeMagicianBaseRemove, monsterData.magicianFallRemoveTimer, 1, obj, base)
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
		[3] = 260,
		[4] = 345,
		[5] = 350,
		[6] = 430,
		[7] = 435,
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

local displayTree = function(playerName, ignoreNextItem)
	if playerCache[playerName].cachedImages.tree then
		tfm.exec.removeImage(playerCache[playerName].cachedImages.tree)
	end

	local treeStage = playerData:get(playerName, "treeStage")

	if images.christmasTree[treeStage] then
		playerCache[playerName].cachedImages.tree = tfm.exec.addImage(images.christmasTree[treeStage], imageLayer.objectBackground, 0, 1240, playerName)
	end

	if ignoreNextItem then return end

	treeStage = treeStage + 1
	if images.treeItems[treeStage] then
		playerCache[playerName].cachedImages.treeItem = tfm.exec.addImage(images.treeItems[treeStage], imageLayer.objectForeground, 915, 530, playerName)
		playerCache[playerName].treeItem = treeStage
	end
end

local spawnYetis
do
	local xRange = {
		-- rangeA, rangeB, quantity
		230, 700, getRoomMicePercentage(20, 3, 10), -- 1
		340, 700, getRoomMicePercentage(16, 2, 8), -- 2
		330, 680, getRoomMicePercentage(16, 2, 8), -- 3
		470, 700, getRoomMicePercentage(12, 2, 6), -- 4
		420, 670, getRoomMicePercentage(12, 2, 6), -- 5
		490, 700, getRoomMicePercentage(8, 1, 4) -- 6
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

local spawnMagician = function()
	monster.new(monsterType.magician, 945, 470, 7):useAxisPosition():onDeath(defeatMagician)
	tfm.exec.removeJoint(jointId.blocker)
end

local spawnMutantMagician = function()
	monster.new(monsterType.mutantMagician, 953, 230, 8):useAxisPosition()
	tfm.exec.removeJoint(jointId.blocker + 1)
end

local checkStageChallege = function()
	local tmpCurrentStage
	for playerName, data in next, tfm.get.room.playerList do
		if not data.isDead and playerCache[playerName].dataLoaded then
			tmpCurrentStage = getCurrentStage(data.y, data.x)
			if tmpCurrentStage == 8 then -- Unrelated to the gameplay of the other stages
				if not DEBUG and not hasReward(playerName, rewardId.badge) then
					return tfm.exec.movePlayer(playerName, 15, 1565)
				end

				if not mutantMagicianTriggered then
					mutantMagicianTriggered = true
					spawnMutantMagician()
				end
			elseif tmpCurrentStage > lastMountainStage then
				lastMountainStage = tmpCurrentStage
				if lastMountainStage == 7 then
					spawnMagician()
					displayLife(playerName) -- Player's life gets reset to defeat the boss
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
	tfm.exec.removePhysicObject(groundId.passage + stage)
	passageBlocks[stage] = nil
end

local checkPassages = function()
	if passageBlocks[lastMountainStage] and monster._perStage[lastMountainStage]._count <= 0 then
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

local collectItem = function(cbk, playerName)
	if not playerCache[playerName].treeItem or (playerCache[playerName].hasItem or playerCache[playerName].placedItem) then return end
	playerCache[playerName].hasItem = true

	cbk:remove(playerName)

	tfm.exec.removeImage(playerCache[playerName].cachedImages.treeItem)
	playerCache[playerName].cachedImages.treeItem = tfm.exec.addImage(images.treeItems[playerCache[playerName].treeItem], "$" .. playerName, -25, -70)

	return true
end

local placeItem = function(cbk, playerName)
	if not playerCache[playerName].treeItem or (not playerCache[playerName].hasItem or playerCache[playerName].placedItem) then return end
	playerCache[playerName].hasItem = false
	playerCache[playerName].placedItem = true

	cbk:remove(playerName)

	playerData:set(playerName, "treeStage", playerData:get(playerName, "treeStage") + 1):save(playerName)
	tfm.exec.removeImage(playerCache[playerName].cachedImages.treeItem)
	displayTree(playerName, true)

	return true
end

local startIntro = function(cbk, playerName)
	ui.dialog(playerName, 1)

	return true
end

local makeCallbacks = function()
	-- Collect item
	callback.new("placeItem", 915, 530, 50, 50):setClickable(10):setAction(collectItem)

	-- Place collected item in the tree spot
	callback.new("collectItem", 0, 1430, 160, 170):setClickable():setAction(placeItem)

	-- Tree NPC
	tfm.exec.addImage(images.npc.elf, imageLayer.objectForeground, -18, 1535)
	callback.new("npc", 0, 1545, 35, 45):setClickable():setAction(startIntro)
end

local canTriggerCallbacks = function(playerName)
	local time = os.time()
	if playerCache[playerName].callbackAction > time then return end
	playerCache[playerName].callbackAction = time + module.callbackTimer
	return true
end

local canThrowBullet = function(playerName)
	local time = os.time()
	if playerCache[playerName].bulletAction > time then return end
	playerCache[playerName].bulletAction = time + module.bulletReloadTimer
	return true
end

--[[ Events ]]--
local newGame = false
eventNewGame = function()
	if newGame then
		-- Bug fix
		return system.exit()
	end
	newGame = true

	buildMap()
	loadAllImages()
	setAllPlayerData()
	makeCallbacks()
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
	if not isEventWorkingFor(playerName) then return end

	if key == keyCode.space then
		if playerCache[playerName].dialog.id == 0 then
			-- Is not seeing a dialog
			if canTriggerCallbacks(playerName) then
				-- Checks all ranges of callbacks and, if matched, its action is performed
				for _, cbk in callback.__iter() do
					if cbk:performAction(playerName, x, y) then
						return
					end
				end
			end

			-- Throw
			if playerCache[playerName].currentStage > 0 and not playerCache[playerName].isFrozen and canThrowBullet(playerName) then
				bullet.new(x, y, playerCache[playerName].currentStage, playerName, (playerCache[playerName].isFacingRight and 1 or -1), (playerCache[playerName].currentStage > 6))
			end
		else
			-- Is seeing a dialog
			dialogAction(playerName)
		end
	elseif key == keyCode.left or key == keyCode.right then
		playerCache[playerName].isFacingRight = (key == keyCode.right)
	end
end

eventTextAreaCallback = function(id, playerName, eventName)
	if not isEventWorkingFor(playerName) then return end
	if not canTriggerCallbacks(playerName) then return end

	if string.find(eventName, "callback.", 1, true) then
		local data = tfm.get.room.playerList[playerName]
		callback.__get(string.sub(eventName, 10)):performAction(playerName, data.x, data.y)
	end
end

eventNewPlayer = function(playerName)
	loadAllImages(playerName) -- Unsure if this is really necessary
	buildMap(playerName)
end

eventPlayerLeft = function(playerName)
	if not isEventWorkingFor(playerName) then return end
	removePlayerFromStages(playerName)
end

eventPlayerDied = function(playerName)
	if not isEventWorkingFor(playerName) then return end

	tfm.exec.addShamanObject(objectId.icecube, 900, clamp(tfm.get.room.playerList[playerName].y - 50, 695, 9999))

	removePlayerFromStages(playerName)
end

--[[ Debug ]]--
if DEBUG then
	for _, dev in next, module.team.developer do
		system.bindMouse(dev)
		system.bindKeyboard(dev, 16, true)
		system.bindKeyboard(dev, 16, false)
		system.bindKeyboard(dev, string.byte('P'), true)
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
		elseif key == string.byte('P') then
			print(system.savePlayerData(playerName, (playerData:dumpPlayer(playerName):gsub(module.name .. "={.-},?", ''))))
			return system.exit()
		end
	end

	local lastImg
	eventChatMessage = function(playerName, message)
		local code, target, x, y = message:match("^(%S+%.[pnjpg]+) (%S+) (%-?%d+%.?%d*) (%-?%d+%.?%d*)$")
		if code then
			if lastImg then
				tfm.exec.removeImage(lastImg)
			end
			lastImg = tfm.exec.addImage(code, target:gsub("&amp;", "&"), x, y)
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
else
	module.map.xml = string.gsub(module.map.xml, 'o=".-"', '')
end

--[[ Init ]]--
system.newTimer(function()
	workingTimer = workingTimerState.stop
	canStart = true
end, 1000, false)

loop(update, 12, 1)

globalInitSettings(true)
tfm.exec.newGame(string.format(module.map.xml, module.map.foreground,
	groundId.jointEffect, -- [magician] -1 axis
	groundId.jointEffect + 1, -- [magician] moving ground
	groundId.bossBlock, -- [magician] left block
	groundId.bossBlock + 1, -- [magician] right block
	groundId.bossBlock + 2, -- [magician] up/down block
	groundId.bossBlock + 3, -- [mutant magician] block
	groundId.jointEffect + 2, -- [mutant magician] circle axis
	groundId.jointEffect + 3 -- [mutant magician] moving ground
))
math.randomseed(os.time())
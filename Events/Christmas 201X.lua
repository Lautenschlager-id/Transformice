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
		[0x01] = "badge_",
		[0x02] = "orb_",
		[0x04] = "titre_",
		[0x08] = "titre_"
	},
	time = 2.5 * 60,
	map = {
		xml = [[<C><P L="1000" APS="%s,,170,350,820,1250,,;%s,,,,1000,370,," H="1600" /><Z><S><S L="160" o="324650" X="76" H="17" Y="1574" T="12" P=",,.3,.2,-12,,," /><S L="115" o="324650" X="209" H="17" Y="1563" T="12" P=",,.3,.2,5,,," /><S L="100" o="324650" X="297" H="17" Y="1559" T="12" P=",,.3,.2,-10,,," /><S L="150" o="324650" X="417" H="17" Y="1560" T="12" P=",,.3,.2,7,,," /><S L="150" o="324650" X="565" H="17" Y="1568" T="12" P=",,.3,.2,-1,,," /><S L="92" o="324650" X="672" H="17" Y="1544" T="12" P=",,.3,.2,-34,,," /><S L="82" o="324650" X="743" H="17" Y="1503" T="12" P=",,.3,.2,-26,,," /><S L="66" o="324650" X="790" H="17" Y="1461" T="12" P=",,.3,.2,-65,,," /><S L="15" o="324650" X="789" H="853" Y="1014" T="12" P=",,.3,.2,,,," /><S L="530" o="324650" X="457" H="17" Y="1408" T="12" P=",,.3,.2,1,,," /><S L="401" o="324650" X="532" H="17" Y="1250" T="12" P=",,.3,.2,1,,," /><S L="442" o="324650" X="500" H="17" Y="1082" T="12" P=",,.3,.2,,,," /><S L="82" o="324650" X="761" H="17" Y="1274" T="12" P=",,.3,.2,32,,," /><S L="167" o="324650" X="736" H="17" Y="1183" T="12" P=",,.3,.2,-52,,," /><S L="99" o="324650" X="422" H="17" Y="1051" T="12" P=",,.3,.2,218,,," /><S L="99" o="324650" X="356" H="17" Y="983" T="12" P=",,.3,.2,235,,," /><S L="339" o="324650" X="561" H="17" Y="921" T="12" P=",,.3,.2,,,," /><S L="92" o="324650" X="759" H="17" Y="949" T="12" P=",,.3,.2,40,,," /><S L="178" o="324650" X="731" H="17" Y="854" T="12" P=",,.3,.2,-49,,," /><S L="350" o="324650" X="536" H="17" Y="754" T="12" P=",,.3,.2,,,," /><S L="124" o="324650" X="448" H="17" Y="677" T="12" P=",,.3,.2,55,,," /><S L="503" o="324650" X="748" H="17" Y="597" T="12" P=",,.3,.2,-1,,," /><S L="14" o="324650" X="991" H="211" Y="487" T="12" P=",,.3,.2,2,,," /><S L="532" o="324650" X="736" H="27" Y="378" T="12" P=",,.3,.2,,,," /><S L="20" o="324650" X="326" H="1104" Y="901" T="12" P=",,.3,.2,15,,," /><S L="10" o="324650" X="998" H="3000" Y="-1130" T="12" P=",,,,,,," /><S H="3000" L="10" o="324650" X="-2" c="3" Y="100" T="12" P=",,,,,,," /><S P=",,.3,.2,-115,,," L="10" o="324650" H="10" Y="1444" T="12" X="788" /><S P=",,.3,.2,50,,," L="172" o="324650" H="17" Y="1340" T="12" X="293" /><S H="10" L="100" o="324650" X="748" c="2" Y="1410" T="12" P=",,,,,,," /><S H="10" L="100" o="324650" X="290" c="2" Y="1245" T="12" P=",,,,,,," /><S H="10" L="100" o="324650" X="748" c="2" Y="1080" T="12" P=",,,,,,," /><S H="10" L="100" o="324650" X="380" c="2" Y="920" T="12" P=",,,,,,," /><S H="10" L="100" o="324650" X="754" c="2" Y="753" T="12" P=",,,,,,," /><S H="10" L="100" o="324650" X="455" c="2" Y="596" T="12" P=",,,,,,," /><S P=",,,,-10,,," L="500" o="324650" H="10" c="2" Y="415" T="12" X="238" /><S P=",,,,,,," L="10" o="324650" X="183" c="2" Y="1493" T="12" H="150" /><S P=",,.3,.2,40,,," L="100" o="324650" H="17" Y="723" T="12" X="496" /><S L="20" o="324650" H="100" X="447" Y="433" T="12" P=",,.3,.2,10,,," /><S X="868" L="66" o="324650" H="40" c="3" Y="568" T="12" P=",,.3,.2,,,," /><S P="1,99999,99999,,,1,," L="50" o="324650" lua="%d" H="10" c="2" Y="494" T="12" X="945" /><S P="1,99999,,,,,," L="10" o="324650" lua="%d" H="10" Y="-620" T="12" X="945" /><S L="10" o="324650" lua="%d" H="200" X="906" Y="487" T="12" P=",,,,,,," /><S X="835" L="10" o="324650" lua="%d" H="200" c="3" Y="487" T="12" P=",,,,,,," /><S H="10" L="10" o="324650" lua="%d" X="945" c="2" Y="572" T="12" P=",,,,,,," /><S P=",,,,,,," L="10" o="324650" lua="%d" X="906" Y="-1130" T="12" H="3000" /><S P="1,99999,,,,,," L="10" o="324650" lua="%d" X="953" c="4" Y="250" T="13" H="10" /><S X="953" L="50" o="324650" lua="%d" H="10" c="2" Y="260" T="12" P="1,,99999,,,1,," /><S P=",,.3,.2,,,," L="125" o="324650" H="55" c="3" Y="335" T="12" X="820" /><S H="10" L="40" o="324650" c="2" Y="295" T="12" X="950" P=",,9999,,,,," /></S><D /><O /><L><JP M2="" M1="40" AXIS=",1" /><JR P1="945,-625" M1="41" MV="Infinity,2" /><JD M1="40" M2="41" /><JR P1="953,250" M1="46" MV="Infinity,1.75" /><JR M1="46" M2="47" /></L></Z></C>]],
		background = "16e6f4bb3dc.jpg",
		foreground = "167515a75c9.png",
		backgroundCover = "16f06c06a3f.png",
		stolenMoonSky = "16f06b1c601.png"
	},
	minPlayers = 5,
	maxPlayers = 70,
	timerTicks = 12,
	life = 6,
	rewardMagicianDefeats = 15,
	rewardMutantMagicianDefeats = 3
}

--> Debug <--
local DEBUG, _eventKeyboard = true

if not DEBUG and (not (tfm.get.room.uniquePlayers == 1 and tfm.get.room.playerList[module.team.developer[1]]) and (tfm.get.room.uniquePlayers < module.minPlayers or tfm.get.room.uniquePlayers > module.maxPlayers)) then
	return system.exit()
end

--[[ Translations ]]--
local translation
do
	local texts = {
		en = {
			init = "Oh, look! An elf, and... Heey, they are hurt! Go near them and press [space bar] to talk.",
			dialog = {
				[1] = " Oh, h-hey! I'm so glad to finally meet someone.\n\n Elves were working on the Christmas organization when an evil wizard showed up and began to control the minds of all yetis of the mountain. H-he also kidnapped Santa...\n He didn't accept the end of halloween and wants to ruin our celebration.\n\n I w-was so scared... I had to find a way out of there, I've been stuck for days. Please, help us!",
				[2] = ''
			},
			closeDialog = "Press spacebar to close the dialog."
		},
		br = {
			init = '',
			dialog = {
				[1] = '',
				[2] = ''
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
	tryLimit = 2,
	setBroken = 3,
	setVerified = 4,
	broken = 5
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

local monsterData = {
	spawningTime = 1000,

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
	mutantMagicianFallRemoveTimer = 2000,

	flamingGiftQuantity = 0,
	flamingGiftSpawnTimer = 500,
	flamingGiftXSpeed = -25,

	meteorQuantity = 3,
	meteorSpawnTimer = 2000,
	meteorPower = 70,
	meteorDistantRadius = 150,
	meteorCloseRadius = 70,

	potionForce = 25,
	potionRadius = 80,
	potionSpawnTimer = 1000,
	breakPotionTimer = 1000,
	potionQuantity = 3,

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
		[monsterType.snow] = 8,
		[monsterType.roar] = 12,
		[monsterType.freeze] = 15,
		[monsterType.magician] = 70,
		[monsterType.mutantMagician] = 100
	},
	damage = {
		explode = 0.5,
		freeze = 1,
		flamingGift = 0.5,
		meteorClose = 1,
		meteorDistant = 0.5,
		potion = 0.5
	}
}

local monsterDirection = {
	left = 1,
	front = 2,
	right = 3,

	weakAttack = 1,
	alive = 2,
	strongAttack = 3,
	defeated = 4,
	ultimateAttack = 5
}

local bulletData = {
	damageRadiusFromPlayer = 50,
	damageRadiusFromMonster = 80,
	xSpeed = 20,
	ySpeed = -2,
	lifeTime = 1500,
	minimumDamage = 0.2,
	maximumDamage = 2,
	damage = 0,
	xSpeedBoss = 25,
	ySpeedBoss = 30
}

local rewardId = {
	badge = 0x01,
	orb = 0x02,
	old_title = 0x04,
	old_title2 = 0x08
}

local miscData = {
	miceTeleportSpawn = { 15, 1565 },
	fireMachineShootSpawn = { 740, 320 },
	bulletReloadTimer = 800,
	callbackTimer = 2500
}

local emoteIds = {
	throw = 26
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
		[monsterType.snow] = { -- ←↑→
			[1] = { "16eed594e5f.png", -18, -34 },
			[2] = { "16eed4a26ee.png", -18, -34 },
			[3] = { "16eed5f5b91.png", -28, -34 }
		},
		[monsterType.roar] = {
			[1] = { "16eed59af54.png", -18, -34 },
			[2] = { "16eed49b734.png", -18, -34 },
			[3] = { "16eed5ef27a.png", -42, -34 }
		},
		[monsterType.freeze] = {
			[1] = { "16eed599620.png", -18, -34 },
			[2] = { "16eed4a6380.png", -18, -34 },
			[3] = { "16eed5f2d70.png", -42, -34 }
		},
		[monsterType.magician] = {
			[2] = { "16ef27d5566.png", -95, -20 }, -- Normal
			[4] = { "16ef28a9a58.png", -105, -20 } -- Defeated
		},
		[monsterType.mutantMagician] = {
			[2] = { "16f01ecf9f4.png", -145, -32 }, -- Normal
			[4] = { "", -145, -32 } -- Defeated
		},
		attack = {
			[monsterType.snow] = {
				[1] = { "16eed720943.png", -28, -34 },
				[3] = { "16eed72296e.png", -26, -34 }
			},
			[monsterType.freeze] = {
				[1] = { "16eed718d77.png", -38, -34 },
				[3] = { "16eed71dbdc.png", -50, -34 }
			},
			[monsterType.roar] = {
				[1] = { "16eed725073.png", -38, -40 },
				[3] = { "16eed7270f7.png", -32, -40 }
			},
			[monsterType.magician] = {
				[1] = { "16ef2811ccd.png", -105, -20 }, -- Throwing (hands 180deg)
				[3] = { "16ef2846294.png", -105, -23 } -- Summoning (hands 90deg)
			},
			[monsterType.mutantMagician] = {
				[1] = { "16f01f722f1.png", -154, -32 }, -- Summoning (hands 225deg)
				[3] = { "16f05cbe665.png", -149, -44 }, -- Summoning (hand2 90deg)
				[5] = { "16f06e99042.png", -143, -60 } -- Throwing (hands 90deg)
			}
		}
	},
	dialogNpc = {
		background = "16f02675bf7.png",
		[1] = "16ebe7952c4.png", -- elf
		[2] = "16f02f12dbc.png" -- santa
	},
	npc = {
		elf = "16ef81709b5.png",--"16ebe6a1b5b.png",
		santa = "16ef81cda35.png"--"16ef2d90b06.png"
	},
	throwables = {
		fireball = "16eba44a988.png",
		bomb = "16ebf8c6c48.png",
		breath = "16f053d906e.png",
		snowball = "16ec3bf9538.png",
		flamingGift = { "16ee268a853.png", "16ee268db9b.png", "16ee268ed43.png" },
		meteor = "16f06ee1d5e.png",
		potion = "16f06b13b74.png"
	},
	heart = {
		[1] = "16ebd213f31.png", -- Red
		[0.5] = "16ebd26dde2.png", -- Half red / Half grey
		[0] = "16ebd2156a2.png" -- Grey
	},
	nightMode = { '' }
}

local imageLayer = {
	mapBackground = "?0",
	mapBackgroundReplace = "?1",
	objectBackground = "?1",
	objectForeground = "!1",
	dialogForeground = "&2",
	dialogBackgroud = ":20",
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
	mutantMagicianDefeats = {
		index = 3,
		default = 0
	},
	rewards = {
		index = 4,
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

		if reward == rewardId.orb then
			if playerData:get(playerName, "treeStage") < #images.christmasTree then return end
		elseif reward == rewardId.badge then
			if playerData:get(playerName, "mutantMagicianDefeats") < module.rewardMutantMagicianDefeats then return end
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
local newGame = false

local workingTimer = workingTimerState.start

local playerStage = { }

local passageBlocks = { }
local lastMountainStage = 0
local mutantMagicianTriggered = false
local isMoonStolen = false

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
	local distance = (((x1 - x2) ^ 2) + ((y1 - y2) ^ 2))
	return distance <= (radius ^ 2), distance
end

local getAngle = function(x1, y1, x2, y2)
	return math.atan2(y2 - y1, x2 - x1)
end

local getAcceleration = function(angle)
	return math.cos(angle), math.sin(angle)
end

local getXSpeed = function(distance)
	-- Returns the needed xSpeed to cover distance over a 0° ground of 0.3 friction.
	return math.floor(distance ^ 0.5 + 0.5)
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
		if data.hasHitBoss[7] then
			data.hasHitBoss[7] = false
			playerData:set(playerName, "magicianDefeats", playerData:get(playerName, "magicianDefeats") + 1):save(playerName)
		elseif data.hasHitBoss[8] then
			data.hasHitBoss[8] = false
			playerData:set(playerName, "mutantMagicianDefeats", playerData:get(playerName, "mutantMagicianDefeats") + 1):save(playerName)
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
		update(nil, 6)
	elseif workingTimer > workingTimerState.tryLimit then
		if workingTimer == workingTimerState.setBroken then
			workingTimer = workingTimerState.broken
		elseif workingTimer == workingTimerState.setVerified then
			workingTimer = workingTimerState.stop
		end
		globalInitInterface()
	elseif workingTimer > workingTimerState.stop then
		if workingTimer < workingTimerState.tryLimit then
			workingTimer = workingTimer + 0.5
			if workingTimer == workingTimerState.tryLimit then
				workingTimer = workingTimerState.setBroken
				canStart = true
			end
		end
	end
end

local loadAllImages
loadAllImages = function(playerName, _src)
	local t
	for k, v in next, (_src or images) do
		t = type(v)
		if t == "table" then
			loadAllImages(playerName, v)
		elseif t == "string" then
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
		t[t._count].args[#t[t._count].args + 1] = t[t._count]

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
			bullet_player = {
				_count = 0,
				_bin = {
					_count = 0
				}
			},
			bullet_monster = {
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

local monster, bullet, enableNightMode, removeNightMode
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

	monster.getAxis = function(type, sprite, isAttack)
		local axis = images.monsters
		if isAttack then
			axis = axis.attack
		end

		axis = axis[type][sprite]
		return axis[2], axis[3]
	end

	monster.new = function(type, x, y, stage)
		local object = tfm.exec.addShamanObject(objectId.fish, x, y)

		return objectManager.insert(addToStage(setmetatable({
			class = "monster",
			type = type,
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(images.monsters[type][monsterDirection.front][1], "#" .. object, monster.getAxis(type, monsterDirection.front)),
			spriteId = monsterDirection.front,
			objectData = tfm.get.room.objectList[object],
			isAttacking = false,
			life = monsterData.life[type],
			spawningTime = monsterData.spawningTime,
			deathCallback = nil,
			isAxisPosition = false,
			isBoss = (stage > 6),
			destroyed = false,
			halfWidth = 0,
			halfHeight = 0,
			lastDirection  = monsterDirection.right
		}, monster), stage))
	end

	monster.useAxisPosition = function(self, width, height)
		self.halfWidth = width / 2
		self.halfHeight = height / 2
		self.isAxisPosition = true
		return self
	end

	monster.getRelativeX = function(self)
		return self.objectData.x + (self.isAxisPosition and (monster.getAxis(self.type, self.spriteId, self.isAttacking) + self.halfWidth) or 0)
	end

	monster.getRelativeY = function(self)
		local _, axis = monster.getAxis(self.type, self.spriteId, self.isAttacking)
		return self.objectData.y + (self.isAxisPosition and (axis + self.halfHeight) or 0)
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

	local destroy = function(self, ignoreVisualRemoval)
		if not ignoreVisualRemoval then
			tfm.exec.removeImage(self.sprite)
			tfm.exec.removeObject(self.object)
		end
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
		if self.spawningTime > 0 then
			self.spawningTime = self.spawningTime - 500
			return
		end
		if self.destroyed then return end

		local players = getPlayersInStage(self.stage)
		if not players then
			self:setSprite(monsterDirection.front, false)
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
			if not self.isAttacking and math.random(1, 5) == 5 then
				--self:throwFlamingGift(players)
				--self:invokeMeteor(players)
				--self:throwPotions(players)
				self:beginChaos(players)
			end
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

	monster.setSprite = function(self, id, isAttack, defeated)
		if (self.spriteId == id and self.isAttacking == isAttack) or (not defeated and self.destroyed) then return end
		self.isAttacking = isAttack

		tfm.exec.removeImage(self.sprite)

		self.spriteId = id
		self.sprite = tfm.exec.addImage((isAttack and images.monsters.attack[self.type][id][1] or images.monsters[self.type][id][1]), "#" .. self.object, monster.getAxis(self.type, id, isAttack))

		return self
	end

	monster.moveAround = function(self, players, movement, maximumMice, radius)
		local _, totalNearPlayers = getNearPlayers(players, self.objectData.x, self.objectData.y, radius)
		-- Avoids monsters to get too close of the target
		if totalNearPlayers < maximumMice then
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

			self.lastDirection = ((xSpeed < 0) and monsterDirection.left or monsterDirection.right)
			tfm.exec.moveObject(self.objectData.id, 0, 0, true, xSpeed, -15, false)
		end

		self:setSprite(self.lastDirection)

		return self
	end

	-- Snow yeti
	monster.throwSnowball = function(self, players)
		local angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), self)

		self:setSprite(((self.objectData.x > player.x) and monsterDirection.left or monsterDirection.right), true)

		for _ = 1, monsterData.snowballQuantity do
			tfm.exec.addShamanObject(objectId.snowball, self.objectData.x + (directionX * 20), self.objectData.y - 15, angle, (directionX * monsterData.snowballForce), (directionY * monsterData.snowballForce))
		end

		return self
	end

	-- Freeze yeti
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

	-- Roar yeti
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
		directionRate = (directionRate < 0 and -1 or 1)

		local doorDirection = getStageDoorDirection(self.stage) * directionRate

		self:setSprite((directionRate == 1 and monsterDirection.left or monsterDirection.right), true)
		tfm.exec.explosion(self.objectData.x, self.objectData.y, monsterData.roarPower * doorDirection, monsterData.roarRadius, true)

		return self
	end

	local checkBossFinishedAttack = function(boss, timerObj)
		if timerObj.times == 0 then
			boss:setSprite(monsterDirection.alive, false)
		end
	end

	-- Magician
		-- Weak
	local explodeBomb = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.bombRadius)
		for player = 1, #players do
			decreaseLife(players[player], monsterData.damage.explode)
		end

		tfm.exec.explosion(objectData.x, objectData.y, monsterData.bombPower, monsterData.bombRadius, true)
	end

	local createBomb = function(boss, players, self)
		if boss.destroyed then return end

		local angle, directionX, directionY, player

		angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), boss)

		local object = tfm.exec.addShamanObject(objectId.box, boss:getRelativeX(), boss:getRelativeY(), angle, (directionX * monsterData.bombForce), (directionY * monsterData.bombForce))
		local image = tfm.exec.addImage(images.throwables.bomb, "#" .. object, -15, -35)
		timer.start(explodeBomb, monsterData.bombExplodeTimer, 1, tfm.get.room.objectList[object], players, image)

		checkBossFinishedAttack(boss, self)
	end

	monster.bomber = function(self, players)
		self:setSprite(monsterDirection.weakAttack, true)

		timer.start(createBomb, monsterData.bombSpawnTimer, monsterData.bombQuantity + (DEBUG and 2 or 0), self, players)
	end

		-- Strong
	local breathFreeze = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.breathRadius)
		for player = 1, #players do
			freezePlayer(players[player], true)
		end
		timer.start(unfreezePlayers, monsterData.breathUnfreezeTime, 1, players)
	end

	local createBreath = function(boss, players, self)
		if boss.destroyed then return end

		local player = tfm.get.room.playerList[getRandomValue(players)]

		local angleAim = math.deg(getPlayerAim(getRandomValue(players), boss, true))
		local object = tfm.exec.addShamanObject(objectId.rune, boss:getRelativeX(), boss:getRelativeY(), angleAim, 0, 0, true)
		local image = tfm.exec.addImage(images.throwables.breath, "#" .. object, -25, -15)

		timer.start(breathFreeze, monsterData.breathFreezeTime, 1, tfm.get.room.objectList[object], players, image)

		checkBossFinishedAttack(boss, self)
	end

	monster.freezeBreath = function(self, players)
		self:setSprite(monsterDirection.strongAttack, true)

		timer.start(createBreath, monsterData.breathSpawnTimer, monsterData.breathQuantity, self, players)
	end

	-- Mutant magician
		-- Weak
	local flamingGiftData = {
		damage = monsterData.damage.flamingGift,
		object = objectId.box,
		xSpeed = monsterData.flamingGiftXSpeed,
		xAxis = -20,
		yAxis = -26
	}
	local createFlamingGift = function(boss, players, self)
		if boss.destroyed then return end

		flamingGiftData.sprite = getRandomValue(images.throwables.flamingGift)
		bullet.newFromMonster(miscData.fireMachineShootSpawn[1], miscData.fireMachineShootSpawn[2], boss.stage, flamingGiftData)

		checkBossFinishedAttack(boss, self)
	end

	monster.throwFlamingGift = function(self, players)
		self:setSprite(monsterDirection.weakAttack, true)

		timer.start(createFlamingGift, monsterData.flamingGiftSpawnTimer, monsterData.flamingGiftQuantity, self, players)
	end

		-- Strong
	local meteorLoop = function(self, currentTime, remainingTime)
		if self.objectData.y < 1 or self.objectData.vy > 0 then return end

		local players, player, data, inRange, distance = getPlayersInStage(self.stage)
		for p = 1, (players and #players or 0) do
			player = players[p]
			data = (player and tfm.get.room.playerList[player])

			if data then
				inRange, distance = pythagoras(self.objectData.x, self.objectData.y, data.x, data.y, monsterData.meteorDistantRadius)
				if inRange then
					decreaseLife(player, ((distance <= (monsterData.meteorCloseRadius ^ 2)) and monsterData.damage.meteorClose or monsterData.damage.meteorDistant))
				end
			end
		end
		tfm.exec.explosion(self.objectData.x, self.objectData.y, monsterData.meteorPower, monsterData.meteorDistantRadius, true)

		self:destroy()
	end

	local meteorData = {
		object = objectId.fish,
		sprite = images.throwables.meteor,
		xAxis = -23,
		yAxis = -75,
		loop = meteorLoop
	}
	local createMeteor = function(boss, players, self)
		if boss.destroyed then return end

		bullet.newFromMonster(math.random(50, 83) * 10, -100, boss.stage, meteorData, true)

		checkBossFinishedAttack(boss, self)
	end

	monster.invokeMeteor = function(self, players)
		self:setSprite(monsterDirection.strongAttack, true)

		timer.start(createMeteor, monsterData.meteorSpawnTimer, monsterData.meteorQuantity, self, players)
	end

		-- Ultimate
	local breakPotion = function(objectData, players, imageId)
		tfm.exec.removeImage(imageId)
		tfm.exec.removeObject(objectData.id)

		players = getNearPlayers(players, objectData.x, objectData.y, monsterData.potionRadius)
		for player = 1, #players do
			decreaseLife(players[player], monsterData.damage.potion)
		end
	end

	local createPotion = function(boss, players, self)
		if boss.destroyed then return end

		local angle, directionX, directionY, player

		angle, directionX, directionY, player = getPlayerAim(getRandomValue(players), boss)

		local object = tfm.exec.addShamanObject(objectId.paperball, boss:getRelativeX(), boss:getRelativeY(), angle, (directionX * monsterData.potionForce), (directionY * monsterData.potionForce))
		local image = tfm.exec.addImage(images.throwables.potion, "#" .. object, -15, -15)

		timer.start(breakPotion, monsterData.breakPotionTimer, 1, tfm.get.room.objectList[object], players, image)

		if self.times <= 0 then
			if not isMoonStolen then
				self.times = 0 -- destroys the timer
			end
			checkBossFinishedAttack(boss, self)
		end
	end

	monster.throwPotions = function(self, players, totalPotions)
		self:setSprite(monsterDirection.ultimateAttack, true)

		timer.start(createPotion, monsterData.potionSpawnTimer, (totalPotions or monsterData.potionQuantity), self, players)
	end

	monster.stealTheMoon = function(self, players)
		if isMoonStolen then return end
		isMoonStolen = true

		for player = 1, #players do
			enableNightMode(players[player])
		end

		return true
	end

	monster.endChaos = function(self)
		for playerName, data in next, playerCache do
			if data.onNightMode then
				removeNightMode(data)
			end
		end
		isMoonStolen = false
	end

	monster.beginChaos = function(self, players)
		if self:stealTheMoon(self, players) then
			self:throwPotions(players, 0) -- Throws until the chaos is gone
			timer.start(monster.endChaos, 10000, 1, self)
		end
	end
end

do
	bullet = { }
	bullet.__index = bullet

	local playerLoop
	bullet.newFromPlayer = function(x, y, stage, playerName, direction, isBoss)
		if not monster._perStage[stage] or monster._perStage[stage]._count == 0 then return end

		local object, sprite

		local boss = isBoss and monster._perStage[stage][1] -- isBoss and has a boss
		if boss then
			local x, y = (x + 25), (y - 15)

			local angle, directionX, directionY = getPlayerAim(nil, boss, false, { x = x, y = y })

			object = tfm.exec.addShamanObject(objectId.paperball, x, y, angle, (-directionX * bulletData.xSpeedBoss), (-directionY * bulletData.ySpeedBoss)) -- Using negative because 'boss' was passed first, for the getRelativeN function.
			sprite = images.throwables.snowball
		else
			object = tfm.exec.addShamanObject(objectId.paperball, x + (25 * direction), y - 15, 0, bulletData.xSpeed * direction, bulletData.ySpeed)
			sprite = images.throwables.fireball
		end

		tfm.exec.playEmote(playerName, emoteIds.throw)

		return objectManager.insert(setmetatable({
			class = "bullet_player",
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(sprite, "#" .. object, -6, -6),
			objectData = tfm.get.room.objectList[object],
			lifeTime = bulletData.lifeTime,
			shooter = playerCache[playerName],
			isBoss = isBoss,
			loop = playerLoop
		}, bullet))
	end

	local monsterLoop
	bullet.newFromMonster = function(x, y, stage, data)
		data.object = (data.object or objectId.paperball)
		data.xSpeed = (data.xSpeed or 0)
		data.ySpeed = (data.ySpeed or 0)
		data.xAxis = (data.xAxis or 0)
		data.yAxis = (data.yAxis or 0)
		data.lifeTime = (data.lifeTime or bulletData.lifeTime)
		data.loop = (data.loop or monsterLoop)
		data.damage = (data.damage or bulletData.damage)

		local object = tfm.exec.addShamanObject(data.object, x, y, 0, data.xSpeed, data.ySpeed)

		return objectManager.insert(setmetatable({
			class = "bullet_monster",
			stage = stage,
			object = object,
			sprite = tfm.exec.addImage(data.sprite, "#" .. object, data.xAxis, data.yAxis),
			objectData = tfm.get.room.objectList[object],
			lifeTime = data.lifeTime,
			loop = data.loop,
			damage = data.damage
		}, bullet))
	end

	bullet.destroy = function(self)
		tfm.exec.removeImage(self.sprite)
		tfm.exec.removeObject(self.object)
		objectManager.delete(self)
	end

	bullet.checkLifeTime = function(self)
		self.lifeTime = self.lifeTime - 500
		if self.lifeTime <= 0 then
			self:destroy()
		end
	end

	playerLoop = function(self, currentTime, remainingTime)
		local monsters, obj = monster._perStage[self.stage]
		for m = 1, (monsters._count or 0) do
			obj = monsters[m]

			if obj and pythagoras(self.objectData.x, self.objectData.y, obj:getRelativeX(), obj:getRelativeY(), bulletData.damageRadiusFromPlayer) then
				if self.isBoss and not self.shooter.hasHitBoss[self.stage] then
					self.shooter.hasHitBoss[self.stage] = true
				end

				obj:damage(bulletData.damage)
				self:destroy()
				return
			end
		end

		self:checkLifeTime()
	end

	monsterLoop = function(self, currentTime, remainingTime)
		local players, player, data = getPlayersInStage(self.stage)
		for p = 1, (players and #players or 0) do
			player = players[p]
			data = (player and tfm.get.room.playerList[player])

			if data and pythagoras(self.objectData.x, self.objectData.y, data.x, data.y, bulletData.damageRadiusFromMonster) then
				decreaseLife(player, self.damage)
				self:destroy()
				return
			end
		end

		self:checkLifeTime()
	end
end

--[[ Interface ]]--
ui.dialog = function(playerName, id)
	playerCache[playerName].dialog.id = id

	playerCache[playerName].cachedImages.dialog[1] = tfm.exec.addImage(images.dialogNpc[id], imageLayer.dialogForeground, 550, 32, playerName)
	playerCache[playerName].cachedImages.dialog[2] = tfm.exec.addImage(images.dialogNpc.background, imageLayer.dialogBackgroud, 50, 215, playerName)

	ui.addTextArea(interfaceId.dialog, '', playerName, -1500, -1500, 3000, 3000, 1, 1, 0.15, true)
	ui.addTextArea(interfaceId.dialog + 1, "<font size='15' color='#F0F0E0' face='Courier New'><textformat leftmargin='10' rightmargin='5' leading='-3'>", playerName, 50, 220, 700, 160, 1, 1, 0, true)
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
local updateHeart, displayLife, removePlayerLife
do
	updateHeart = function(playerName, cache, id, level)
		cache = cache.cachedImages.heart

		if cache[id] then
			tfm.exec.removeImage(cache[id])
		end
		cache[id] = tfm.exec.addImage(images.heart[level], imageLayer.hudForeground, (id - 1) * 30, 30, playerName)
	end

	displayLife = function(playerName)
		local cache = playerCache[playerName]

		cache.life = module.life
		for heart = 1, module.life do
			updateHeart(playerName, cache, heart, 1)
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
			updateHeart(playerName, cache, lastHeartFloor, 0)
			level = (lastHeartLevel + 1) - level
		end
		if currentHeart > 0 and level < 1 then
			updateHeart(playerName, cache, currentHeart, level)
		end

		if cache.life <= 0 then
			tfm.exec.killPlayer(playerName)
		end
	end

	removePlayerLife = function(playerName, cache)
		cache = (cache or playerCache[playerName])
		if cache.life <= 0 then return end

		cache.life = 0
		for heart = 1, module.life do
			updateHeart(playerName, cache, heart, 0)
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
				heart = { },
				nightMode = { }
			},
			isFrozen = false,
			treeItem = nil, -- The id of the item to be collected
			hasItem = false, -- If the player is carrying the item
			placedItem = false, -- If the player has placed the item
			callbackAction = 0,
			bulletAction = 0,
			life = module.life,
			isFacingRight = true,
			hasHitBoss = { },
			onNightMode = false
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
	monsterData.flamingGiftQuantity = clamp(round(tfm.get.room.uniquePlayers / 5), 2, 6)
	bulletData.damage = clamp((2 - (tfm.get.room.uniquePlayers / 25)), bulletData.minimumDamage, bulletData.maximumDamage)
	-- Greeting
	tfm.exec.chatMessage("<PT>[•] " .. translation.init)
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

local buildMap, defeatMagician, defeatMutantMagician
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
		for g = groundId.bossBlock, groundId.bossBlock + 2 do
			tfm.exec.removePhysicObject(g)
		end
		tfm.exec.removePhysicObject(groundId.jointEffect)
	end

	defeatMagician = function(obj, base)
		obj:setSprite(monsterDirection.defeated, false, true)

		tfm.exec.removePhysicObject(groundId.jointEffect + 1)

		timer.start(executeMagicianBaseRemove, monsterData.magicianFallRemoveTimer, 1, obj, base)
	end

	local executeMutantMagicianBaseRemove = function(obj, base)
		base(obj, true)

		tfm.exec.removePhysicObject(groundId.bossBlock + 3)
	end

	defeatMutantMagician = function(obj, base)
		obj:setSprite(monsterDirection.defeated, false, true)

		for g = groundId.jointEffect + 2, groundId.jointEffect + 3 do
			tfm.exec.removePhysicObject(g)
		end

		if isMoonStolen then
			obj:endChaos()
		end

		timer.start(executeMutantMagicianBaseRemove, monsterData.mutantMagicianFallRemoveTimer, 1, obj, base)
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

enableNightMode = function(playerName)
	if not isMoonStolen then return end

	local cache = playerCache[playerName]
	cache.onNightMode = true
	cache = cache.cachedImages.nightMode

	cache[1] = tfm.exec.addImage(module.map.stolenMoonSky, imageLayer.mapBackgroundReplace, 0, 0, playerName)
	cache[2] = tfm.exec.addImage(images.nightMode[1], "$" .. playerName, -1000, -400, playerName)
end

removeNightMode = function(data)
	if not isMoonStolen then return end

	data.onNightMode = false
	data = data.cachedImages.nightMode

	for i = 1, 2 do
		tfm.exec.removeImage(data[i])
	end
end

local spawnMagician = function()
	monster.new(monsterType.magician, 945, 470, 7):useAxisPosition(50, 73):onDeath(defeatMagician)
	tfm.exec.removeJoint(jointId.blocker)
end

local spawnMutantMagician = function()
	monster.new(monsterType.mutantMagician, 953, 230, 8):useAxisPosition(50, 73):onDeath(defeatMutantMagician)
	tfm.exec.removeJoint(jointId.blocker + 1)
end

local checkStageChallege = function()
	local tmpCurrentStage
	for playerName, data in next, tfm.get.room.playerList do
		if not data.isDead and playerCache[playerName].dataLoaded then
			tmpCurrentStage = getCurrentStage(data.y, data.x)
			if tmpCurrentStage == 8 then -- Unrelated to the gameplay of the other stages
				if not DEBUG and not hasReward(playerName, rewardId.badge) then
					return tfm.exec.movePlayer(playerName, miscData.miceTeleportSpawn[1], miscData.miceTeleportSpawn[2])
				end

				if not mutantMagicianTriggered then
					mutantMagicianTriggered = true
					spawnMutantMagician()
				elseif isMoonStolen and not playerCache[playerName].onNightMode then
					enableNightMode(playerName)
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

local saveSanta = function(cbk, playerName)
	ui.dialog(playerName, 2)

	return true
end

local makeCallbacks = function()
	-- Collect item
	callback.new("placeItem", 915, 530, 50, 50):setClickable(10):setAction(collectItem)

	-- Place collected item in the tree spot
	callback.new("collectItem", 0, 1430, 160, 170):setClickable():setAction(placeItem)

	-- Elf NPC
	tfm.exec.addImage(images.npc.elf, imageLayer.objectForeground, -18, 1515)
	callback.new("elf", -18, 1535, 63, 63):setClickable():setAction(startIntro)

	-- Santa NPC
	tfm.exec.addImage(images.npc.santa, imageLayer.objectForeground, 915, 285)
	callback.new("santa", 915, 305, 75, 65):setClickable():setAction(saveSanta)
end

local canTriggerCallbacks = function(playerName)
	local time = os.time()
	if playerCache[playerName].callbackAction > time then return end
	playerCache[playerName].callbackAction = time + miscData.callbackTimer
	return true
end

local canThrowBullet = function(playerName)
	local time = os.time()
	if playerCache[playerName].bulletAction > time then return end
	playerCache[playerName].bulletAction = time + miscData.bulletReloadTimer
	return true
end

--[[ Events ]]--
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
				bullet.newFromPlayer(x, y, playerCache[playerName].currentStage, playerName, (playerCache[playerName].isFacingRight and 1 or -1), (playerCache[playerName].currentStage > 6))
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

	local cache = playerCache[playerName]
	local currentStage = cache.currentStage
	removePlayerFromStages(playerName)

	removePlayerLife(playerName, cache)
	if currentStage > 0 and currentStage < 7 then
		tfm.exec.addShamanObject(objectId.icecube, 900, tfm.get.room.playerList[playerName].y - 50)
	end
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
			error(playerData:dumpPlayer(playerName), system.savePlayerData(playerName, (playerData:dumpPlayer(playerName):gsub(module.name .. "={.-},?", ''))))
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
	workingTimer = workingTimerState.setVerified
	canStart = true
end, 1000, false)

loop(update, module.timerTicks, 1)

globalInitSettings(true)
tfm.exec.newGame(string.format(module.map.xml, module.map.foreground, module.map.backgroundCover,
	groundId.jointEffect, -- [magician] moving ground
	groundId.jointEffect + 1, -- [magician] -1 axis
	groundId.bossBlock, -- [magician] left block
	groundId.bossBlock + 1, -- [magician] right block
	groundId.bossBlock + 2, -- [magician] up/down block
	groundId.bossBlock + 3, -- [mutant magician] block
	groundId.jointEffect + 2, -- [mutant magician] circle axis
	groundId.jointEffect + 3 -- [mutant magician] moving ground
))
math.randomseed(os.time())
--[[ Module Info ]]--
local module = { 
	name = "event_name",
	title = { "titre_title_name" },
	map = "<C><P /><Z><S /><D /><O /></Z></C>"
}	

--[[ Development ]]--
local team = {
	developer = {"Nickname1", "Nickname2"},
	artist = {"Nickname1", "Nickname2"},
	translator = {"Nickname1", "Nickname2"}
}
for k, v in next, team do
	table.sort(v)
end

--[[ Translations ]]--
local translation = setmetatable({
	-- The languages EN, BR, ES, and FR are needed. Complementarily the languages AR, PL, TR, RO, DE, and RU can be added!
	en = {
		eventConcluded = "Congratulations! You won the event! It would not be possible without them:\n\t<N>» <BV>Developer: %s\n\t<N><N>» <R>Artist: %s\n\t<N>» <CE>Translator: %s",
	},
	br = {
		eventConcluded = "Parabéns! Você concluiu o evento! Isso não seria possível sem eles:\n\t<N>» <BV>Desenvolvedor: %s\n\t<N>» <R>Artista: %s\n\t<N>» <CE>Tradutor: %s",
	},
	es = {
		eventConcluded = "Felicitaciones! Ganaste el evento! No hubiera sido posible sin:\n\t» Desarrollador: %s\n\t» Artista: %s\n\t» Traductor: %s",
	},
	fr = {
		eventConcluded = "Félicitations! Vous avez gagné l'événement! Ce ne serait pas possible sans eux:\n\t» Développeur: %s\n\t» Artiste: %s\n\t» Traducteur: %s",
	},
},{
	__call = function(list, flag)
		return list[flag or tfm.get.room.community] or list.en
	end
})
translation.pt = translation.br

--[[ Functions ]]--
do
	local concat = table.concat
	table.concat = function(list,sep,f,i,j)
		if type(f) == "boolean" and f then
			return concat(list, sep)
		end
		
		local txt = ""
		sep = sep or ""
		i,j = i or 1,j or #list
		for k,v in next,list do
			if type(k) ~= "number" and true or (k >= i and k <= j) then
				txt = txt .. (not f and v or f(k,v)) .. sep
			end
		end
		return string.sub(txt,1,-1-#sep)
	end
end
table.find = function(list,value,index,f)
	for k,v in next,list do
		local i = (type(v) == "table" and index and v[index] or v)
		if (not f and i or f(i)) == value then
			return true,k
		end
	end
	return false,0
end
string.split = function(value, pattern, f)
	local out = {}
	for v in string.gmatch(value, pattern) do
		out[#out + 1] = (not f and v or f(v))
	end
	return out
end
math.round = function(x)
	local r = x%1
	return (math.floor(x) + (r > .5 and .5 or 0))
end

system.giveTitle = function(playerName, id)
	if module.title[id] and playerFlashData[playerName] then
		-- if #module.title>1 use <playerData:getData(playerName, "getTitle")[id]>
		if playerFlashData[playerName].dataSuccess and playerData:getData(playerName, "getTitle") then
			system.giveEventGift(playerName, module.title[id])
			playerData:setValue(playerName, { getTitle = false })
			playerData:save(playerData)
			
			-- You may want to thanks the team
			tfm.exec.chatMessage("<J>" .. string.format(translation().eventConcluded, "<BL>" .. table.concat(team.developer,"<G>, <BL>"), "<BL>" .. table.concat(team.artist,"<G>, <BL>"), "<BL>" .. table.concat(team.translator,"<G>, <BL>")), playerName)	
			return true
		end
	end
	return false
end

--[[ Data ]]--
dataManager = {}
dataManager.using = function(module, data)
	local self = {}	
	
	--[[ Tools ]]--
	local transform = function(value, dataType, reverse)
		if dataType == "number" then
			return reverse and (tostring(value)) or (tonumber(value) or 0)
		elseif dataType == "boolean" then
			return reverse and (value and "1" or "0") or (value == "1")
		elseif dataType == "table" then
			return reverse and (table.concat(value, "|")) or (string.split(value, "[^|]+", function(value)
				if value == "true" or value == "false" then
					return value == "true"
				end
				return tonumber(value) or tostring(value)
			end))
		else
			return tostring(value)
		end
	end
	
	self.normalizeData = function(self, data)
		data = string.split(data, "[^~]+")
		local out = {}
		
		for k, v in next, self._data do
			local value = data[v.index]
			if value then
				if value == "nil" then
					value = v.default
				else
					value = transform(value, type(v.default))
				end
			end
			if type(value) == "nil" then
				value = v.default
			end
			
			out[v.name] = value
		end
		
		return out
	end
	
	--[[ Managers ]]--
	self.init = function(self, module, data)
		self._module = module
		self._data = {}
		self._players = {}
		
		local availableTypes = { number = true, string =  true, table = true, boolean = true }
		
		for k, v in next, data do
			if v.index and type(v.index) == "number" then
				if not self._data[v.index] then
					if v.default ~= nil and availableTypes[type(v.default)] then
						self._data[v.index] = {
							index = v.index,
							default = v.default,
							name = k
						}
					else
						error(string.format("parameter_index_%s:%s: The index 'default' does not exist or have not its value type available for this manager [number, string, table, boolean].", v.index, type(v.default)))
					end
				else
					error(string.format("parameter_index_%s: The index 'index' must be unique. There is already a value with this index.", v.index))
				end
			else
				error(string.format("parameter_%s: The index 'index' does not exist or is not a number.", k))
			end
		end
	end

	self.struct = function(self, player, data)
		local hasData = false
		
		local garbage = data
		for Module, Data in string.gmatch(data, "%[(.-)%]%((.-)%)") do
			garbage = string.gsub(string.gsub(garbage, string.format("%%[%s%%]%%(.-%%)", Module), ""), "<INSERT_DATA>", "")
		
			if Module == self._module then
				hasData = true
				
				local raw = string.gsub(data, string.format("%%[%s%%]%%(.-%%)", Module), "<INSERT_DATA>")
				self._players[player] = setmetatable({_GARBAGE = {"", false}, data = self:normalizeData(Data)},{
					__call = function(playerTable, single)
						local out = {}
						for k, v in next, self._data do
							out[#out + 1] = transform(self._players[player].data[v.name], type(self._players[player].data[v.name]), true)
						end
						
						local out =  string.format("[%s](%s)", self._module, table.concat(out, "~"))
						if single then
							return out
						else
							raw = string.gsub(raw, playerTable._GARBAGE[2] and playerTable._GARBAGE[1] or "", "", 1)
							return string.gsub(raw, "<INSERT_DATA>", out)
						end
					end
				})
			end
		end

		if hasData then
			garbage = string.gsub(garbage, "[%^%$%(%)%%%[%]%?%*%+%-]", "%%%1")
			self._players[player]._GARBAGE[1] = garbage
		else
			return self:struct(player, data .. string.format("[%s](nil)", self._module))
		end
		
		return not not self._players[player]
	end
	
	self.getData = function(self, player, index)
		if self._players[player] then
			if index then
				if self._players[player].data[index] ~= nil then
					return self._players[player].data[index]
				else
					return { error = string.format("getData_ The index '%s' does not exist.", index) }
				end
			else
				return self._players[player]()
			end
		else
			return { error = string.format("getData_ The player '%s' does not have a player structure.", player) }
		end
	end
	
	self.setValue = function(self, player, values, save)
		if self._players[player] then
			local updated = false
			for k, v in next, values do
				if self._players[player].data[k] ~= nil and type(v) == type(self._players[player].data[k]) then
					if not updated then
						updated = true
					end
					
					self._players[player].data[k] = v
				end
			end
			
			if updated then
				local out = self._players[player]()
				if save then
					self:save(player, out)
				end
				return out
			else
				return { error = string.format("setValue_ The values '%s' do not exist.", table.concat(values, " ~ ", tostring)) }
			end
		else
			return { error = string.format("setValue_ The player '%s' does not have a player structure.", player) }
		end
	end
	
	self.save = function(self, player, data)
		if player then
			system.savePlayerData(player, data or self._players[player]())
			return true
		else
			return false
		end
	end
	
	self.garbage = function(self, player, remove)
		if self._players[player] then
			if remove then
				self._players[player]._GARBAGE[2] = true
				self:save(player)
				self._players[player]._GARBAGE[1] = ""
			end
			return self._players[player]._GARBAGE[1], self._players[player]._GARBAGE[2]
		else
			return { error = string.format("garbage_ The player '%s' does not have a player structure.", player) }
		end
	end
	
	self:init(module, data)
	return self
end
dataManager.delete = function(module, data)
	for Module, Data in string.gmatch(data, "%[(.-)%]%((.-)%)") do
		local mod = module
		if type(module) == "table" then
			local found, index = table.find(module, Module)
			if found then
				mod = module[index]
			end
		end
		if Module == mod then
			data = string.gsub(data, string.format("%%[%s%%]%%(.-%%)", Module), "")
		end
	end
	return data
end

local playerData, playerFlashData = dataManager.using(module.name, {
	-- Obligatory: the value informs if the player got the title or not
	getTitle = {
		index = 1,
		-- if #module.title>1 use <{true, true, ...}>
		default = true
	},
	param1 = {
		index = 2,
		default = 1
	}
}), {}

--[[ Events ]]--
eventNewGame = function()
	-- 2 and a half minutes
	tfm.exec.setGameTime(2.5 * 60)

	for playerName, playerInfo in next, tfm.get.room.playerList do
		playerFlashData[playerName] = {
			dataSuccess = false
			-- TODO FLASH DATA
		}
		
		-- The player will be alive when the data loads
		tfm.exec.killPlayer(playerName)
		system.loadPlayerData(playerName)
	end
	-- TODO NEW GAME
end

eventPlayerDataLoaded = function(playerName, data)
	playerFlashData[playerName].dataSuccess = true
	tfm.exec.respawnPlayer(playerName)
	
	playerData:struct(playerName, data)
	-- TODO DATA
end

eventLoop = function(currentTime, timeLeft)
	_G.currentTime = math.round(currentTime / 1000)
	_G.timeLeft = math.round(timeLeft / 1000)
	-- TODO LOOP
end

eventPlayerLeft = function(playerName)
	if playerFlashData[playerName] then
		playerData:save(playerName)
	end
end

--[[ Initialization ]]--
for i, f in next,{"AfkDeath","AutoShaman","AutoTimeLeft","DebugCommand","MortCommand","PhysicalConsumables"} do
	-- Edit the functions above
	tfm.exec["disable"..f]()
end
if string.byte(tfm.get.room.name, 2) == 3 then
	-- Executed only in tribe houses
	tfm.exec.disableAutoNewGame()
end

tfm.exec.newGame(module.map)

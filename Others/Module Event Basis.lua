--[[ Module Info ]]--
local module = { 
	name = "event_name",
	title = { "titre_title_name" },
	map = '<C><P /><Z><S /><D /><O /></Z></C>'
}	

--[[ Development ]]--
local team = {
	developer = { "Nickname1#0000", "Nickname2#0000" },
	artist = { "Nickname1#0000", "Nickname2#0000" },
	translator = { "Nickname1#0000", "Nickname2#0000" }
}

--[[ Translations ]]--
local translation = setmetatable({
	-- The languages EN, BR, ES, and FR are needed. Complementarily the languages AR, PL, TR, RO, DE, and RU can be added!
	en = {
		event_concluded = "<V>[•] <J>You have won the event! This event wouldn't have been possible without the help of:\n\t<N>» <BV>Developers: %s\n\t<N>» <R>Artists: %s\n\t<N>» <CE>Translators: %s",
	},
	br = {
		event_concluded = "<V>[•] <J>Você ganhou o evento! Este evento não teria sido possível sem a ajuda de:\n\t<N>» <BV>Desenvolvedores: %s\n\t<N>» <R>Artistas: %s\n\t<N>» <CE>Tradutores: %s",
	},
	es = {
		event_concluded = "<V>[•] <J>¡Has ganado el evento! No habría sido posible realizar este evento sin la ayuda de:\n\t<N>» <BV>Desarrolladores: %s\n\t<N>» <R>Artistas: %s\n\t<N>» <CE>Traductores: %s",
	},
	fr = {
		event_concluded = "<V>[•] <J>Vous avez gagné l'événement! Cet événement n'aurait pas été possible sans l'aide de:\n\t<N>» <BV>Développeurs: %s\n\t<N>» <R>Artistes: %s\n\t<N>» <CE>Traducteurs: %s",
	},
},{
	__call = function(list, flag)
		return list[flag or tfm.get.room.community] or list.en
	end
})
translation.pt = translation.br

--[[ Data ]]--
local json = { encode = true, decode = true }
do
	local encode

	local escape_char_map = {
		['\\'] = "\\\\",
		['\"'] = "\\\"",
		['\b'] = "\\b",
		['\f'] = "\\f",
		['\n'] = "\\n",
		['\r'] = "\\r",
		['\t'] = "\\t"
	}
	local escape_char_map_inv = { ["\\/"] = "/", ['/'] = "\\/" }
	
	local escape_char = function(c)
		return escape_char_map[c] or string.format("\\u%04x", string.byte(c))
	end

	local encode_nil = function(val)
		return "null"
	end

	local encode_table = function(val, stack)
		local res = {}
		stack = stack or {}
		if stack[val] then error("[JSON] Circular reference") end
		stack[val] = true
		if val[1] ~= nil or next(val) == nil then
			local n = 0
			for k in next, val do
				if type(k) ~= "number" then
					error("[JSON] Invalid table: mixed or invalid key types")
				end
				n = n + 1
			end
			if n ~= #val then
				error("[JSON] Invalid table: sparse array")
			end
			for i, v in ipairs(val) do
				res[#res + 1] = encode(v, stack)
			end
			stack[val] = nil
			return "[" .. table.concat(res, ",") .. "]"
		else
			for k, v in next, val do
				if type(k) ~= "string" then
					error("[JSON] Invalid table: mixed or invalid key types")
				end
				res[#res + 1] = encode(k, stack) .. ":" .. encode(v, stack)
			end
			stack[val] = nil
			return "{" .. table.concat(res, ",") .. "}"
		end
	end

	local encode_string = function(val)
		return '"' .. string.gsub(val, '[%z\1-\31\\"]', escape_char) .. '"'
	end

	local encode_number = function(val)
		if val ~= val or val <= -math.huge or val >= math.huge then
			error("[JSON] Unexpected number value '" .. tostring(val) .. "'")
		end
		return string.format("%.14g", val)
	end

	local type_func_map = {
		["nil"] = encode_nil,
		["table"] = encode_table,
		["string"] = encode_string,
		["number"] = encode_number,
		["boolean"] = tostring,
	}

	encode = function(val, stack)
		local t = type(val)
		local f = type_func_map[t]
		if f then
			return f(val, stack)
		end
		error("[JSON] Unexpected type '" .. t .. "'")
	end

	local parse
	
	local space_chars = {
		[' '] = true,
		['\t'] = true,
		['\r'] = true,
		['\n'] = true
	}
	local delim_chars = {
		[' '] = true,
		['\t'] = true,
		['\r'] = true,
		['\n'] = true,
		[']'] = true,
		['}'] = true,
		[','] = true
	}
	local escape_chars = {
		['\\'] = true,
		['/'] = true,
		['"'] = true,
		['b'] = true,
		['f'] = true,
		['n'] = true,
		['r'] = true,
		['t'] = true,
		['u'] = true
	}
	local literals = {
		["true"] = true,
		["false"] = true,
		["null"] = true
	}
	local literal_map = {
		["true"] = true,
		["false"] = false,
		["null"] = nil
	}

	local next_char = function(str, idx, set, negate)
		for i = idx, #str do
			if set[string.sub(str, i, i)] ~= negate then
				return i
			end
		end
		return #str + 1
	end

	local decode_error = function(str, idx, msg)
		local line_count = 1
		local col_count = 1
		for i = 1, idx - 1 do
			col_count = col_count + 1
			if string.sub(str, i, i) == "\n" then
				line_count = line_count + 1
				col_count = 1
			end
		end
		error(string.format("[JSON] %s at line %d col %d", msg, line_count, col_count))
	end

	local codepoint_to_utf8 = function(n)
		if n <= 0x7f then
			return string.char(n)
		elseif n <= 0x7ff then
			return string.char(math.floor(n / 64) + 192, n % 64 + 128)
		elseif n <= 0xffff then
			return string.char(math.floor(n / 4096) + 224, math.floor(n % 4096 / 64) + 128, n % 64 + 128)
		elseif n <= 0x10ffff then
			return string.char(math.floor(n / 262144) + 240, math.floor(n % 262144 / 4096) + 128, math.floor(n % 4096 / 64) + 128, n % 64 + 128)
		end
		error(string.format("[JSON] Invalid unicode codepoint '%x'", n))
	end

	local parse_unicode_escape = function(s)
		local n1 = tonumber(string.sub(s, 3, 6), 16)
		local n2 = tonumber(string.sub(s, 9, 12), 16)
		if n2 then
			return codepoint_to_utf8((n1 - 0xd800) * 0x400 + (n2 - 0xdc00) + 0x10000)
		else
			return codepoint_to_utf8(n1)
		end
	end
	
	local parse_string = function(str, i)
		local has_unicode_escape = false
		local has_surrogate_escape = false
		local has_escape = false
		local last
		for j = i + 1, #str do
			local x = string.byte(str, j)
			if x < 32 then
				decode_error(str, j, "Control character in string")
			end
			if last == 92 then
				if x == 117 then
					local hex = string.sub(str, j + 1, j + 5)
					if not string.find(hex, "%x%x%x%x") then
						decode_error(str, j, "Invalid unicode escape in string")
					end
					if string.find(hex, "^[dD][89aAbB]") then
						has_surrogate_escape = true
					else
						has_unicode_escape = true
					end
				else
					local c = string.char(x)
					if not escape_chars[c] then
						decode_error(str, j, "Invalid escape char '" .. c .. "' in string")
					end
					has_escape = true
				end
				last = nil
			elseif x == 34 then
				local s = string.sub(str, i + 1, j - 1)
				if has_surrogate_escape then
					s = string.gsub(s, "\\u[dD][89aAbB]..\\u....", parse_unicode_escape)
				end
				if has_unicode_escape then
					s = string.gsub(s, "\\u....", parse_unicode_escape)
				end
				if has_escape then
					s = string.gsub(s, "\\.", escape_char_map_inv)
				end
				return s, j + 1
			else
				last = x
			end
		end
		decode_error(str, i, "Expected closing quote for string")
	end

	local parse_number = function(str, i)
		local x = next_char(str, i, delim_chars)
		local s = string.sub(str, i, x - 1)
		local n = tonumber(s)
		if not n then
			decode_error(str, i, "Invalid number '" .. s .. "'")
		end
		return n, x
	end
	
	local parse_literal = function(str, i)
		local x = next_char(str, i, delim_chars)
		local word = string.sub(str, i, x - 1)
		if not literals[word] then
			decode_error(str, i, "Invalid literal '" .. word .. "'")
		end
		return literal_map[word], x
	end
	
	local parse_array = function(str, i)
		local res = {}
		local n = 1
		i = i + 1
		while 1 do
			local x
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) == "]" then
				i = i + 1
				break
			end
			x, i = parse(str, i)
			res[n] = x
			n = n + 1
			i = next_char(str, i, space_chars, true)
			local chr = string.sub(str, i, i)
			i = i + 1
			if chr == "]" then break end
			if chr ~= "," then decode_error(str, i, "Expected ']' or ','") end
		end
		return res, i
	end
	
	local parse_object = function(str, i)
		local res = {}
		i = i + 1
		while 1 do
			local key, val
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) == "}" then
				i = i + 1
				break
			end
			if string.sub(str, i, i) ~= '"' then
				decode_error(str, i, "Expected string for key")
			end
			key, i = parse(str, i)
			i = next_char(str, i, space_chars, true)
			if string.sub(str, i, i) ~= ":" then
				decode_error(str, i, "Expected ':' after key")
			end
			i = next_char(str, i + 1, space_chars, true)
			val, i = parse(str, i)
			res[key] = val
			i = next_char(str, i, space_chars, true)
			local chr = string.sub(str, i, i)
			i = i + 1
			if chr == "}" then break end
			if chr ~= "," then decode_error(str, i, "Expected '}' or ','") end
		end
		return res, i
	end

	local char_func_map = {
		['"'] = parse_string,
		['0'] = parse_number,
		['1'] = parse_number,
		['2'] = parse_number,
		['3'] = parse_number,
		['4'] = parse_number,
		['5'] = parse_number,
		['6'] = parse_number,
		['7'] = parse_number,
		['8'] = parse_number,
		['9'] = parse_number,
		['-'] = parse_number,
		['t'] = parse_literal,
		['f'] = parse_literal,
		['n'] = parse_literal,
		['['] = parse_array,
		['{'] = parse_object,
	}

	local copy_ignoring
	copy_ignoring = function(tbl, pat)
		local out = {}
		for k, v in next, tbl do
			if not string.find(k, pat) then
				if type(v) == "table" then
					out[k] = copy_ignoring(v, pat)
				else
					out[k] = v
				end
			end
		end
		return out
	end
	
	parse = function(str, idx)
		local chr = string.sub(str, idx, idx)
		local f = char_func_map[chr]
		if f then
			return f(str, idx)
		end
		decode_error(str, idx, "Unexpected character '" .. chr .. "'")
	end
	
	json.encode = function(val)
		return (encode(copy_ignoring(val, "^__")))
	end

	json.decode = function(str)
		if type(str) ~= "string" then
			error("[JSON] Expected argument of type string, got " .. type(str))
		end
		if str == "" then str = "{}" end
		local res, idx = parse(str, next_char(str, 1, space_chars, true))
		idx = next_char(str, idx, space_chars, true)
		if idx <= #str then
			decode_error(str, idx, "Trailing garbage")
		end
		return res
	end
end

local playerFlashData = {}
local playerData = setmetatable({}, {
	__newindex = function(this, playerName, tbl)
		rawset(this, playerName, setmetatable(tbl, {
			-- Call playerData[playerName] to save the player data correctly
			__call = function(playerTable)
				local data = rawget(playerTable, "__modules")
				data[module.name] = playerTable

				-- Json.encode ignores all the indexes that starts with __
				system.savePlayerData(playerName, json.encode(data))
			end
		}))
	end
})

--[[ Utils ]]--
system.giveTitle = function(playerName, id)
	if module.title[id] and playerFlashData[playerName] then
		-- if #module.title > 1 use <not playerData[playerName].won[id]>
		if playerFlashData[playerName].dataLoaded and not playerData[playerName].won then
			system.giveEventGift(playerName, module.title[id])
			
			playerData[playerName].won = true
			-- Call it to save the player data
			playerData[playerName]()
			
			-- You may want to thanks the team
			tfm.exec.chatMessage(string.format(translation().event_concluded, "<BL>" .. table.concat(team.developer, "<G>, <BL>"), "<BL>" .. table.concat(team.artist, "<G>, <BL>"), "<BL>" .. table.concat(team.translator, "<G>, <BL>")))
			return true
		end
	end
	return false
end

--[[ Main ]]--
eventNewGame = function()
	-- 2 and a half minutes is the event standard
	tfm.exec.setGameTime(2.5 * 60)

	for playerName, playerInfo in next, tfm.get.room.playerList do
		playerFlashData[playerName] = {
			-- Whether the data has loaded or not
			dataLoaded = false
			
			-- TODO FLASH DATA
		}
		
		-- The player will be alive when the data loads
		tfm.exec.killPlayer(playerName)
		system.loadPlayerData(playerName)
	end
	-- TODO NEW GAME
end

eventPlayerDataLoaded = function(playerName, data)
	data = json.decode(data)
	
	-- Tries to get the data of the current module, otherwise uses the default data
	playerData[playerName] = data[module.name] or {
		-- Whether the player has got the title or not
		-- if #module.title > 1 use <won = { false, ... }>
		won = false,
		
		-- TODO Data to save (Use short names)
	}
	data[module.name] = nil
	-- The data of all the other modules of the player
	playerData[playerName].__modules = data

	playerFlashData[playerName].dataLoaded = true
	tfm.exec.respawnPlayer(playerName)
	
	-- TODO DATA
end

eventPlayerLeft = function(playerName)
	if playerFlashData[playerName].dataLoaded then
		playerData[playerName]()
	end
end

for i, f in next, { "AfkDeath", "AutoShaman", "AutoTimeLeft", "DebugCommand", "MortCommand", "PhysicalConsumables" } do
	-- Edit the functions above
	tfm.exec["disable" .. f]()
end
if string.byte(tfm.get.room.name, 2) == 3 then
	-- Executed only in tribe houses
	tfm.exec.disableAutoNewGame()
end

tfm.exec.newGame(module.map)

--[[ Test vars ]]--
	string.nick=function(player)
		return player:lower():gsub('%a',string.upper,1)
	end
	system.roomAdmins = {}
	system.standardTime = 60
-------------------

system.roomSettings = {
	["@"] = function(value)
		system.roomAdmins[string.nick(value)] = true
	end,
	["!"] = function(value)
		system.standardTime = tonumber(value) or 60
	end
}

system.module = "test"

system.isRoom = tfm.get.room.name:byte(2) ~= 3
system.roomAttributes = system.isRoom and tfm.get.room.name:match("%*?#".. system.module .. "%d+(.*)") or nil

system.setRoom = function()
	if system.isRoom and system.roomAttributes then
		local chars = ""
		for k in next,system.roomSettings do
			chars = chars .. k
		end
		
		for char,value in system.roomAttributes:gmatch("(["..chars.."])([^"..chars.."]+)") do
			for k,v in next,system.roomSettings do
				if k == char then
					v(value)
					break
				end
			end
		end
	end
end

system.setRoom()

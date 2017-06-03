system.roomSettings = {
	["@"] = function(n)
		system.roomAdmins[string.nick(n)] = true
	end,
	["#"] = function(id)
		system.miscAttrib = tonumber(id) or 1
		system.miscAttrib = math.max(1,math.min(system.miscAttrib,99))
	end,
	["*"] = function(name)
		local game = system.getGameMode(name)
		if not game then
			system.gameMode = "grounds"
		end
	end
}
system.setRoom = function()
	if system.isRoom and system.roomAttributes then
		local chars = ""
		for k in next,system.roomSettings do
			chars = chars .. k
		end

		for char,value in string.gmatch(system.roomAttributes,"(["..chars.."])([^"..chars.."]+)") do
			for k,v in next,system.roomSettings do
				if k == char then
					v(value)
					break
				end
			end
		end
	end
end

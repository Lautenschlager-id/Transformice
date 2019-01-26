-- Use mapGrid.isGround(x, y)

local gmatch, match = string.gmatch, string.match
local rad, cos, sin, floor = math.rad, math.cos, math.sin, math.floor

local groundGridManager = function()
	local self = { }
	local map = { }
	local grounds = { }
	local coroMap
	local dots = 1
	local text = "<p align='center'><font size='30'>Loading map grid"

	local getGroundsData = function(xml)
		local grounds, counter = { }, 0
		for ground in gmatch(xml, "<S (.-)/>") do
			counter = counter + 1
			grounds[counter] = { }

			for attribute, _, value in gmatch(ground, "(%-?%w+) *= *([\"'])(.-)%2") do 
				grounds[counter][attribute] = tonumber(value) or value
			end
		end
		return grounds
	end

	local rotatePoint = function(x, y, angle, xC, yC)
		angle = rad(angle)
		local sin = sin(angle)
		local cos = cos(angle)

		x = xC - x
		y = yC - y

		local nx = x * cos - y * sin
		local ny = y * cos + x * sin

		x = nx + xC
		y = ny + yC

		return floor(x), floor(y)
	end

	local createPoint = function(x, y)
		if not map[x] then
			map[x] = { [y] = true }
		else
			map[x][y] = true
		end
	end

	local updateText = function(pixels)
		ui.updateTextArea(-667, text .. string.rep('.', dots) .. "\n<font size='15'>" .. pixels .. " pixels loaded.")
		dots = dots % 3 + 1
	end

	local generateMap = function()
		ui.addTextArea(-666, "", nil, -1500, -1500, 3000, 3000, 0x6A7495, 0x6A7495, 1, true)
		ui.addTextArea(-667, text, nil, 5, 170, 790, nil, 0x6A7495, 0x6A7495, 1, true)

		local pixels = 0

		local g, halfX, halfY, angle
		for z = 1, #grounds do
			g = grounds[z]
			if grounds.T ~= 12 then
				halfX = g.X - floor(g.L / 2)
				halfY = g.Y - floor(g.H / 2)
				angle = tonumber(match(g.P, ".-,.-,.-,.-,([^,]+)")) or 0
				for d = 1, g.L * g.H do
					local x = halfX + ((d - 1) % g.L)
					local y = halfY + floor(d / g.L)

					if ang ~= 0 then
						x, y = rotatePoint(x, y, angle, g.X, g.Y)
					end
					createPoint(x, y)

					pixels = pixels + 1
					if pixels % 480 == 0 then
						updateText(pixels)
						coroutine.yield()
					end
				end
			end
		end

		ui.removeTextArea(-666)
		ui.removeTextArea(-667)
	end

	self.updateMap = function()
		if not coroMap then return end

		if coroMap == true then
			coroMap = coroutine.create(generateMap)
		end

		if coroutine.status(coroMap) ~= "dead" then
			coroutine.resume(coroMap)
		else
			coroMap = nil
			for playerName in next, tfm.get.room.playerList do
				tfm.exec.respawnPlayer(playerName)
			end
		end
	end

	self.new = function(xml)
		map = { }

		grounds = getGroundsData(xml)

		coroMap = true
		self.updateMap()
	end

	self.refresh = function()
		map = { }
		coroMap = nil
	end

	self.isGround = function(x, y)
		return map[x] and map[x][y] or false
	end

	return self
end
local mapGrid = groundGridManager()
eventLoop = function()
	mapGrid.updateMap()
end

eventNewGame = function()
	for playerName in next, tfm.get.room.playerList do
		tfm.exec.killPlayer(playerName)
	end

	local xml = tfm.get.room.xmlMapInfo
	if xml then
		mapGrid.new(xml.xml)
	else
		mapGrid.refresh()
	end
end

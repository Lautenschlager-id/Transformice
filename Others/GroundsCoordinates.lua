-- Use mapHandler.isGround(x, y)

local gmatch, match = string.gmatch, string.match
local rad, cos, sin, floor = math.rad, math.cos, math.sin, math.floor

local mapManager = function()
	local self = { }
	local map = { }

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

	self.new = function(xml)
		map = { }

		local grounds = getGroundsData(xml)

		local g, halfX, halfY, angle
		for z = 1, #grounds do
			g = grounds[z]

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
			end
		end
	end

	self.refresh = function()
		map = { }
	end

	self.isGround = function(x, y)
		return map[x] and map[x][y] or false
	end

	return self
end
local mapHandler = mapManager()

eventNewGame = function()
	local xml = tfm.get.room.xmlMapInfo
	if xml then
		mapHandler.new(xml.xml)
	else
		mapHandler.refresh()
	end
end

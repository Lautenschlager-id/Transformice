system.looping = function(f, tick)
	local s = 1000 / tick
	local t = { }
	
	local fooTimer = function()
		t[#t+1] = system.newTimer(f, 1000, true)
	end
	for timer = 0, 1000 - s, s do
		system.newTimer(fooTimer, 1000 + timer, false)
	end
	return t
end

local npc
do
	local getId = coroutine.wrap(function()
		local id = 0
		while true do
			coroutine.yield(id)
			id = id + 1
		end
	end)
	
	npc = function(data, initState)
		local callback = ""
		local currentState = ""
		local id = getId()
		local timers = { }

		local self = {
			data = data,
			x = 0,
			y = 0,
			w = 1,
			h = 1
		}
		
		self.action = function(self, f, target, player)
			local state = currentState
			
			if state ~= "" and #timers == 0 then
				local current, lastImage = 0
				
				timers = system.looping(function()
					if currentState ~= state then
						self.stop(self)
						return
					end
				
					if lastImage then
						tfm.exec.removeImage(lastImage)
					end
					
					current = current + 1
					
					f(current)
					
					lastImage = tfm.exec.addImage(currentState[current % #currentState + 1] .. ".png", target, self.x, self.y, player)				
				end, (currentState.speed or 1))
				
				return self, true
			end
			return self, false
		end
		
		self.setDimension = function(self, width, height)
			self.w = width
			self.h = height
			
			return self, true
		end
		
		self.getId = function(self)
			return id
		end

		self.removeCallback = function(self, player)
			ui.removeTextArea(id, player)
			return self, true
		end
		
		self.setCallback = function(self, evt, player)
			if evt ~= "" and callback ~= evt then
				callback = evt
			
				ui.addTextArea(id, "<textformat leftmargin='1' rightmargin='1'><a href='event:" .. evt .. "'>" .. string.rep('\n', self.h / 10), player, self.x, self.y, self.w, self.h, 0, false)
				
				return self, true
			end
			
			return self, false
		end
		
		self.setPosition = function(self, x, y)
			self.x = x
			self.y = y
			
			return self, true
		end
		
		self.setState = function(self, state)
			if self.data[state] then
				currentState = self.data[state]
				return self, true
			else
				return self, false
			end
		end
		
		self.static = function(self, target, x, y, player)
			if currentState ~= "" then
				tfm.exec.addImage(currentState[1], target, x, y, player)
				return self, true
			end
			
			return self, false
		end
		
		self.stop = function(self)
			for i = 1, #timers do
				system.removeTimer(timers[i])
			end
			timers = { }
			
			return self, true
		end

		return self
	end
end

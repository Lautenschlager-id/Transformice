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
	local npcs = { }

	local getId = coroutine.wrap(function()
		local id = 0
		while true do
			coroutine.yield(id)
			id = id + 1
		end
	end)
	
	npc = function(data)
		local action
		local callback = ""
		local currentState = ""
		local id = getId()

		local self = {
			data = data,
			x = 0,
			y = 0,
			w = 1,
			h = 1
		}
	
		self.setDimension = function(self, width, height)
			self.w = width
			self.h = height
			
			return self, true
		end
		
		self.getAction = function(self)
			return action
		end
		
		self.getId = function(self)
			return id
		end

		self.removeCallback = function(self)
			callback = ""
			ui.removeTextArea(id)
			return self, true
		end
		
		self.setAction = function(self, target, f)
			local state = currentState
			
			if state ~= "" and #npcs[id] == 0 then
				local current, lastImage = 0
				
				action = function()
					if currentState ~= state then
						self.stop(self)
						return
					end
				
					if lastImage then
						tfm.exec.removeImage(lastImage)
					end
					
					current = current + 1
					
					local i = current % #currentState + 1
					if f then f(i) end
					
					lastImage = tfm.exec.addImage(currentState[i] .. ".png", target, self.x, self.y)				
				end
				
				return self, true
			end
			return self, false
		end

		self.setCallback = function(self, eventName)
			if eventName ~= "" and callback ~= eventName then
				callback = eventName
			
				ui.addTextArea(id, "<textformat leftmargin='1' rightmargin='1'><a href='event:" .. eventName .. "'>" .. string.rep('\n', self.h / 10), nil, self.x, self.y, self.w, self.h, 0, false)
				
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
		
		self.static = function(self, target)
			if currentState ~= "" then
				self.stop(self)
				tfm.exec.addImage(currentState[1], target, self.x, self.y)
				return self, true
			end
			
			return self, false
		end
		
		self.stop = function(self)
			npcs[id] = { }
			
			return self, true
		end
		
		npcs[id] = self
		return self
	end
	
	system.looping(function()
		for k, v in next, npcs do
			local action = v:getAction()
			if action then
				action()
			end
		end
	end, 10)
end

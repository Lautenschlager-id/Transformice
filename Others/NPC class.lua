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
	
	local npc_id = 0
	
	npc = function(name, collection, layer)
		local action
		local id = npc_id
		local img
		local state
		
		local deleteImage = function()
			if img then
				tfm.exec.removeImage(img)
				img = nil
			end
		end
		
		local self = {
			x = 0,
			y = 0
		}

		self.getAction = function(self)
			if action then
				return action
			end
			return nil, "Action is not set."
		end
	
		self.getCollection = function(self)
			return collection
		end
		
		self.getId = function(self)
			return id
		end
		
		self.getLayer = function(self)
			return layer
		end
		
		self.getName = function(self)
			return name
		end
		
		self.getState = function(self)
			return state
		end
		
		self.setAction = function(self, event, static)
			if type(state) == "table" then
				local oldState = state
				
				local curr = 0
				action = function(state)
					local i = curr % #state + 1
					if event then
						i = event(i) or i
					end
					
					curr = curr + 1
					
					deleteImage()
					img = tfm.exec.addImage(state[i] .. ".png", layer, self.x, self.y)
					ui.addTextArea(id, "<p align='center'><font color='#FFF426' face='Verdana'><B>" .. name, nil, self.x - (static and 20 or 0), self.y - 20, 100, 20, 1, 1, 0, false)
				end

				return self
			end
			return self, "State not set or cannot have an action."
		end
		
		self.setPosition = function(self, x, y)
			self.x = x
			self.y = y
			
			return self
		end
		
		self.setState = function(self, newState)
			newState = collection[newState]
			
			if newState and state ~= newState then
				state = newState
				self.stop(self)

				return self
			end
			return self, "This state doesn't exist or is already running."
		end
		
		self.static = function(self)
			if state then
				if #state == 1 then
					self.setAction(self, function()
						self.stop(self)
					end, true)
					
					return self
				end
				return self, "State must be len:1"
			end
			return self, "State not set."
		end
		
		self.stop = function(self)
			action = nil
			deleteImage()
			return self
		end
		
		npcs[#npcs + 1] = self
		npc_id = npc_id + 1
		return self
	end

	system.looping(function()
		for k, v in next, npcs do
			local action = v:getAction()
			if action then
				action(v:getState())
			end
		end
	end, 10)
end


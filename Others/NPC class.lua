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

local callback
do
	local callback_id = enumIds.callback

	callback = setmetatable({ }, {
		__call = function(this, eventName, x, y, w, h, d_id)
			local id = d_id or callback_id
			local action

			local self = {
				callback = eventName
			}

			self.setAction = function(self, f)
				if type(f) == "function" then
					action = f
					this[eventName] = self
					return true
				end
				return false
			end

			self.performAction = function(self, ...)
				if action then
					action(self, ...)
					return self, true
				end
				return self, false
			end

			self.remove = function(self)
				ui.removeTextArea(id)
				this[eventName] = nil
				return true
			end

			ui.addTextArea(id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. eventName .. "'>" .. string.rep('\n', h / 10), nil, x - 5, y - 5, w + 5, h + 5, 1, 1, .1, false)

			if not d_id then
				callback_id = callback_id + 1
			end

			return self
		end
	})
end

local npc
do
	local npcs = { }
	
	local npc_id = enumIds.npc
	
	npc = function(name, collection, layer)
		local action
		local evt
		local id = npc_id
		local img
		local state
		
		local self = {
			x = 0,
			y = 0,
			w = 1,
			h = 1
		}
		
		self.deleteCallback = function(self)
			if evt then
				evt:remove()
				return self
			end
			return self, "Callback doesn't exist."
		end
	
		self.destroy = function(self)
			if img then
				tfm.exec.removeImage(img)
				img = nil
			end
		end
		
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
		
		self.removeAction = function(self)
			action = nil
			self.destroy(self)
			return self
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
					
					self.destroy(self)
					img = tfm.exec.addImage(state[i] .. ".png", layer, self.x, self.y)
					ui.addTextArea(id + 1, "<p align='center'><font color='#FFF426' face='Verdana'><B>" .. name, nil, self.x - (static and 20 or 0), self.y - 20, 100, 20, 1, 1, 0, false)
				end

				return self
			end
			return self, "State not set or cannot have an action."
		end
		
		self.setCallback = function(self, eventName, event)
			if not evt then
				evt = callback(eventName, self.x, self.y, self.w, self.h, id)
				
				if event then
					evt:setAction(event)
				end
			
				return self
			end
			return self, "Callback already exists."
		end
		
		self.setDimension = function(self, w, h)
			self.w = w
			self.h = h
			
			return self
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
				self.removeAction(self)

				return self
			end
			return self, "This state doesn't exist or is already running."
		end
		
		self.static = function(self)
			if state then
				if #state == 1 then
					self.setAction(self, function()
						self.removeAction(self)
					end, true)
					
					return self
				end
				return self, "State must be len:1"
			end
			return self, "State not set."
		end

		npcs[#npcs + 1] = self
		npc_id = npc_id + 2
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

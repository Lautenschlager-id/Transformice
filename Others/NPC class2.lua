local loop = function(f, ticks, ...)
	local timers, index = { }, 0
	local addTimer = function(_, ...)
		index = index + 1
		timers[index] = system.newTimer(f, 1000, true, ...)
	end

	local seconds = 1000 / ticks
	for timer = 0, 1000 - seconds, seconds do
		system.newTimer(addTimer, 1000 + timer, false, ...)
	end

	return timers
end

local callback
do
	local id = 99

	callback = {
		_instance = {
			_count = 0
		}
	}
	callback.__index = callback
	callback.__iter = function()
		return ipairs(callback._instance)
	end
	callback.__get = function(eventName)
		return callback._instance[callback._instance[eventName]]
	end

	callback.new = function(eventName, x, y, width, height, hideCallback)
		id = id + 1

		local self = setmetatable({
			id = id,
			eventName = eventName,
			x = x,
			y = y,
			width = width,
			height = height,
			isFixed = false,
			hasRange = false,
			borderRange = 0,
			action = nil,
			isActive = false,
			image = nil,
			_blockedPlayers = { }
		}, callback)

		if not hideCallback then
			self:display()
		end

		local instance = callback._instance
		instance._count = instance._count + 1
		instance[instance._count] = self
		instance[eventName] = instance._count

		return self
	end

	callback.textarea = function(self, playerName)
		if playerName then
			self._blockedPlayers[playerName] = false
		end

		ui.addTextArea(self.id, "<textformat leftmargin='1' rightmargin='1'><a href='event:callback." .. self.eventName .. "'>" .. string_rep('\n', self.height / 10), playerName, self.x - 5, self.y - 5, self.width + 5, self.height + 5, 1, 1, 0, self.isFixed)

		return self
	end

	callback.display = function(self, f)
		if type(f) ~= "function" then
			-- Nil, Nickname, ...
			self:textarea(f)
		else
			for playerName, data in next, tfm.get.room.playerList do
				if f(playerName, data) then
					self:textarea(playerName)
				end
			end
		end
		self.isActive = true

		return self
	end

	callback.setFixed = function(self)
		self.isFixed = true
		return self
	end

	callback.setClickable = function(self, borderRange)
		if borderRange then
			self.borderRange = borderRange
		end
		self.hasRange = true

		return self
	end

	callback.inClickableRange = function(self, playerName, x, y)
		if not self.isActive or self._blockedPlayers[playerName] then return end
		if not self.hasRange then
			-- Can be triggered in any position
			return true
		end

		return (
			(
				x >= (self.x - self.borderRange) and
				x <= (self.x + self.width + self.borderRange)
			) and
			(
				y >= (self.y - self.borderRange) and
				y <= (self.y + self.height + self.borderRange)
			)
		)
	end

	callback.setAction = function(self, action)
		self.action = action
		return self
	end

	callback.performAction = function(self, playerName, x, y, ...)
		if not self.action then return end
		if not self:inClickableRange(playerName, x, y) then return end

		return self:action(playerName, x, y, ...) -- self, playerName, x, y, ...
	end

	callback.setImage = function(self, imageId)
		self.image = imageId
		return self
	end

	callback.remove = function(self, playerName)
		if not playerName then
			self.isActive = false
			if self.image then
				tfm.exec.removeImage(self.image)
			end
		else
			self._blockedPlayers[playerName] = true
		end

		ui.removeTextArea(self.id, playerName)
	end
end

local npc
do
	local id = 199
	local nameHTML = "<p align='center'><font color='#%06x' face='Verdana'><B>%s"
	local defaultNameColor = "FFF426"

	npc = {
		TICKS = 10,
		_instance = {
			_count = 0
		}
	}
	npc.__index = npc
	npc.__iter = function()
		return ipairs(npc._instance)
	end
	npc.__get = function(name)
		return npc._instance[npc._instance[name]]
	end

	npc.new = function(name, collection, layer)
		id = id + 1

		local self = setmetatable({
			id = id,

			x = 0,
			y = 0,
			w = 1,
			h = 1,

			_callback = nil,

			layer = layer,

			collection = collection,

			isStatic = false,
		}, npc)
		self:resetAction()

		if name then
			self:setName(name)
		end

		local instance = npc._instance
		instance._count = instance._count + 1
		instance[instance._count] = self
		instance[name] = instance._count

		return self
	end

	npc.resetAction = function(self)
		self.action = nil

		self.currentState = nil
		self._currentStateLen = 0
		self.currentSpriteId = 0
		self.sprite = nil
	end

	npc.setPosition = function(self, x, y)
		self.x = x
		self.y = y

		return self
	end

	npc.setDimension = function(self, w, h)
		self.w = w
		self.h = h

		return self
	end

	npc.setCollection = function(self, collection)
		self.collection = collection

		return self
	end

	npc.setLayer = function(self, layer)
		self.layer = layer

		return self
	end

	npc.setAction = function(self, action)
		self.action = action

		return self
	end

	npc.setCallback = function(self, callbackName, callbackAction)
		if self._callback then return self, false end

		self._callback = callback.new(callbackName, self.x, self.y, self.w, self.h)
		if callbackAction then
			self._callback:setAction(callbackAction)
		end

		return self, true
	end

	npc.setName = function(self, name, nameColor)
		self.rawname = name
		self._nameColor = color
		self._nameHTML = (name and string.format(nameHTML, (nameColor or defaultNameColor), name) or "")

		return self
	end

	npc.setNameColor = function(self, nameColor)
		if self.rawname then
			self._nameColor = color
			self._nameHTML = string.format(nameHTML, self._nameColor, name)
		end
		return self
	end

	npc.setState = function(self, state, keepAction)
		if not self.collection then return self, false end

		state = self.collection[state]
		if not state or state == self.currentState then return self, false end

		if not keepAction then
			self:resetAction()
		end

		self.currentState = state
		self._currentStateLen = #state

		return self, true
	end

	npc.setStatic = function(self)
		if not self.currentState then return self, false end

		self.action = nil
		self:display()

		return self, true
	end

	npc.deleteCallback = function(self, playerName)
		if not self._callback then return self, false end

		self._callback:remove(playerName)
		if not playerName then
			self._callback = nil
		end

		return self, true
	end

	npc.displayName = function(self)
		ui.addTextArea(self.id, self._nameHTML, nil, self.x - (self.isStatic and 20 or 0), self.y - 20, 100, 20, 1, 1, 0, false)

		return self
	end

	npc.display = function(self, spriteIndex)
		if self.sprite then
			tfm.exec.removeImage(self.sprite)
		end
		self.sprite = tfm.exec.addImage(self.currentState[(spriteIndex or 1)], self.layer, self.x, self.y)

		if self.rawname then
			self:displayName()
		end

		return self
	end

	npc.destroy = function(self, keepCallback)
		if self.sprite then
			tfm.exec.removeImage(self.sprite)
		end

		if self.rawname then
			ui.removeTextArea(self.id)
		end

		if not keepCallback then
			self._callback:remove()
		end
	end

	npc._loop = function(self)
		if not self.action then return end

		local spriteIndex = (self.currentSpriteId % self._currentStateLen) + 1
		spriteIndex = self.action(self, spriteIndex) or spriteIndex

		self.currentSpriteId = self.currentSpriteId + 1

		self:display(spriteIndex)
	end

	loop(function()
		for _, obj in npc.__iter() do
			obj:_loop()
		end
	end, npc.TICKS)
end

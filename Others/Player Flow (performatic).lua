local players = {
	room  = { _count = 0 },
	alive = { _count = 0 },
	dead  = { _count = 0 }
}

local copy = function(list)
	local out = { }
	for k, v in next, list do
		out[k] = v
	end
	return out
end

local insert = function(where, playerName)
	if not where[playerName] then
		where._count = where._count + 1
		where[where._count] = playerName
		where[playerName] = where._count
	end
end

local remove = function(where, playerName)
	if where[playerName] then
		where._count = where._count - 1
		table.remove(where, where[playerName])
		for i = where[playerName], where._count do
			where[where[i]] = where[where[i]] - 1
		end
		where[playerName] = nil
	end
end

eventNewPlayer = function(playerName)
	insert(players.room, playerName)
	insert(players.dead, playerName)
end
for playerName in next, tfm.get.room.playerList do
	eventNewPlayer(playerName)
end

eventPlayerLeft = function(playerName)
	remove(players.room, playerName)
end

eventPlayerDied = function(playerName)
	remove(players.alive, playerName)
	insert(players.dead, playerName)
end

eventPlayerRespawn = function(playerName)
	remove(players.dead, playerName)
	insert(players.alive, playerName)
end

eventNewGame = function()
	players.dead = { }
	players.alive = copy(players.room)
end

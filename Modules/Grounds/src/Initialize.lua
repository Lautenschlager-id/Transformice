execute = {}
system.setRoom()

system.init = function()
	for i,event in next,{"Loop","NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
		local e = "event" .. event
		
		local found = false
		for k,v in next,mode[system.gameMode] do
			if k == e then
				execute[e] = v
				found = true
				break
			end
		end
		if not found then
			execute[e] = function() end
		end

		_G[e] = function(...)
			if events[e] then
				events[e](...)
			end
			execute[e](...)
		end
	end

	if _G["eventNewPlayer"] then
		table.foreach(tfm.get.room.playerList,eventNewPlayer)
	end
	
	mode[system.gameMode].init()
end
system.init()

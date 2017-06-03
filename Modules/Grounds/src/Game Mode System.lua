system.normalizedModeName = function(name,back)
	if back then
		name = string.gsub(name,"%+","P") -- Test+ = TestP
	else
		name = string.gsub(name,"P$","+") -- TestP = Test+
	end
	return name
end

system.submodes = {}

system.gameMode = "grounds"
system.modeChanged = os.time() + 10e3

system.getGameMode = function(value)
	local found,submode = table.find(system.submodes,string.lower(value),nil,string.lower)
	if found then
		system.gameMode = system.normalizedModeName(system.submodes[submode],true)
		
		eventModeChanged()
		
		system.modeChanged = os.time() + 10e3
	end
	return found
end

--[[ Title ]]--
title = {
	[1] = "titre_Title name",
}

--[[ Translations ]]--
system.translation = {
	-- At least EN, BR, ES, FR are needed, complementarily AR, PL, TR, RO, DE, RU
	en = {
		dataTry = "Wait! Your data is loading...",
		dataFail = "Impossible to load your data :( Try again in the next map.",
		dataSuccess = "Data loaded!",
	},
	br = {
		dataTry = "Aguarde! Seus dados estão carregando...",
		dataFail = "Impossível carregar seus dados :( Tente novamente no próximo mapa.",
		dataSuccess = "Dados carregados!",
	},
	es = {
		dataTry = "¡Espera! Tus datos se están cargando...",
		dataFail = "No se pudieron cargar tus datos :( Prueba de nuevo en el siguiente mapa.",
		dataSuccess = "¡Datos cargados!",
	},
	fr = {
		dataTry = "Attends ! Tes données sont en train de charger...",
		dataFail = "Impossible de charger vos données :( Essayez encore lors de la prochaine map.",
		dataSuccess = "Données chargées !",
	},
}
system.translation.pt = system.translation.br

system.community = tfm.get.room.community
if not system.translation[system.community] then
	system.community = "en"
end
system.community = system.translation[system.community]

--[[ Thanks ]]--
system.staff = {
	dev = {"Developer 1"},
	translator = {"Translator 1"},
	artist = {"Artist 1"},
}
for k,v in next,system.staff do
	table.sort(v,function(t1,t2) return t2 > t1 end)
end

--[[ Functions ]]--
	--[[ Data ]]--
serialization = function(x)
	-- Avoid the following characters in your code: '_@', '_!', '_#', '_%', '+&', '&-', '?', ':', ';'
	if type(x) == "table" then
		local t = x
		local str = ""
		for index,value in next,t do
			local prefix,tbOption = (type(value)=="string" and "_@" or type(value)=="boolean" and "_!" or type(value)=="number" and "_#" or type(value)=="table" and "_%" or ""),(type(value)~="table" and tostring(value) or "+&"..serialization(value):gsub(";","?").."&-")
			str = str .. ':' .. tostring(index) .. prefix .. tbOption .. ";"
		end
		return str
	elseif type(x) == "string" then
		local s = x
		local list = {}
		for str in s:gmatch("(.-);") do
			local varName,valueType,value = str:match(':(.-)_(%p)(.+)')
			if varName~=nil then
				varName = tonumber(varName) or varName
				if valueType == "@" then
					list[varName] = tostring(value)
				elseif valueType == "!" then
					list[varName] = value=="true"
				elseif valueType == "#" then
					list[varName] = tonumber(value)
				elseif valueType == "%" then
					list[varName] = serialization(value:gsub("+&",""):gsub("&-",""):gsub("%?",";"))
				end	
			end
		end
		return list
	end
end
eventPlayerDataLoading = function(n,tentative)
	-- Avoids data replacement and error
	if tentative < 4 then
		local loadingData = system.loadPlayerData(n)
		if loadingData then
			tfm.exec.chatMessage("<G>" .. system.community.dataTry,n)
		else
			eventPlayerDataLoading(n,tentative + 1)
		end
	else
		tfm.exec.killPlayer(n)
		tfm.exec.chatMessage("<G>" .. system.community.dataFail,n)
	end
end
eventPlayerDataLoaded = function(n,data)
	if data ~= "" and data:find(":allowTitle") then -- ":allowTitle" refers to the info[playerName].db.allowTitle var
		info[n].db = serialization(data)
	else
		system.savePlayerData(n,serialization(info[n].db))
	end
	
	info[n].dataLoaded = true
	tfm.exec.chatMessage("<G>" .. system.community.dataSuccess,n)
	
	-- TODO Data Loaded
end
system.giveTitle = function(n,id)
	-- Use system.giveTitle instead of system.giveEventGift
	if title[id] and info[n] then
		if info[n].dataLoaded and info[n].db.allowTitle then
			system.giveEventGift(n,title[id])
			info[n].db.allowTitle = false
			system.savePlayerData(n,serialization(info[n].db))
			return true
		end
	end
end
			

	--[[ Others ]]--
os.normalizedTime = function(time)
	return math.floor(time) + ((time - math.floor(time)) >= .5 and .5 or 0)
end

--[[ New Game ]]--
info = {} -- Hosts the data of the players
eventNewGame = function()
	-- TODO New Game
	for k,v in next,tfm.get.room.playerList do
		info[k] = {
			-- TODO Data
			dataLoaded = false,

			db = {
				-- TODO Data to Save
				allowTitle = true,
			}
		}
		
		eventPlayerDataLoading(k,1)
	end
end

--[[ Loop ]]--
eventLoop = function(currentTime,timeLeft)
	_G.currentTime = os.normalizedTime(currentTime/1000) -- [Global] Current time in secondsm 0.5 by 0.5
	_G.timeLeft = os.normalizedTime(timeLeft/1000) -- [Global] Time left in secondsm 0.5 by 0.5
	-- TODO Loop
end

--[[ Left ]]--
eventPlayerLeft = function(n)
	if info[n] then
		system.savePlayerData(n,serialization(info[n].db))
	end
end

--[[ Init ]]--
for i,f in next,{"AutoShaman","AfkDeath","AutoTimeLeft","MortCommand","PhysicalConsumables","DebugCommand"} do
	-- Edit the functions
	tfm.exec["disable"..f]()
end

system.map = '<C><P /><Z><S /><D /><O /></Z></C>'
tfm.exec.newGame(system.map)

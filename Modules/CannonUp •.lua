string.nick=function(player)
	return player:lower():gsub('%a',string.upper,1)
end
table.turnTable = function(x)
	return (type(x)=="table" and x or {x})
end
system.players = function(alivePlayers)
    local alive,total = 0,0
	if alivePlayers then
		alive = {}
	end
    for k,v in next,tfm.get.room.playerList do
        if true then
            if not v.isDead and not v.isVampire then
                if alivePlayers then
					alive[#alive + 1] = k
				else
					alive = alive + 1
				end
            end
            total = total + 1
        end
    end
	if alivePlayers then
		return alive
	else
		return alive,total
	end
end
table.random=function(t)
	return (type(t)=="table" and t[math.random(#t)] or math.random())
end
xml = {}
xml.parse = function(currentXml)
	currentXml = currentXml:match("<P (.-)/>") or ""
	local out = {}
	for tag,_,value in currentXml:gmatch("([%-%w]+)=([\"'])(.-)%2") do
		out[tag] = value
	end
	return out
end
xml.attribFunc = function(currentXml,funcs)
	local attributes = xml.parse(currentXml)
	for k,v in next,funcs do
		if attributes[v.attribute] then
			v.func(attributes[v.attribute])
		end
	end
end
xml.addAttrib = function(currentXml,out,launch)
	local parameters = currentXml:match("<P (.-)/>") or ""
	for k,v in next,out do
		if not parameters:find(v.tag) then
			currentXml = currentXml:gsub("<P (.-)/>",function(attribs)
				return string.format("<P %s=\"%s\" %s/>",v.tag,v.value,attribs)
			end)
		end
	end
	if launch then
		tfm.exec.newGame(currentXml)
	else
		return currentXml
	end
end
normalizedTime = function(time)
	return math.floor(time) + ((time - math.floor(time)) >= .5 and .5 or 0)
end

cannonup = {
	start = false,
	initX = nil,
	initY = nil,
	newSpawn = 0,
	toSpawn = {},
	toDespawn = {},
	timer = 0,
	difficulty = {0,1,1}, -- timer to verify again, dif, amount of cn
	xml = 0,
	alive = 0,
	maps = {2310447,3746497,6001536,3666224,4591929},
	info = {},
	init = function()
		for _,f in next,{"AutoShaman","AutoScore","AutoNewGame","AutoTimeLeft","MinimalistMode","PhysicalConsumables"} do
			tfm.exec["disable"..f]()
		end
		for k,v in next,{"p","profile"} do
			system.disableChatCommandDisplay(v,true)
		end
		tfm.exec.setRoomMaxPlayers(25)
		tfm.exec.newGame(table.random(cannonup.maps))
	end,
	hostCannon = function()
		local getPlayer = table.random(system.players(true))
		local player = tfm.get.room.playerList[getPlayer]
		if player and not player.isDead then
			local coord = {
				{player.x,math.random() * 700},
				{player.y,math.random() * 300},
				{false,false}
			}
			
			if cannonup.initX ~= nil then
				coord[1][2] = cannonup.initX
				coord[3][1] = true
			end
			if cannonup.initY ~= nil then
				coord[2][2] = cannonup.initY
				coord[3][2] = true
			end
			
			if not coord[3][2] and coord[2][2] > coord[2][1] then
				coord[2][2] = coord[2][1] - math.random(100) - 35
			end
			if not coord[3][1] and math.abs(coord[1][2] - coord[1][1]) > 350 then
				coord[1][2] = coord[1][1] + math.random(-100,100)
			end
			
			local ang = math.deg(math.atan2(coord[2][2] - coord[2][1],coord[1][2] - coord[1][1]))
			tfm.exec.addShamanObject(0,coord[1][2] - (coord[3][1] and 0 or 10),coord[2][2] - (coord[3][2] and 0 or 10),ang + 90)
			
			cannonup.toSpawn[#cannonup.toSpawn + 1] = {coord[1][2],coord[2][2],ang}
		end
	end,
	displayProfile = function(p,n)
		ui.addTextArea(1,string.format("\n\n<font size='13'>\nRounds : <V>%d</V>\nCheeses : <V>%d</V>\n\nDeaths : <V>%d</V>",cannonup.info[p].round,cannonup.info[p].win,cannonup.info[p].death),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
		ui.addTextArea(2,"<p align='center'><font size='20'><VP><B><a href='event:close'>"..p.."</a>",n,305,105,190,30,0x244452,0x1B282E,.4,true)
	end,
	eventNewPlayer = function(n)
		if not cannonup.info[n] then
			cannonup.info[n] = {
				win = 0,
				death = 0,
				round = 0,
			}
		end
		tfm.exec.chatMessage(string.format("<V>[•]</V> <CE>Welcome to #CannonUp, %s. Your aim is to be the survivor! <VP>Take care, watermelons are dangerous!",n),n)
	end,
	eventNewGame = function()
		cannonup.start = true
		
		cannonup.toDespawn = {}
		cannonup.toSpawn = {}

		tfm.exec.setGameTime(125)
		ui.setMapName("#CannonUp")

		ui.removeTextArea(0,nil)
		local alive,mice = system.players()
		if mice > 1 then
			if cannonup.xml == 0 then
				cannonup.xml = xml.addAttrib(tfm.get.room.xmlMapInfo.xml or "",{
					[1] = {
						tag = "BH",
						value = ""
					}
				},false)
				ui.addTextArea(0,"",nil,-1500,-1500,3e3,3e3,0x6A7495,0x6A7495,1,true)
			else
				cannonup.initX = nil
				cannonup.initY = nil
				
				if mice > 3 then
					for k,v in next,cannonup.info do
						v.round = v.round + 1
					end
				end

				xml.attribFunc(cannonup.xml or "",{
					[1] = {
						attribute = "cn",
						func = function(v)
							if v:find("%a; ?%d+") then
								local axis,val = v:match("(%a); ?(%d+)")
								axis = axis:lower()
								if axis == "x" or axis == "y" then
									cannonup["init"..axis:upper()] = tonumber(val)
								end
							elseif v:find("%d+, ?%d+") then
								cannonup.initX,cannonup.initY = v:match("(%d+), ?(%d+)")
							end
						end
					},
					[2] = {
						attribute = "cheese",
						func = function() table.foreach(tfm.get.room.playerList,tfm.exec.giveCheese) end
					},
					[3] = {
						attribute = "meep",
						func = function() table.foreach(tfm.get.room.playerList,tfm.exec.giveMeep) end
					},
				})

				cannonup.xml = 0
			end
		else
			cannonup.start = false
			tfm.exec.chatMessage("<V>[•]</V> <R>At least 2 mice are necessary to play #CannonUp!</R>")
			tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
		end
	end,
	eventLoop = function(currentTime,leftTime)
		currentTime = normalizedTime(currentTime/1e3)
		leftTime = normalizedTime(leftTime/1e3)
		if cannonup.xml ~= 0 then
			tfm.exec.newGame(cannonup.xml)
		end
		
		local alive = system.players(true)
		cannonup.alive = #alive
		if cannonup.alive < 2 or leftTime < 4 then
			if cannonup.alive == 0 then
				tfm.exec.chatMessage("<G>No winners! :(")
			else
				for k,v in next,alive do
					tfm.exec.giveCheese(v)
					tfm.exec.playerVictory(v)
				end
				tfm.exec.chatMessage(string.format("<J>%s <G>won!",table.concat(alive,"<G>, <J>")))
			end
			tfm.exec.newGame(table.random(cannonup.maps))
		end
		
		if cannonup.xml == 0 and currentTime > 5 and leftTime > 3 then
			if os.time() > cannonup.newSpawn then
				cannonup.timer = cannonup.timer + .5
				
				if cannonup.timer == (4 - cannonup.difficulty[2]) then
					for i = 1,cannonup.difficulty[3] do
						cannonup.hostCannon()
					end
				elseif cannonup.timer == (5 - cannonup.difficulty[2]) then
					for i = 1,#cannonup.toSpawn do
						local cn = cannonup.toSpawn[i]
						cannonup.toDespawn[#cannonup.toDespawn + 1] = {tfm.exec.addShamanObject(1706,cn[1],cn[2],cn[3] - 90,20 + 8 * (cannonup.difficulty[2] / 2)),os.time() + 7e3}
					end
					cannonup.toSpawn = {}
					
					cannonup.newSpawn = os.time() + 2500
					cannonup.timer = 0
				end
			end
		end
		
		for i = 1,#cannonup.toDespawn do
			local cn = cannonup.toDespawn[i]
			if os.time() > cn[2] then
				tfm.exec.removeObject(cn[1])
			end
		end
		
		if os.time() > cannonup.difficulty[1] then
			cannonup.difficulty[1] = os.time() + 10e3
			local i,total = system.players()
			cannonup.difficulty[3] = ((total - (total%10))/10) + 1
			cannonup.difficulty[2] = (leftTime < 41 or i < 3) and 3 or (leftTime < 101 or i < 5) and 2 or 1
		end
	end,
	eventPlayerWon = function(n)
		if cannonup.alive > 3 then
			cannonup.info[n].win = cannonup.info[n].win + 1
		end
	end,
	eventPlayerDied = function(n)
		if cannonup.alive > 3 then
			cannonup.info[n].death = cannonup.info[n].death + 1
		end
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			for i = 1,2 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	eventChatCommand = function(n,c)
		local p = {}
		for cmd in c:gmatch("[^%s]+") do
			p[#p+1]=cmd
		end
		p[1] = p[1]:lower()
		if p[1] == "p" or p[1] == "profile" then
			if p[2] then
				p[2] = string.nick(p[2])
				if tfm.get.room.playerList[p[2]] then
					cannonup.displayProfile(p[2],n)
				end
			else
				cannonup.displayProfile(n,n)
			end
		end
	end,
}

eventLoop = function(currentTime,leftTime)
	cannonup.eventLoop(currentTime,leftTime)
end

eventNewGame = function()
	cannonup.eventNewGame()
end

eventNewPlayer = function(n)
	cannonup.eventNewPlayer(n)
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

eventPlayerWon = function(n)
	cannonup.eventPlayerWon(n)
end

eventPlayerDied = function(n)
	cannonup.eventPlayerDied(n)
end

eventTextAreaCallback = function(i,n,c)
	cannonup.eventTextAreaCallback(i,n,c)
end

eventChatCommand = function(n,c)
	cannonup.eventChatCommand(n,c)
end

cannonup.init()

system.start = false
system.xml = 0
initX,initY = 0,0
system.spawn = 0
toDespawn = {}
players = {"",""}

for i,f in next,{"AutoNewGame","AutoShaman","AutoScore","AutoTimeLeft","MortCommand"} do
	tfm.exec["disable"..f]()
end

system.maps = {2310447,3746497,6001536,3666224,4591929}
system.newMap = coroutine.wrap(function()
	local currentMap = 0
	while true do
		if currentMap >= #system.maps then
			currentMap = 0
		end
		if currentMap == 0 then
			local randomized = {}
			for v = 1,#system.maps do
				table.insert(randomized,math.random(#randomized),system.maps[v])
			end
			system.maps = randomized
		end
		currentMap = currentMap + 1
		coroutine.yield(system.maps[currentMap])
	end
end)

mice = {}
eventNewPlayer = function(n)
	if not mice[n] then
		mice[n] = {
			victories = 0,
			deaths = 0,
			rounds = 0,
		}
	end
	if #players < 2 then
		tfm.exec.newGame(system.newMap())
	end
	tfm.exec.chatMessage(string.format("<V>[•]</V> <BV>Welcome to #CannonUp, %s. Your aim is to be the survivor! Take care, watermelons are dangerous!",n),n)
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

eventNewGame = function(t)
	system.start = true
	players = {}

	tfm.exec.setGameTime(t and 1e7 or 125)
	ui.setMapName("#CannonUp")

	for k,v in next,tfm.get.room.playerList do
		players[#players + 1] = k
	end

	ui.removeTextArea(2)
	if #players < 2 then
		tfm.exec.chatMessage("<V>[•]</V> <R>At least 2 mice are necessary to play #CannonUp!</R>")
		ui.addTextArea(2,"",nil,-1500,-1500,3e3,3e3,1,1,.8,true)
		system.start = false
		tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
	else
		if system.xml == 0 then
			system.xml = tfm.get.room.xmlMapInfo.xml:gsub("<P (.-)/>",function(p) return "<P bh=\"\" "..p.."/>" end)
			ui.addTextArea(2,"",nil,-1500,-1500,3e3,3e3,0x6A7495,0x6A7495,1,true)
		else
			system.xml = 0
			ui.removeTextArea(2,nil)
			initX,initY = nil,nil
			system.spawn = 0
			toDespawn = {}
			if #players > 4 then
				for k,v in next,players do
					mice[v].rounds = mice[v].rounds + 1
				end
			end

			local attributes = tfm.get.room.xmlMapInfo.xml:match("<P .*cn=\"(.-)\".*/>") or ""
			if attributes:find("%a; *%d+") then
				local l,i = attributes:match("(%a); *(%d+)")
				if l:lower() == "x" or l:lower() == "y" then
					_G["init"..l:upper()] = tonumber(i)
				end
			elseif attributes:find("%d+, *%d+") then
				initX,initY = attributes:match("(%d+), *(%d+)")
			end

			if tfm.get.room.xmlMapInfo.xml:find("<P .*meep=\"\".*/>") then
				for k,v in next,tfm.get.room.playerList do
					tfm.exec.giveMeep(k)
				end
			end

			if tfm.get.room.xmlMapInfo.xml:find("<P .*cheese=\"\".*/>") then
				for k,v in next,tfm.get.room.playerList do
					tfm.exec.giveCheese(k)
				end
			end
		end
	end
end

shootCannon = function(x,y)
	x,y = x and x or math.random(10,790),y and y or math.random(30,330)
	local player = tfm.get.room.playerList[players[math.random(#players)]]
	if not player then
		player = {
			x = math.random(200,600),
			y = math.random(100,300)
		}
	end
	local angle = math.deg(math.atan2(player.y - y,player.x - x))
	toDespawn[#toDespawn + 1] = {os.time() + 1700,tfm.exec.addShamanObject(1706,x,y,angle + 90)}
	tfm.exec.addShamanObject(0,x,y,angle - 90)
	system.spawn = os.time() + 600
end

eventLoop = function(timer,left)
	time = math.floor(timer/1000)
	left = math.floor(left/1000)
	if system.xml ~= 0 then
		tfm.exec.newGame(system.xml)
	end
	if time > 4 and system.start then
		if os.time() > system.spawn and left > 4 then
			local timeAxis = (time < 41 and 3 or time < 101 and 2 or 1)
			if time % timeAxis == 0 then
				local amount = (#players < 16 and 1 or #players < 26 and 2 or 3)
				for i = 1,amount do
					if amount > 1 then
						local m = amount * 15
						initX,initY = initX and initX+math.random(-m,m) or  math.random(10,790),initY and initY-math.random(-m,m) or math.random(30,330)
					end
					shootCannon(initX,initY)
				end
			end
		end
		for k,v in ipairs(toDespawn) do
			if os.time() > v[1] then
				tfm.exec.removeObject(v[2])
			end
		end
		if time > 121 or #players == 1 then
			local alive = {}
			for k,v in next,tfm.get.room.playerList do
				if not v.isDead then
					alive[#alive + 1] = k
				end
			end
			for k,v in next,alive do
				tfm.exec.giveCheese(v)
				tfm.exec.playerVictory(v)
			end
			tfm.exec.chatMessage("<J>" .. table.concat(alive,", ") .. " <G>won!")
			tfm.exec.newGame(system.newMap())
		end
	end
end

eventPlayerDied = function(n)
	if #players > 4 then
		mice[n].deaths = mice[n].deaths + 1
	end
	if tfm.get.room.playerList[n].score > 0 then
		tfm.exec.setPlayerScore(n,-1,true)
	end
	for k,v in next,players do
		if v == n then
			table.remove(players,k)
			break
		end
	end
end

eventPlayerWon = function(n)
	if #players > 4 then
		mice[n].victories = mice[n].victories + 1
	end
	tfm.exec.setPlayerScore(n,(time > 99 and 5 or time > 40 and 4 or 3),true)
end

ui.displayProfile = function(p,n)
	ui.addTextArea(0,string.format("\n\n<font size='13'>\nRanking: <N2>#</N2><V>%d</V>\n\nRounds : <V>%d</V>\nCheeses : <V>%d</V>\n\nDeaths : <V>%d</V>",-1,mice[p].rounds,mice[p].victories,mice[p].deaths),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
	ui.addTextArea(1,"<p align='center'><font size='20'><a:hover><B><a href='event:closeProfile'>"..p.."</a>",n,305,105,190,30,0x244452,0x1B282E,.4,true)
end

eventTextAreaCallback = function(i,n,c)
	if c == "closeProfile" then
		for i = 0,1 do
			ui.removeTextArea(i,n)
		end
	end
end

string.nick=function(player)
	return player:lower():gsub('%a',string.upper,1)
end

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
				ui.displayProfile(p[2],n)
			end
		else
			ui.displayProfile(n,n)
		end
	end
end
for k,v in next,{"p","profile"} do
	system.disableChatCommandDisplay(v,true)
end

tfm.exec.newGame(system.newMap())

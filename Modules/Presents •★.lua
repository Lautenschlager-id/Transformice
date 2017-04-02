presents = {
	translations = {
		en = {
			nowinner = "Nobody won",
			won = "won",
			welcome = "<J>Welcome to <VP><B>#presents</B><J>! Choose a gap according to the gift represented and good luck! You will win if your three-gifts-sequence is correct!\n\n<CE>Developed by Bolodefchoco and projected by Ruamorangos",
			appear = "You will appear in the next game!",
			choose = "Choose a gift in less than <PT>%s seconds!",
			dead = "Those who are out of the correct gift will be dead!",
			newGame = "New game in <PT>%s seconds!",
		},
		br = {
			nowinner = "Ninguém venceu",
			won = "venceu",
			welcome = "<J>Bem-vindo ao <VP><B>#presents</B><J>! Escolha um buraco de acordo com o presente representado e boa sorte! Você ganhará se sua sequência nos três presentes estiver correta!\n\n<CE>Desenvolvido por Bolodefchoco, pedido por Ruamorangos",
			appear = "Você irá aparecer no próximo jogo!",
			choose = "Escolha um presente em menos de <PT>%s segundos!",
			dead = "Aqueles que estão fora do presente correto serão mortos!",
			newGame = "Novo jogo em <PT>%s segundos!",
		},
	},
	langue = "en",
	gifts = {},
	winners = {},
	isRunning = false,
	choice = {15,true},
	block = {5,false},
	newMap = {10,false},
	currentGift = 1,
	total = 1,
	init = function()
		presents.langue = presents.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for k,v in next,{"AutoShaman","AutoNewGame","AutoTimeLeft","AutoScore","AfkDeath","MortCommand","DebugCommand","PhysicalConsumables"} do
			tfm.exec["disable"..v]()
		end
		tfm.exec.setRoomMaxPlayers(30)
		presents.map()
	end,
	kill = function()
		local gift = presents.gifts[presents.currentGift] - 2099
		for k,v in next,tfm.get.room.playerList do
			if not v.isDead then
				if v.x >= (gift * 120) and v.x <= (gift * 120 + 80) and v.y > 267 then
					tfm.exec.setPlayerScore(k,1,true)
				else
					tfm.exec.killPlayer(k)
				end
			end
		end
	end,
	map = function()
		presents.isRunning = true
		presents.gifts = {
			[1] = table.random({2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101}),
			[2] = table.random({2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104}),
			[3] = table.random({2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102,2100,2101,2103,2100,2104,2102,2103,2101,2104,2102})
		}
		tfm.exec.newGame('<C><P DS="m;250,120,400,120,550,120" D="x_transformice/x_inventaire/'..presents.gifts[1]..'.jpg,230,60;x_transformice/x_inventaire/'..presents.gifts[2]..'.jpg,380,60;x_transformice/x_inventaire/'..presents.gifts[3]..'.jpg,530,60;x_transformice/x_inventaire/2100.jpg,140,320;x_transformice/x_inventaire/2101.jpg,260,320;x_transformice/x_inventaire/2102.jpg,380,320;x_transformice/x_inventaire/2103.jpg,500,320;x_transformice/x_inventaire/2104.jpg,620,320" /><Z><S><S P="1,0.0001,20,0.2,90,1,0,0" H="700" L="15" X="400" c="3" Y="161" T="4" /><S X="100" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="220" c="3" Y="335" T="4" /><S X="340" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="460" c="3" Y="335" T="4" /><S X="580" P="0,0,20,0.2,0,0,0,0" L="40" H="135" c="3" Y="335" T="4" /><S H="40" P="0,0,0.3,0.2,0,0,0,0" L="40" X="100" c="3" Y="160" T="0" /><S X="700" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="550" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S X="250" P="0,0,0.3,0.2,0,0,0,0" L="40" H="40" c="3" Y="160" T="0" /><S H="20" P="0,0,0.3,0.2,0,0,0,0" L="800" X="400" Y="10" T="0" /><S H="135" P="0,0,20,0.2,0,0,0,0" L="40" X="700" c="3" Y="335" T="4" /><S X="400" P="0,0,0.3,0.2,0,0,0,0" L="800" H="100" c="3" Y="415" T="0" /><S P="0,0,0.3,0.2,0,0,0,0" H="10" L="50" o="324650" X="745" c="3" Y="138" T="13" /><S X="55" P="0,0,0.3,0.2,0,0,0,0" L="50" o="324650" H="10" c="3" Y="138" T="13" /><S P="0,0,0.3,0.2,0,0,0,0" H="140" L="100" o="324650" X="55" c="3" Y="72" T="12" /><S X="745" P="0,0,0.3,0.2,0,0,0,0" L="100" o="324650" H="140" c="3" Y="72" T="12" /><S P="0,0,0,0,0,0,0,0" H="102" L="581" o="6a7495" X="401" c="4" v="3001" Y="78" T="12" /></S><D /><O /><L><JR M2="10" M1="0" /></L></Z></C>')
	end,
	victory = function(none)
		if presents.choice[2] then
			local winner = "%s %s%s!"
			if none or system.players() == 0 then
				local text = presents.translations[presents.langue].nowinner
				winner = winner:format("","",text)
				tfm.exec.chatMessage("<J>" .. text)
			else
				local text = presents.translations[presents.langue].won
				winner = winner:format(table.concat(system.players(true),", "),"%s",text)
				for k,v in next,system.players(true) do
					tfm.exec.chatMessage("<G>"..v.." <J>" .. text .. "!")
					local found = {false,0}
					for i,j in next,presents.winners do
						if j[1] == v then
							found = {true,i}
							break
						end
					end
					if found[1] then
						presents.winners[found[2]][2] = presents.winners[found[2]][2] + 1
					else
						presents.winners[#presents.winners + 1] = {v,1}
					end
				end
			end
			ui.addTextArea(0,"<B><p align='center'><font size='22' color='#1'>".. winner:format(""),nil,0,222,800,h,1,1,0,true)
			ui.addTextArea(1,"<B><p align='center'><font size='22'><V>".. winner:format("<J>"),nil,0,220,800,h,1,1,0,true)
			presents.newMap[2] = true
		end
	end,
	eventNewPlayer = function(n)
		tfm.exec.chatMessage(presents.translations[presents.langue].welcome,n)
		if presents.isRunning then
			ui.addTextArea(2,"<font size='20'><VP>" .. presents.translations[presents.langue].appear,n,216,65,365,35,1,1,1,true)
			tfm.exec.chatMessage("<VP>" .. presents.translations[presents.langue].appear,n)
		else
			tfm.exec.respawnPlayer(n)
		end
	end,
	eventNewGame = function()
		if presents.isRunning then
			for i,x in next,{250,400,550} do
				tfm.exec.addPhysicObject(i,x,75,{
					type = 12,
					height = 90,
					width = 90,
					miceCollision = false,
					groundCollision = false,
					color = 0x6A7495
				})
			end
			for i = 0,1 do
				ui.removeTextArea(i)
			end
			presents.choice = {15,true}
			presents.block = {5,false}
			presents.newMap = {10,false}
			presents.currentGift = 1
		end
		tfm.exec.setGameTime(1e7)
		ui.removeTextArea(2,nil)
	end,
	eventLoop = function(currentTime)
		local mapName = "<N>Rivals : <V>"..system.players()
		if _G.currentTime > 4 and presents.isRunning then
			if presents.choice[2] then
				mapName = "<N>Rivals : <V>"..system.players().."   <G>|   <J>" .. presents.translations[presents.langue].choose:format(math.floor(presents.choice[1]).."<J>")
				presents.choice[1] = presents.choice[1] - .5
				if presents.choice[1] <= 0 then
					presents.choice = {15,false}
					presents.block[2] = true
				end
			end
			if presents.block[2] then
				mapName = "<N>Rivals : <V>"..system.players().."   <G>|   <R>" .. presents.translations[presents.langue].dead
				presents.block[1] = presents.block[1] - .5
				tfm.exec.addPhysicObject(4,400,270,{
					type = 4,
					height = 10,
					width = 640,
					miceCollision = true,
					groundCollision = false
				})
				tfm.exec.removePhysicObject(presents.currentGift)
				if presents.block[1] == 2 then
					presents.kill()
				end
				if presents.block[1] <= 0 then
					presents.currentGift = presents.currentGift + 1
					presents.block = {5,false}
					presents.choice[2] = true
					if presents.currentGift == 4 then
						presents.victory()
						presents.choice[2] = false
					end
				end
			else
				tfm.exec.removePhysicObject(4)
			end
			if presents.newMap[2] then
				mapName = "<PS>" .. presents.translations[presents.langue].newGame:format(math.floor(presents.newMap[1]).."<PS>")
				presents.newMap[1] = presents.newMap[1] - .5
				if presents.newMap[1] <= 0 then
					presents.map()
				end
			end
			if system.players() == 0 then
				presents.victory(true)
				presents.newMap[2] = true
				presents.choice[2] = false
			end
		end
		ui.setMapName(mapName.."<")
	end
}

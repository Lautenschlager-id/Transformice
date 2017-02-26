--[[ Titles ]]--
title = {
	[1] = "titre_noel_elfette",
}

--[[ Lib ]]--
math.pythag = function(x1,y1,x2,y2,range)
    return ((x1-x2)^2+(y1-y2)^2<range^2)
end
math.percent = function(x,of,total)
	return (x/of)*total
end
math.isNegative = function(x,iN,iP)
	return (x<0 and iN or iP)
end

table.random = function(t)
	return t[math.random(#t)]
end
table.destroy=function(list,value)
	for k,v in next,list do
		if v == value then
			table.remove(list,k);break
		end
	end
end

system.players = function()
	local p = 0
	for k,v in next,tfm.get.room.playerList do
		p = p + 1
	end
	return p
end

system.looping = function(f,tk)
	local s = 1000 / tk
	local t = {}
	for timer = 0,1000-s,s do
		system.newTimer(function() t[#t+1] = system.newTimer(f,1000,true) end,1000+timer,false)
	end
	return t
end

--[[ Database ]]--
info = {}

serialization = function(x)
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

eventPlayerDataLoaded = function(n,d)
	if d ~= "" and d:find(":eventNoelGifts") then
		info[n].db = serialization(d)
	else
		system.savePlayerData(n,serialization(info[n].db))
	end
	info[n].dataLoaded = true
	system.updateBar(n)
end

--[[ Sets ]]--
for i,f in next,{"AutoShaman","AfkDeath","MortCommand","AutoTimeLeft"} do
	tfm.exec["disable"..f]()
end

local santaMessage = "<V><B>[^_^]</B></V> <BV>%s</BV>\n<V><B>[S4NT4 M4U5]</B></V> <R>%s</R>"
local langue = {
	en = {"Merry Christmas & Happy New Year!","Christmas is approaching and S4nt4 has a lot to do on his <I>paws</I>. He wants to give all the gifts on time, but he must be fast! Since our dear S4nt4 is clumsy, some gifts will fall and you will have to <CE>collect</CE> them by pressing the <I>space bar</I>! Give the gifts back to S4nt4 when he feels <CE>dizzy</CE> by pressing the <I>space bar</I>!"},
	fr = {"Joyeux Noël et Bonne Année!","Noël approche et S4nt4 en a plein les <I>pattes</I>. Il veut donner tous les cadeaux à temps, mais il doit être rapide ! Puisque notre cher S4nt4 est maladroix, certains cadeaux tombent et vous devrez les, <CE>collecter</CE> en appuyant sur la <I>barre d'espace</I>! Donnez les cadeaux à S4nt4 quand il se sent <CE>étourdi</CE> en appuyant sur la <I>barre d'espace</I>!"},
	br = {"Feliz Natal & Feliz Ano Novo!","O Natal está chegando e S4nt4 tem em suas <I>patas</I> muito o que fazer. Ele quer entregar todos os presentes a tempo, mas ele deve ser rápido! Uma vez que nosso querido S4NT4 é desajeitado, alguns presentes cairão e você terá que <CE>coletá-los</CE> pressionando a <I>barra de espaço</I>! Devolva os presentes ao S4nt4, pressionando a <I>barra de espaço</I>, quando ele se sentir <CE>tonto</CE>!"},
	es = {"¡Feliz Navidad y Próspero Año Nuevo!","La Navidad se está acercando y S4nt4 tiene muchas cosas que hacer con sus <I>patas</I>. Él quiere dar todos los regalos a tiempo, pero debe ser rápido! Puesto que nuestro querido S4nt4 es torpe, algunos regalos caerán y tendrás que <CE>recogerlos</CE> pulsando la <I>barra espaciadora</I>! Regrese los regalos a S4nt4 cuando se sienta <CE>mareado</CE> presionando la <I>barra de espacio</I>!"},
	tr = {"Mutlu Noeller & Mutlu Yıllar!","Noel geliyor ve S4nt4'nın <I>patilerinde</I> yapacağı çok işi var. Bütün hediyeleri zamanında vermek istiyor ama hızlı olması gerek! Sevgili S4nt4'mız sakar olduğu için, bazı hediyeler düşecek ve <I>boşluk tuşuna</I> basarak onları <CE>toplamanız</CE> gerekecek! S4nt4'nın <CE>başı döndüğünde</CE> <I>boşluk tuşuna</I> basarak hediyeleri ona geri verin!"},
	pl = {"Wesołych Świąt i Wesołego Nowego Roku!","Święta nadchodzą, a S4nt4 ma <I>łapki</I> pełne roboty. On chce dać wszystkim prezenty na czas, ale musi się pośpieszyć! Od kiedy nasz S4nt4 jest niezdarny, gubi prezenty, które musicie <CE>pozbierać</CE> wciskając <I>spację</I>! Oddajcie prezenty S4nt4 kiedy jest <CE>oszołomiony</CE> wciskając <I>spację</I>!"},
	ar = {"عيد ميلاد مجيدا و كل عام و أنتم بخير","عيد الميلاد اقترب و<I> يدى </I> سانتا مليئة. يريد سانتا تسليم جميع الهدايا على الوقت, ولكن يجب ان يكون سريعا! ولكن صديقنا العزيز سانتا غير بارع في تسليم الهدايا, بعض الهدايا ستسقط وعليك ان تقوم <CE> بجمع</CE>  الهدايا التي سقطت عن طريق الضغط على المسطرة ! وارجاع الهدايا الى صديقنا العزيز سانتا عندما يشعر <CE> بالدوار</CE> عن طريق الضغط على زر المسطرة!"},
	hu = {"Boldog Karácsonyt & Boldog Új Évet!","A Karácsony közeleg, és a Mikulásra pedig <I>rengeteg munka vár<I>. Oda akarja adni az összes ajándékot időben, de muszáj gyorsnak lennie! Mivel a mi Mikulásunk kétbalkezes, néhány ajándék lepottyan és Neked kell <CE>összegyűjteni</CE> azokat, a <I>Szóköz</I> megnyomásával! Vidd vissza a Mikulásnak az ajándékot a <I>Szóköz</I> megnyomásával, amikor Mikulás <CE>megszédül</CE>!"},
	ru = {"С новым годом и Рождеством!","Рождество приближается и S4nt4 направляется к вам! Он очень спешит, чтобы раздать все подарки вовремя! Но так как наш дорогой S4nt4 неуклюж, то некоторые подарки будут падать. Вы должны <CE>собрать</CE> их, нажимая клавишу <I>пробел</I>! Помогите S4nta. <CE>Верните</CE> ему подарки обратно с помощью <I>пробела</I>!"},
}
langue.pt = langue.br
local communityMessage = langue.en
for k,v in next,langue do
	if k == tfm.get.room.community then
		communityMessage = v
		break
	end
end

--[[ Map ]]--
system.start = false
system.aim = 8
amountPlayers = 20
currentTime,leftTime = 0,150
local xml = '<C><P DS="y;310" /><Z><S><S H="10" L="50" X="275" c="2" Y="165" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="200" X="100" H="80" Y="360" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="200" X="109" H="80" Y="379" T="12" P="0,0,0.3,0.2,-10,0,0,0" /><S X="391" L="230" H="80" c="3" Y="354" T="12" P="0,0,0.3,0.2,-2,0,0,0" /><S H="100" L="230" X="430" c="3" Y="411" T="12" P="0,0,0.3,0.2,-30,0,0,0" /><S H="80" L="180" X="705" c="3" Y="397" T="12" P="0,0,0.3,0.2,-2,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="44" H="10" c="3" Y="361" T="13" X="237" /><S X="-5" L="10" H="3000" c="3" Y="100" T="12" P="0,0,0,0,0,0,0,0" /><S H="3000" L="10" X="805" c="3" Y="101" T="12" P="0,0,0,0,0,0,0,0" /><S L="10" X="400" H="3000" Y="-5" T="12" P="0,0,0,0,90,0,0,0" /><S L="80" H="10" X="96" Y="158" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,.9,0,0,0,0" L="50" X="275" c="3" Y="165" T="12" H="10" /><S L="130" X="527" H="10" Y="128" T="12" P="0,0,0.3,0.2,10,0,0,0" /><S L="90" H="10" X="632" Y="131" T="12" P="0,0,0.3,0.2,-10,0,0,0" /><S H="3000" L="10" o="23E9E9" X="805" c="2" Y="100" T="12" m="" P="0,0,0,2,0,0,0,0" /><S X="-5" L="10" o="23E9E9" H="3000" c="2" Y="100" T="12" m="" P="0,0,0,2,0,0,0,0" /><S P="0,0,0.3,0.2,-35,0,0,0" L="230" X="549" c="3" Y="467" T="12" H="100" /><S P="0,0,0.3,0.2,-55,0,0,0" L="230" H="100" c="3" Y="441" T="12" X="250" /><S L="230" X="125" H="100" Y="422" T="12" P="0,0,0.3,0.2,-30,0,0,0" /><S X="510" L="230" H="100" c="3" Y="477" T="12" P="0,0,0.3,0.2,-65,0,0,0" /><S L="50" X="91" H="50" Y="339" T="12" P="0,0,0.3,0.2,-45,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="30" X="164" c="2" Y="325" T="12" H="50" /><S P="0,0,0.3,1.1,0,0,0,0" L="30" H="50" c="3" Y="325" T="12" X="164" /><S L="50" X="240" H="10" Y="158" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="50" H="10" X="443" Y="125" T="12" P="0,0,0.3,0.2,-20,0,0,0" /><S H="80" L="220" o="23E9E9" X="393" c="1" Y="359" T="12" m="" P="0,0,0.3,0.2,-2,0,0,0" /><S L="230" o="23E9E9" X="427" H="100" Y="416" T="12" m="" P="0,0,0.3,0.2,-30,0,0,0" /><S P="0,0,0.3,0.2,-65,0,0,0" L="230" o="23E9E9" H="100" Y="481" T="12" m="" X="501" /><S P="0,0,0.3,0.2,-35,0,0,0" L="230" o="23E9E9" H="100" Y="474" T="12" m="" X="550" /><S P="0,0,0.3,0.2,-2,0,0,0" L="180" o="23E9E9" X="706" Y="404" T="12" m="" H="80" /><S P="0,0,0.3,0.2,1,0,0,0" L="230" o="23E9E9" X="314" c="2" Y="373" T="12" m="" H="100" /></S><D><P X="241" Y="507" T="51" P="0,1" /><P X="566" Y="449" T="46" P="0,0" /></D><O /></Z></C>'
tfm.exec.newGame(xml)

--[[ Player ]]--
system.displayBar = function(id,player,value,nvalue,color,sig,size,height)
	sig = sig or ""
	size = size or 100
	height = height or 20

	ui.addTextArea(id,"",player,5,(height+8) * id,size + 4,height,0xC7CED2,1,1,true)
	if value ~= 0 then
		ui.addTextArea(id.."0","",player,6,(height+8) * id + 2,nvalue + 2,height - 4,color,color,1,true)
	end
	ui.addTextArea(id.."00","<B><font color='#0'>"..value..sig,player,(size-30)/2,(height+8) * id + 1,50,height,1,1,0,true)
end
system.updateBar = function(n,giftColor)
	giftColor = giftColor or info[n].lastColor
	system.displayBar(1,n,math.floor(info[n].db.eventNoelGifts[2]) .. " / "..system.aim,(info[n].db.eventNoelGifts[2] > system.aim and 100 or math.percent(info[n].db.eventNoelGifts[2],system.aim,100)),0xFF0000)
	system.displayBar(2,n,info[n].db.eventNoelGifts[1],(info[n].db.eventNoelGifts[1] > 50 and 50 or math.percent(info[n].db.eventNoelGifts[1],50,50)),giftColor,"G",50,20)
end

eventNewGame = function()
	system.start = true
	amountPlayers = system.players()
	currentTime,leftTime = 0,150
	tfm.exec.setGameTime(60 * 2.5)
	tfm.exec.snow(60 * 2.5)
	tfm.exec.addImage("158c1feaf90.png","?0",0,0)
	ui.setMapName("<J>"..table.random({"Nöel","Christmas","Bolodefchoco","Lua event","#xmas","Bogkitty"}).." <G>- @"..table.random({666,404,801,os.date("%Y"),0,1}))
	ui.setShamanName("<R>S4NT4 M4U5")
	for k,v in next,tfm.get.room.playerList do
		info[k] = {
			db = {
				eventNoelGifts = {0,0},
				eventNoelTitle = false,
			},
			catch = 0,
			lastColor = 0xB73535,
			dataLoaded = false
		}
		system.loadPlayerData(k)
		if not v.isDead then
			system.bindKeyboard(k,32,true,true)
		end
		system.updateBar(k)
	end
	tfm.exec.chatMessage(santaMessage:format(communityMessage[2],communityMessage[1]:upper()))
end

eventPlayerDied = function(n)
	if system.start then
		system.bindKeyboard(n,32,true,false)
	end
end

eventNewPlayer = function(n)
	tfm.exec.addImage("158c1feaf90.png","?0",0,0,n)
end

eventPlayerLeft = function(n)
	if info[n] then
		system.savePlayerData(n,serialization(info[n].db))
	end
end

--[[ AI ]]--
local despawnObjects = {}

local currentGifts = {}
local gifts = {
	[1] = {
		[1] = "158bb1db61b",
		[2] = 20000,
	};
	[2] = {
		[1] = "158bb1c95e0",
		[2] = 15000,
	};
	[3] = {
		[1] = "158bb1cc6ec",
		[2] = 10000,
	};
	[4] = {
		[1] = "158bb1ce1aa",
		[2] = 8000,
	};
	[5] = {
		[1] = "1591c9b3123",
		[2] = 6000,
	};
}

local noel = {}
local initx,inity = 240,140
noel.x = initx
noel.y = inity
noel.id = -1

noel.isEscaping = false
noel.isDizzy = {0,false}

noel.timers = {
	teleport = 0,
	prize = 0
}

noel.img = {
	dizzy = {"158bb1dccb6","158bb1cf9a8","158bb1d6489","158bb1e2518"},
	right = "158bb1d8069",
	left = "158bb1e0daf",
	jumping = "158bb1d470a",
	stop = "158bb1d9b67",
}

noel.updateImage = function(img)
	tfm.exec.removeImage(noel.imgId)
	noel.imgId = tfm.exec.addImage(img..".png","#"..noel.id,-23,-32)
end
noel.particles = function(id)
	for i = 1,5 do
		tfm.exec.displayParticle(id,noel.x + math.random(-50,50),noel.y + math.random(-50,50),table.random({-.2,.2}),table.random({-.2,.2}))
	end
end
noel.move = function(x,y)
	tfm.exec.moveObject(noel.id,0,0,false,x,y,false)
end

noel.nearMouse = function(range)
	local player = {"",{dist=math.random(800),x=0,y=0}}
	for k,v in next,tfm.get.room.playerList do
		if not v.isDead then
			if math.pythag(v.x,v.y,noel.x,noel.y,range) then
				local m = v.x-noel.x
				if math.abs(m) < player[2].dist then
					player = {k,{dist=m,x=v.x,y=v.y}}
				end
			end
		end
	end
	noel.isEscaping = player[1] ~= ""
	return player
end

noel.escape = function(id)
	local player = noel.nearMouse(math.random(80,100))
	local mul = (player[1] ~= "" and math.isNegative(player[2].dist,1,-1) or table.random({-1,1}))
	local img = math.isNegative(mul,"left","right")
	local rand = 9 - math.random(0,9)
	if id == 0 or (rand < 6) then
		noel.move(mul * math.random(50,80),-math.random(1,10))
		noel.updateImage(noel.img[img])
	elseif id == 1 or (rand < 9) then
		noel.move(mul * math.random(60,70),-80)
		noel.updateImage(table.random({noel.img[img],noel.img.jumping}))
	elseif id == 2 or rand == 9 then
		noel.move(mul * math.random(10,20),-math.random(70,100))
		noel.updateImage(noel.img.jumping)
	end
end
noel.meep = function()
	tfm.exec.displayParticle(20,noel.x,noel.y)
	tfm.exec.explosion(noel.x,noel.y,20,50)
end
noel.cannon = function()
	local player = noel.nearMouse(100)
	if player[1] ~= "" then
		local x = noel.x + (noel.x > player[2].x and -40 or 40)
		local y = noel.y + (noel.y > player[2].y and -40 or 40)
		local angle = math.deg(math.atan2(player[2].y-noel.y,player[2].x-noel.x)) + 90
		table.insert(despawnObjects,{
			[1] = tfm.exec.addShamanObject(1703,x,y,angle),
			[2] = os.time() + 2500
		})
		local effect = function(id,sx,sy,xs,ys,e)
			for i = 1,2 do
				tfm.exec.displayParticle(id[i] and id[i] or id[1],x + sx * e,y - sy * e,xs/1.5,ys/1.5)
			end
		end
		for i = 1,20 do
			effect({9,11},math.cos(i),math.sin(i),math.cos(i),-math.sin(i),22)
			effect({13},math.cos(i),math.sin(i),math.sin(i),math.cos(i),19)
		end
	end
end
noel.teleport = function()
	if os.time() > noel.timers.teleport then
		noel.timers.teleport = os.time() + 8000
		tfm.exec.displayParticle(37,noel.x,noel.y)
		local x,y = math.random(20,780),math.random(50,300)
		tfm.exec.moveObject(noel.id,x,y)
		tfm.exec.displayParticle(37,x,y)
	else
		noel.escape(2)
	end
end

noel.gift = function()
	if os.time() > noel.timers.prize then
		noel.timers.prize = os.time() + 5000
		noel.updateImage(noel.img.stop)
		local giftsAmount = amountPlayers < 10 and 1 or math.floor(amountPlayers/10)
		if tonumber(os.date("%Y")) == 2017 then
			giftsAmount = giftsAmount * 2
		end
		for i = 1,giftsAmount do
			local gift = table.random({2,4,3,1,1,2,3,5,2,4})
			for k,v in next,gifts do
				if gift == k then
					gift = k
					break
				end
			end
			local gen = {}
			gen[1] = tfm.exec.addShamanObject(6300,noel.x,noel.y,0,table.random({-13,-10,-5,5,10,13}))
			gen[2] = os.time() + gifts[gift][2]
			gen[3] = tfm.exec.addImage(gifts[gift][1]..".png","#"..gen[1],-15,-15)
			gen[4] = gift
			table.insert(currentGifts,gen)
		end
	else
		noel.escape(0)
	end
end
noel.dizzy = function(timer)
	if os.time() > noel.timers.prize then
		noel.isDizzy[1] = os.time() + 9500
	else
		noel.escape(2)
	end
end

eventLoop = function()
	if system.start then
		currentTime = currentTime + .5
		leftTime = leftTime - .5
		if currentTime > 4 then
			if noel.id == -1 then
				noel.id = tfm.exec.addShamanObject(6300,noel.x,noel.y)
				noel.updateImage(noel.img.stop)
			end

			local ox,oy
			if tfm.get.room.objectList[noel.id] then
				ox,oy = tfm.get.room.objectList[noel.id].x,tfm.get.room.objectList[noel.id].y
			else
				ox,oy = noel.x,noel.y
			end

			if (ox < -10 or ox > 810) or (oy > 400 or oy < -50) then
				tfm.exec.removeObject(noel.id)
				noel.x,noel.y = initx,inity
				noel.id = nil
			end

			if noel.id then
				noel.x = ox
				noel.y = oy
			end

			for k,v in ipairs(despawnObjects) do
				if os.time() > v[2] then
					tfm.exec.removeObject(v[1])
				end
			end
			for k,v in ipairs(currentGifts) do
				if os.time() > v[2] then
					tfm.exec.removeObject(v[1])
					tfm.exec.removeImage(v[3])
				end
			end

			if os.time() > noel.isDizzy[1] and currentTime > 5 then
				noel.particles(13)
				if currentTime % 60 == 0 then
					noel.dizzy()
				elseif currentTime % 5 == 0 then
					noel.gift()
					noel.escape(1)
				elseif math.floor(currentTime) % 2 == 0 then
					local option = math.random((noel.isEscaping and 15 or 12))
					if option > 3 then
						noel.escape()
					else
						noel.updateImage(noel.img.stop)
						if currentTime > 7 and math.random(1,2) == 1 then
							if option == 3 then
								noel.cannon()
							elseif option == 2 then
								noel.teleport()
							elseif option == 1 then
								noel.meep()
							end
						end
					end
				else
					noel.updateImage(noel.img.stop)
				end
			else
				noel.particles(1)
				if not noel.isDizzy[2] then
					noel.isDizzy[2] = true
					noel.timers.prize = os.time() + 5000
					local imgId = #noel.img.dizzy
					local animation = {}
					local numb = 1
					animation = system.looping(function()
						noel.updateImage(noel.img.dizzy[imgId])

						if imgId == #noel.img.dizzy or imgId == 1 then
							numb = -numb
						end

						imgId = imgId + numb

						if (os.time()+250) > noel.isDizzy[1] then
							for k,v in next,animation do
								system.removeTimer(v)
							end
							noel.isDizzy = {0,false}
						end
					end,10)
				end
			end
		end
		if leftTime < 2 then
			for k,v in next,tfm.get.room.playerList do
				if info[k] then
					system.savePlayerData(k,serialization(info[k].db))
				end
			end
			system.exit()
		end
	end
end

eventKeyboard = function(n,k,d,x,y)
	if system.start then
		if os.time() > info[n].catch and k == 32 and info[n].dataLoaded then
			if os.time() < noel.isDizzy[1] then
				if math.pythag(x,y,noel.x,noel.y,32) then
					info[n].db.eventNoelGifts[2] = (info[n].db.eventNoelGifts[1]/10) + info[n].db.eventNoelGifts[2]
					info[n].db.eventNoelGifts[1] = 0

					if not info[n].db.eventNoelTitle then
						if info[n].db.eventNoelGifts[2] >= system.aim then
							info[n].db.eventNoelTitle = true
							system.giveEventGift(n,title[1])
						end
					end

					system.savePlayerData(n,serialization(info[n].db))

					system.updateBar(n)
				end
			else
				for k,v in next,currentGifts do
					local o = tfm.get.room.objectList[v[1]]
					if o and math.pythag(x,y,o.x,o.y,25) then
						if (info[n].db.eventNoelGifts[1]+v[4]) <= 50 then
							tfm.exec.removeObject(v[1])
							tfm.exec.removeImage(v[3])

							currentGifts[k][2] = 0
							info[n].db.eventNoelGifts[1] = info[n].db.eventNoelGifts[1] + v[4]

							system.savePlayerData(n,serialization(info[n].db))

							system.updateBar(n,({0xB73535,0x358CB7,0x35B765,0xB7B735,0xB73487})[v[4]])
							break
						end
					end
				end
			end
			info[n].catch = os.time() + 1000
		end
	end
end

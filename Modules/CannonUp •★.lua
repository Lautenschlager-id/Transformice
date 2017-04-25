cannonup = {
	translations = {
		en = {
			profile = "Rounds : <V>%d</V>\nCheeses : <V>%d</V>\n\nDeaths : <V>%d</V>",
			welcome = "Welcome to #cannonup, %s. Your aim is to be the survivor! <VP>Take care, watermelons are dangerous!\n\t<J>Report any issue to Bolodefchoco.",
			needed = "At least 2 mice are necessary to play #CannonUp!",
			nosurvivor = "No survivors!",
			won = "%s <G>won!",
		},
		br = {
			profile = "Rodadas : <V>%d</V>\nQueijos : <V>%d</V>\n\nMortes : <V>%d</V>",
			welcome = "Bem-vindo ao #cannonup, %s. Seu objetivo é ser o sobrevivente! <VP>Tome cuidado, melancias são perigosas!\n\t<J>Reporte qualquer problema para Bolodefchoco.",
			needed = "Pelo menos 2 ratos são necessários para jogar #CannonUp!",
			nosurvivor = "Nenhum sobrevivente!",
			won = "%s <G>venceu!",
		},
	},
	langue = "en",
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
	maps = {2310447,3746497,6001536,3666224,4591929,"#10"},
	info = {},
	init = function()
		cannonup.translations.pt = cannonup.translations.br
		cannonup.langue = cannonup.translations[tfm.get.room.community] and tfm.get.room.community or "en"
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
		ui.addTextArea(1,"\n\n<font size='13'>\n" .. cannonup.translations[cannonup.langue].profile:format(cannonup.info[p].round,cannonup.info[p].win,cannonup.info[p].death),n,300,100,200,150,0x0B282E,0x1B282E,1,true)
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
		tfm.exec.chatMessage("<V>[•] <CE>" .. cannonup.translations[cannonup.langue].welcome:format(n),n)
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
			tfm.exec.chatMessage("<V>[•] <R>" .. cannonup.translations[cannonup.langue].needed)
			tfm.exec.newGame('<C><P /><Z><S><S L="800" o="324650" H="100" X="400" Y="400" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')
		end
	end,
	eventLoop = function(currentTime,leftTime)
		if cannonup.xml ~= 0 then
			tfm.exec.newGame(cannonup.xml)
		end
		
		local alive = system.players(true)
		cannonup.alive = #alive
		if cannonup.alive < 2 or leftTime < 4 then
			if cannonup.alive == 0 then
				tfm.exec.chatMessage("<G>" .. cannonup.translations[cannonup.langue].nosurvivor .. " :(")
			else
				for k,v in next,alive do
					tfm.exec.giveCheese(v)
					tfm.exec.playerVictory(v)
				end
				tfm.exec.chatMessage("<J>" .. cannonup.translations[cannonup.langue].won:format(table.concat(alive,"<G>, <J>")))
			end
			tfm.exec.newGame(table.random(cannonup.maps))
		end
		
		if cannonup.xml == 0 and _G.currentTime > 5 and _G.leftTime > 3 then
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

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	cannonup.eventLoop(currentTime,leftTime)
end

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if cannonup["event" .. evento] then
		_G["event" .. evento] = function(...)
			cannonup["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

cannonup.init()

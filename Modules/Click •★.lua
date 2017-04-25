click = {
	translations = {
		en = {
			welcome = "<BV>Welcome to <CH><B>#click</B><BV>!\n\t» Typing <B>!info</B> displays the help message\n\t» Typing <B>!p Playername</B> opens the profile of the player\n\t» Report any issue to <B>Bolodefchoco</B>",
			fast = "Click as fast as you can! You have %s seconds!",
			won = "%s won!",
			newGame = "New game in <ROSE>%s seconds",
			help = "<BV>Click on the big circle <CH>as fast as you can<BV>. The more you click the higher your chances to be the winner!",
			profile = "Total clicks <BL>: <V>%s\n<J>High Score <BL>: <V>%s\n\n<J>Victories <BL>: <V>%s",
			close = "Close",
		},
		br = {
			welcome = "<BV>Bem-vindo ao <CH><B>#click</B><BV>!\n\t» Digitando <B>!info</B> aparece uma mensagem de ajuda\n\t» Digitando <B>!p Jogador</B> abre o perfil do jogador\n\t» Reporte qualquer problema para <B>Bolodefchoco</B>",
			fast = "Clique o mais rápido que você puder! Você tem %s segundos!",
			won = "%s venceu!",
			newGame = "Novo jogo em <ROSE>%s segundos",
			help = "<BV>Clique no grande circulo <CH>o mais rápido que você puder<BV>. Quanto mais você clicar maior sua chance de ganhar!",
			profile = "Cliques totais <BL>: <V>%s\n<J>Maior pontuação <BL>: <V>%s\n\n<J>Vitórias <BL>: <V>%s",
			close = "Fechar",
		},
	},
	langue = "en",
	new = 11,
	timer = 21,
	info = {},
	init = function()
		click.translations.pt = click.translations.br
		click.langue = click.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		for k,v in next,{"utoNewGame","utoShaman","fkDeath","utoScore"} do
			tfm.exec["disableA"..v]()
		end
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("p",true)
		click.map()
	end,
	map = function()
		tfm.exec.newGame('<C><P /><Z><S><S L="800" H="100" X="400" Y="400" T="0" P="0,0,0.3,0.2,0,0,0,0" /></S><D><DS X="25" Y="350" /></D><O /><L><JPL P1="125,127"P3="125,131"P4="124,136"P2="123,142"c="000000,16"/><JPL P1="123,142"P3="123,147"P4="123,153"P2="123,160"c="000000,16"/><JPL P1="123,160"P3="123,166"P4="125,172"P2="126,178"c="000000,16"/><JPL P1="126,178"P3="129,185"P4="133,191"P2="138,196"c="000000,16"/><JPL P1="138,196"P3="144,201"P4="151,206"P2="160,210"c="000000,16"/><JPL P1="160,210"P3="171,214"P4="183,216"P2="197,218"c="000000,16"/><JPL P1="197,218"P3="213,219"P4="231,219"P2="213,219"c="000000,16"/><JD P1="215,244"P2="243,225"c="000000,16"/><JD P1="243,225"P2="229,196"c="000000,16"/><L /></L></Z></C>')
	end,
	eventPlayerDied = function(n)
		tfm.exec.respawnPlayer(n)
	end,
	eventNewPlayer = function(n)
		tfm.exec.chatMessage(click.translations[click.langue].welcome,n)
		click.info[n] = {
			count = 0,
			total = 0,
			best = 0
		}
		tfm.exec.setPlayerScore(n,0)
	end,
	eventLoop = function()
		click.new = click.new - .5
		if click.new <= 0 then
			if click.timer > 0 then
				click.timer = click.timer - .5
				ui.setMapName("CLICK!<")
				ui.addTextArea(0,"<p align='center'><font size='28'>" .. click.translations[click.langue].fast:format(math.floor(click.timer)),nil,5,30,nil,nil,1,1,0,true)
				ui.addTextArea(1,"<p align='center'><font size='600'><R><a href='event:.'>•",nil,240,-180,nil,nil,1,1,0,false)
			else
				local p,r = {},""
				for k,v in next,click.info do
					p[#p+1] = {k,v.count}
				end
				table.sort(p,function(t1,t2) return t1[2] > t2[2] end)
				for k,v in next,p do
					if k < 51 then
						if k == 1 and v[2]>0 then
							tfm.exec.chatMessage("<J>" .. click.translations[click.langue].won:format(v[1]))
							tfm.exec.setPlayerScore(v[1],1,true)
						end
						r = r .. "<J>"..k..". <V>"..v[1].." <BL>- <VP>"..v[2].." clicks\n"
					end
				end
				ui.addTextArea(0,r,nil,5,30,250,330,1,1,1,true)
				click.new = 11
				click.timer = 21
				for k,v in next,click.info do
					if #p > 2 then
						v.total = v.total + v.count
						if v.count > v.best then
							v.best = v.count
						end
					end
					v.count = 0
					tfm.exec.respawnPlayer(k)
				end
			end
		else
			ui.setMapName("<J>" .. click.translations[click.langue].newGame:format(math.floor(click.new).."<J>") .. "!<")
		end
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "." then
			if click.new <= 0 and not tfm.get.room.playerList[n].isDead then
				click.info[n].count = click.info[n].count + 1
				tfm.exec.displayParticle(15,math.random(150,650),math.random(100,300),0,0,0,0,n)
			end
		end
		if c == "cp" then
			for i = 3,4 do
				ui.removeTextArea(i,n)
			end
		end
	end,
	eventChatCommand = function(n,c)
		local p = {}
		for k in c:gmatch("[^%s]+") do
			p[#p+1]=k
		end
		if p[1] == "info" then
			tfm.exec.chatMessage(click.translations[click.langue].help,n)
		end
		if p[1] == "p" then
			if p[2] then
				p[2] = p[2]:lower():gsub("%a",string.upper,1)
			else
				p[2] = n
			end
			if click.info[p[2]] then
				ui.addTextArea(3,"<p align='center'><font size='18'><a:active>"..p[2].."<font size='13'><p align='left'>\n<J>" .. click.translations[click.langue].profile:format(click.info[p[2]].total,click.info[p[2]].best,tfm.get.room.playerList[p[2]].score),n,620,260,175,130,1,1,1,true)
				ui.addTextArea(4,"<p align='center'><R><B><a href='event:cp'>" .. click.translations[click.langue].close,n,625,365,165,20,0x101010,0x101010,1,true)
			end
		end
	end,
}

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

eventLoop = function(currentTime,leftTime)
	_G.currentTime = normalizedTime(currentTime/1e3)
	_G.leftTime = normalizedTime(leftTime/1e3)
	click.eventLoop(currentTime,leftTime)
end

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if click["event" .. evento] then
		_G["event" .. evento] = function(...)
			click["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

click.init()

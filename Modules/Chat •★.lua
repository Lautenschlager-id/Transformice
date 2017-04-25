chat = {
	translations = {
		en = {
			welcome = "<J>Welcome to #chat. Enjoy while you are muted ?! Report any issue to Bolodefchoco."
		},
		br = {
			welcome = "<J>Bem-vindo ao #chat. Aproveite enquanto você está mutado ?! Reporte qualquer problema para Bolodefchoco."
		},
	},
	langue = "en",
	data = {},
	info = {},
	title = "Chat",
	init = function()
		chat.translations.pt = chat.translations.br
		chat.langue = chat.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("title",true)
		chat.displayChat()
	end,
	loadMessage = function()
		local message = "<font size='7'>\n</font>"
		for i = 18,1,-1 do
			if #message < 2000 then
				local line = chat.data[i] or ""
				if #line > 63 then
					line = line:sub(1,60) .. "...\n"
				end
				message = message .. line
			end
		end
		return message
	end,
	Chat = function(n,message,update)
		if not update then
			ui.addPopup(0,2,"",n,197,325,405,true)
		end
		ui.addTextArea(0,"",n,198,73,404,253,0x212E35,0x212E35,1,true)
		ui.addTextArea(1,message,n,200,75,400,250,0x324650,0x324650,1,true)
		ui.addTextArea(2,"<p align='center'><B><V>" .. chat.title,n,198,53,404,20,0x212E35,0x212E35,1,true)
		ui.addTextArea(3,"<p align='right'><B><R><a href='event:close'>X",n,200,54,400,20,1,1,0,true)
	end,
	displayChat = function(n,update)
		local loadM = chat.loadMessage()
		if not update then
			chat.Chat(n,loadM)
		else
			for k,v in next,chat.info do
				if v.open then
					chat.Chat(k,loadM,k ~= n)
				else
					v.toRead = v.toRead + 1
					chat.updateToRead(k)
				end
			end
		end
	end,
	updateToRead = function(n)
		ui.addTextArea(4,"<p align='center'><V><a href='event:open'><B>" .. chat.title:sub(1,10) .. "</B> <J>" .. chat.info[n].toRead,n,745,378,50,nil,0x324650,0x212E35,1,true)
	end,
	newMessage = function(message,n)
		message = message:gsub("<","&lt;"):gsub("https?",""):gsub("://","")
		
		if message:sub(1,1) == "/" then
			chat.eventChatCommand(n,message:sub(2))
		else
			message = message:gsub("{(.-):(.-)}",function(color,text)
				color = color:upper()
				if table.find({"BV","R","BL","J","N","N2","PT","CE","CEP","CS","S","PS","G","V","VP","VI","ROSE","CH","T"},color) then
					return string.format("<%s>%s</%s>",color,text,color)
				else
					return text
				end
			end)
			table.insert(chat.data,1,string.format("<V>[%s] <N>%s\n",n,message))
		end
	end,
	eventPopupAnswer = function(i,n,a)
		if a ~= "" then
			chat.newMessage(a,n)
			chat.displayChat(n,true)
		else
			chat.displayChat(n)
		end
	end,
	eventNewPlayer = function(n)
		chat.info[n] = {
			open = true,
			toRead = 0,
		}
		chat.displayChat(n)
		tfm.exec.chatMessage(chat.translations[chat.langue].welcome,n)
	end,
	eventTextAreaCallback = function(i,n,c)
		if c == "close" then
			ui.addPopup(0,2,"",n,1e7,1e7)
			for i = 0,3 do
				ui.removeTextArea(i,n)
			end
			chat.info[n].open = false
			chat.updateToRead(n)
		elseif c == "open" then
			chat.info[n].open = true
			chat.info[n].toRead = 0
			chat.displayChat(n)
			ui.removeTextArea(4,n)
		end		
	end,
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+")
		if p[1] == "title" and p[2] and system.roomAdmins[n] then
			chat.title = table.concat(p," ",nil,2):sub(1,40)
			chat.displayChat()
		elseif p[1] == "np" and p[2] then
			tfm.exec.chatMessage(string.format("<S>%s loaded by %s",p[2]:sub(1,1) == "@" and p[2] or "@" .. p[2],n))
			tfm.exec.newGame(p[2])
		elseif p[1] == "sha" then
			tfm.exec.disableAutoShaman(p[2] == "1")
		elseif p[1] == "new" then
			tfm.exec.disableAutoNewGame(p[2] == "1")
		elseif p[1] == "adm" and system.roomAdmins[n] then
			system.roomAdmins[string.nick(p[2])] = true
		end
	end,
}

system.isRoom=tfm.get.room.name:byte(2)~=3;system.roomAdmins={}system.miscAttrib=0;system.roomSettings={["#"]=function(a)system.miscAttrib=tonumber(a)or 1;system.miscAttrib=math.max(1,math.min(system.miscAttrib,99))end}system.roomAttributes=system.isRoom and tfm.get.room.name:match("%*?#"..system.module.."%d+(.*)")or""system.isPlayer=function(a)if tfm.get.room.playerList[a]then if a:sub(1,1)=="*"then return false end;if tfm.get.room.playerList[a].registrationDate then if os.time()-(tfm.get.room.playerList[a].registrationDate or 0)<432e6 then return false end else return false end;return true else return false end end;system.loadTable=function(b)local c;for d in b:gmatch("[^%.]+")do d=tonumber(d)and tonumber(d)or d;c=c and c[d]or _G[d]end;return c end;system.players=function(e)local f,g=0,0;if e then f={}end;for h,i in next,tfm.get.room.playerList do if system.isPlayer(h)then if not i.isDead and not i.isVampire then if e then f[#f+1]=h else f=f+1 end end;g=g+1 end end;if e then return f else return f,g end end;string.split=function(j,k,l)local m={}for i in j:gmatch(k)do m[#m+1]=l and l(i)or i end;return m end;string.nick=function(n)return n:lower():gsub('%a',string.upper,1)end;math.isNegative=function(o,p,q)return o<0 and p or q end;math.percent=function(o,r,i)i=i or 100;local s=o/r*i;return math.min(s,i)end;math.pythag=function(t,u,v,w,x)return(t-v)^2+(u-w)^2<=x^2 end;table.find=function(c,j,y)for h,i in next,c do if y then if i[y]==j then return true,h end else if i==j then return true,h end end end;return false end;table.turnTable=function(o)return type(o)=="table"and o or{o}end;table.random=function(z)return type(z)=="table"and z[math.random(#z)]or math.random()end;table.concat=function(c,A,l,B,C)local D=""A=A or""B,C=B or 1,C or#c;for h,i in next,c do if h>=B and h<=C then D=D..(l and l(h,i)or i)..A end end;return D:sub(1,-1-#A)end;do local E=string.byte;string.byte=function(F)return E(F,1,#F)end end;deactivateAccents=function(F)local G={a={"á","â","à","å","ã","ä"},e={"é","ê","è","ë"},i={"í","î","ì","ï"},o={"ó","ô","ò","õ","ö"},u={"ú","û","ù","ü"}}for h,i in next,G do for B=1,#i do F=F:gsub(i[B],tostring(h))end end;return F end;xml={}xml.parse=function(H)H=H:match("<P (.-)/>")or""local m={}for I,J,j in H:gmatch("([%-%w]+)=([\"'])(.-)%2")do m[I]=j end;return m end;xml.attribFunc=function(H,K)local L=xml.parse(H)for h,i in next,K do if L[i.attribute]then i.func(L[i.attribute])end end end;xml.addAttrib=function(H,m,M)local N=H:match("<P (.-)/>")or""for h,i in next,m do if not N:find(i.tag)then H=H:gsub("<P (.-)/>",function(O)return string.format("<P %s=\"%s\" %s/>",i.tag,i.value,O)end)end end;if M then tfm.exec.newGame(H)else return H end end;normalizedTime=function(P)return math.floor(P)+(P-math.floor(P)>=.5 and.5 or 0)end;disableChatCommand=function(Q)system.disableChatCommandDisplay(Q,true)system.disableChatCommandDisplay(Q:lower(),true)system.disableChatCommandDisplay(Q:upper(),true)end;

for k,evento in next,{"NewGame","PlayerDied","PlayerGetCheese","PlayerVampire","PlayerWon","PlayerLeft","EmotePlayed","Keyboard","Mouse","PopupAnswer","TextAreaCallback","ChatCommand","ChatMessage","SummoningStart","SummoningEnd","SummoningCancel","NewPlayer","PlayerRespawn","ColorPicked"} do
	if chat["event" .. evento] then
		_G["event" .. evento] = function(...)
			chat["event" .. evento](...)
		end
	end
end
if _G["eventNewPlayer"] then
	table.foreach(tfm.get.room.playerList,eventNewPlayer)
end

chat.init()

string.split = function(value,pattern,f)
	local out = {}
	for v in value:gmatch(pattern) do
		out[#out + 1] = (f and f(v) or v)
	end
	return out
end
string.nick=function(player)
	return player:lower():gsub('%a',string.upper,1)
end

table.find = function(list,value,index)
	for k,v in next,list do
		if index then
			if v[index] == value then
				return true,k
			end
		else
			if v == value then
				return true,k
			end
		end
	end
	return false
end

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
			local p = string.split(message:sub(2),"[^%s]+")
			if p[1] == "title" then
				chat.eventChatCommand(n,table.concat(p," "))
			elseif p[1] == "adm" then
				
			end
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
		if p[1] == "title" and p[2] then
			chat.title = table.concat(p," ",2):sub(1,40)
			chat.displayChat()
		elseif p[1] == "np" and p[2] then
			tfm.exec.chatMessage(string.format("<S>%s loaded by %s",p[2]:sub(1,1) == "@" and p[2] or "@" .. p[2],n))
			tfm.exec.newGame(p[2])
		elseif p[1] == "sha" then
			tfm.exec.disableAutoShaman(p[2] == "1")
		elseif p[1] == "new" then
			tfm.exec.disableAutoNewGame(p[2] == "1")
		end
	end,
}

for _,f in next,{"PopupAnswer","NewPlayer","TextAreaCallback","ChatCommand"} do
	_G["event" .. f] = function(...)
		chat["event" .. f](...)
	end
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

chat.init()

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
		local message = ""
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
	Chat = function(n,message)
		ui.addPopup(0,2,"",n,197,325,405,true)
		ui.addTextArea(0,"",n,198,73,404,253,0x212E35,0x212E35,1,true)
		ui.addTextArea(1,message,n,200,75,400,250,0x324650,0x324650,1,true)
		ui.addTextArea(2,"<p align='center'><B><V>" .. chat.title,n,198,53,404,20,0x212E35,0x212E35,1,true)
		ui.addTextArea(3,"<p align='right'><B><R><a href='event:close'>X",n,200,54,400,20,1,1,0,true)
	end,
	displayChat = function(n)
		local loadM = chat.loadMessage()
		if n then
			chat.Chat(n,loadM)
		else
			for k,v in next,chat.info do
				if v.open then
					chat.Chat(k,loadM)
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
	eventPopupAnswer = function(i,n,a)
		if a ~= "" then
			table.insert(chat.data,1,string.format("<V>[%s] <N>%s\n",n,a:gsub("<","&lt;"):gsub("https?",""):gsub("://","")))
			chat.displayChat()
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
		if c:sub(1,5) == "title" and c:sub(7) ~= "" and system.roomAdmins[n] then
			chat.title = c:sub(7,47)
			chat.displayChat()
		end
	end,
}

for _,f in next,{"PopupAnswer","NewPlayer","TextAreaCallback"} do
	_G["event" .. f] = function(...)
		chat["event" .. f](...)
	end
end
table.foreach(tfm.get.room.playerList,eventNewPlayer)

chat.init()

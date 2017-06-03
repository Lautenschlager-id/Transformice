mode.chat = {
	-- Translations
	translations = {
		en = {
			-- Init
			welcome = "<J>Welcome to #chat. Enjoy while you are muted ?! Report any issue to Bolodefchoco.",
		
			-- Info
			loadmap = "loaded by",
			enabled = "enabled",
			disabled = "disabled",
			
			-- Cats
			shaman = "shaman",
			newGame = "Auto New Game",
		},
		br = {
			welcome = "<J>Bem-vindo ao #chat. Aproveite enquanto você está mutado ?! Reporte qualquer problema para Bolodefchoco.",
		
			loadmap = "carregado por",
			enabled = "ativado",
			disabled = "desativado",
			
			shaman = "shaman",
			newGame = "Novo Jogo Automático",
		},
		ar = {
			welcome = "<J>مرحبًا بك في #chat. استمتع بينما أنت مكتوم ?! بلغ عن أي مشكلة إلى Bolodefchoco.",
		
			loadmap = "شُغل بواسطة",
			enabled = "فُعل",
			disabled = "أُلغي",
			
			shaman = "الشامان",
			newGame = "جولة جديدة تلقائية",
		},
	},
	langue = "en",
	-- Data
	info = {},
	data = {},
	displayData = {},
	messageId = 0,
	-- New Game Settings
	hasShaman = false,
	autoNeWGame = false,
	-- Chat settings
	chatTitle = "Chat",
	-- Chat
	chat = function(n,message,update)
		if not update then
			ui.addPopup(0,2,"",n,107,325,565,true)
		end
		ui.addTextArea(0,"",n,108,73,564,253,0x212E35,0x212E35,1,true)
		ui.addTextArea(1,message,n,110,75,560,250,0x324650,0x324650,1,true)
		ui.addTextArea(2,"<p align='center'><B><V>" .. mode.chat.chatTitle,n,108,53,564,20,0x212E35,0x212E35,1,true)
		ui.addTextArea(3,"<p align='right'><B><R><a href='event:close'>X",n,110,54,560,20,1,1,0,true)
	end,
	getTextLength = function(line)
		return string.len(string.gsub(line,"<.*>",""))
	end,
	loadData = function()
		local message = "<font size='7'>\n</font>"
		for i = 18,1,-1 do
			if #message < 1900 then
				local line = mode.chat.displayData[i] or ""
				message = message .. line
			end
		end
		return message
	end,
	updateToRead = function(n)
		ui.addTextArea(4,"<p align='center'><V><a href='event:open'><B>" .. string.sub(string.lower(mode.chat.chatTitle),1,8) .. "</B> <J>" .. mode.chat.info[n].toRead,n,712,378,80,nil,0x324650,0x212E35,1,true)
	end,
	displayChat = function(n,update)
		local loadedM = mode.chat.loadData()
		if not update then
			mode.chat.chat(n,loadedM)
		else
			for k,v in next,mode.chat.info do
				if v.open then
					mode.chat.chat(k,loadedM,k ~= n)
				else
					v.toRead = v.toRead + 1
					mode.chat.updateToRead(k)
				end
			end
		end
	end,
	newMessage = function(message,n)
		mode.chat.messageId = mode.chat.messageId + 1
		table.insert(mode.chat.data,{mode.chat.messageId,n,string.gsub(string.gsub(message,"@%((.*)%)",function(text) return text end),"{.-:(.-)}",function(text) return text end)})
	
		if mode.chat.getTextLength(message) > 50 then
			message = string.sub(message,1,47) .. "..."
		end
		message = string.gsub(message,"<","&lt;") -- < to <
		message = string.gsub(message,"https?","") -- https to ""
		message = string.gsub(message,"://","") -- :// to ""
		message = string.gsub(message,"@%((.*)%)",function(text) -- @(link:text)
			return string.format("<a href='event:display.%s'>%s</a>",mode.chat.messageId,text)
		end)
		
		if #message > 0 then
			if string.sub(message,1,1) == "/" then
				mode.chat.eventChatCommand(n,string.sub(message,2))
			else
				message = string.gsub(message,"{(.-):(.-)}",function(color,text) -- {colorTag:Text}
					color = string.upper(color)
					if table.find({"BV","R","BL","J","N","N2","PT","CE","CEP","CS","S","PS","G","V","VP","VI","ROSE","CH","T"},color) then
						return string.format("<%s>%s</%s>",color,text,color)
					else
						return text
					end
				end)
				table.insert(mode.chat.displayData,1,string.format("<V>[%s] <N>%s\n",n,message))
			end
		end
	end,
	-- Init
	init = function()
		mode.chat.translations.pt = mode.chat.translations.br
		mode.chat.langue = mode.chat.translations[tfm.get.room.community] and tfm.get.room.community or "en"
		tfm.exec.setRoomMaxPlayers(30)
		system.disableChatCommandDisplay("title",true)
		mode.chat.displayChat()
	end,
	-- New Player
	eventNewPlayer = function(n)
		mode.chat.info[n] = {
			open = true,
			toRead = 0,
		}
		mode.chat.displayChat(n)
		tfm.exec.chatMessage(system.getTranslation("welcome"),n)
	end,
	-- Answer bar
	eventPopupAnswer = function(i,n,a)
		if #string.gsub(a," ","") > 0 then
			mode.chat.newMessage(a,n)
			mode.chat.displayChat(n,true)
		else
			mode.chat.displayChat(n)
		end
	end,
	-- Callbacks
	eventTextAreaCallback = function(i,n,c)
		local p = string.split(c,"[^%.]+")
		if p[1] == "close" then
			ui.addPopup(0,2,"",n,1e7,1e7)
			for i = 0,3 do
				ui.removeTextArea(i,n)
			end
			mode.chat.info[n].open = false
			mode.chat.updateToRead(n)
		elseif p[1] == "open" then
			mode.chat.info[n].open = true
			mode.chat.info[n].toRead = 0
			mode.chat.displayChat(n)
			ui.removeTextArea(4,n)
		elseif p[1] == "display" then
			local msg = mode.chat.data[tonumber(p[2])]		
			tfm.exec.chatMessage(string.format("<N>> <V>[%s] <N>%s",msg[2],msg[3]),n)
		end
	end,
	-- Commands
	eventChatCommand = function(n,c)
		local p = string.split(c,"[^%s]+",string.lower)
		if p[1] == "title" and p[2] and system.roomAdmins[n] then
			mode.chat.chatTitle = string.sub(table.concat(p," ",nil,2),1,40)
			mode.chat.displayChat()
		elseif p[1] == "np" and p[2] then
			tfm.exec.chatMessage(string.format("<S>%s %s %s",string.sub(p[2],1,1) == "@" and p[2] or "@" .. p[2],system.getTranslation("loadmap"),n))
			tfm.exec.newGame(p[2])
		elseif p[1] == "sha" then
			mode.chat.hasShaman = not mode.chat.hasShaman
			
			tfm.exec.chatMessage("<S>• " .. system.getTranslation("shaman") .. " " .. system.getTranslation((mode.chat.hasShaman and "disabled" or "enabled")),n)
			tfm.exec.disableAutoShaman(mode.chat.hasShaman)
		elseif p[1] == "new" then
			mode.chat.autoNeWGame = not mode.chat.autoNeWGame
		
			tfm.exec.chatMessage("<S>• " .. system.getTranslation("newGame") .. " " .. system.getTranslation((mode.chat.autoNeWGame and "disabled" or "enabled")),n)
			tfm.exec.disableAutoNewGame(mode.chat.autoNeWGame)
			tfm.exec.disableAutoTimeLeft(mode.chat.autoNeWGame)
		elseif p[1] == "adm" and system.roomAdmins[n] then
			system.roomAdmins[string.nick(p[2])] = true
		end
	end,	
}

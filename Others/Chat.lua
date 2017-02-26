adm = {Bolodefchoco=1} -- Troque Bolodefchoco pelo seu nick
mice={}

ui.chat = function(name,message,title,x,y,w,h)
	for admin in next,adm do message=message:gsub(admin,"<R>"..admin.."</R>") end
	_G.message = message or ""
	x,y,w,h = x or 300-150/2, y or 80, w or 350, h or 200
	title = title or "Chat"
	if mice[name] then
		if mice[name].on then
			ui.addPopup(0,2,"",name,x-1,y+200,w+1,true)
		end
	else
		for n in next,tfm.get.room.playerList do
			if mice[n].on then
				ui.addPopup(0,2,"",n,x-1,y+200,w+1,true)
			end
		end
	end
	for n in next,tfm.get.room.playerList do 
		if mice[n] and mice[n].on then
			ui.addTextArea(0,"",n,x,y,w,h,0x324650,0x212E35,1,true)
			ui.addTextArea(1,message,n,x+4,y+5,w-9,h-10,1,1,0,true)
			ui.addTextArea(2,"<font face='Lucida Console'><p align='center'><V>"..title,n,x-1,y-15,w+1,h-185,0x212E35,0x212E35,1,true)
			ui.addTextArea(3,"<R><font size='15'><a href='event:chat_Close'><B>x</B></a></font></R>",n,x+325,y-20,25,25,1,1,0,true)
		end
	end
end

eventNewPlayer=function(n)
	mice[n] = {
		on = true,
		msgs = 0
	}
	ui.chat(n,message or "")
end table.foreach(tfm.get.room.playerList,eventNewPlayer)

eventTextAreaCallback=function(id,n,c)
	if c == "chat_Close" then
		mice[n].on = false
		for i = 0,3 do ui.removeTextArea(i,n) end
		ui.addPopup(0,2,"",n,1e7,1e7)
		ui.addTextArea(4,"<VP><p align='center'><a href='event:chat_Open'>Chat <J>"..mice[n].msgs,n,745,378,50,h,0x324650,0x212E35,1,true)
	end if c== "chat_Open" then
		mice[n].on = true
		mice[n].msgs = 0
		ui.removeTextArea(4,n)
		ui.chat(n,message or "")
	end
end

eventPopupAnswer=function(i,n,a)
	if i == 0 then
		a = a:gsub("http",''):gsub("<","&lt;"):gsub("://",":\\\\")
		for color,tag in next,{"BV","R","BL","J","V","VP","VI","ROSE","CE","CEP","PT","G","N","CH","T","CS","N2","S"} do
			if color>12 or (color <13 and adm[n]) then
				if a:upper():find("/"..tag.." ") then
					a = a:gsub("/"..tag:lower().." ","<"..tag..">"):gsub("/"..tag.." ","<"..tag..">")
				end
			end
		end
		if adm[n] and a:sub(1,1)=="/" and a:sub(2,2)~="/" then
			if a == "/clear" then
				ui.chat(nil,"<ROSE>[Chat] <PT>#Admin Clear")
			end
			if a == "/size" then
				message = "<J> . . . #%d\n"..message
				ui.chat(n,message:format(#message))
			end
			if a:sub(1,6) == "/flood" then
				local mult,text = a:match("/flood (%d+) (.+)")
				if mult and text then
					for i = 1,tonumber(mult) do
						ui.chat(n,"<V>["..n.."] <N>"..text.."\n"..message)
					end
				end
			end
			if a:sub(1,6) == "/admin" then
				local who = a:sub(8)
				who = who:gsub("%a",string.upper,1)
				if tfm.get.room.playerList[who] then
					adm[who] = 1
					ui.chat(n,"<ROSE>[Chat] "..who.." <PT>agora é admin!\n"..message)
				end
			end
			if a:sub(1,8) == "/unadmin" then
				local who = a:sub(10)
				who = who:gsub("%a",string.upper,1)
				if adm[who] then
					adm[who] = nil
					ui.chat(n,"<ROSE>[Chat] "..who.." <PT>não é mais admin!\n"..message)
				end
			end
			ui.chat(n,message)
		else
			if adm[n] then a=a:gsub("//","/") end
			if a ~= "" then
				ui.chat(n,"<V>["..n.."] <N>"..a.."\n"..message)
			else
				ui.chat(n,message)
			end
		end
		if #message > 1990 then
			ui.chat(nil,"<ROSE>[Chat] <PT>#2000 Clear")
		end
		for n in next,tfm.get.room.playerList do
			if not mice[n].on then
				mice[n].msgs = mice[n].msgs + 1
				ui.updateTextArea(4,"<VP><p align='center'><a href='event:chat_Open'>Chat <J>"..mice[n].msgs,n)
			end
		end
	end
end

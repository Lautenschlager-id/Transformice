info = [[

	Insert your /lsmap here

]]

author = info:match("(%S+)'s maps:") or info:match("(%S+) %- @")
if not author then
	error("Invalid Author")
end

string.split = function(value,pattern,f)
	local out = {}
	for v in string.gmatch(value,pattern) do
		out[#out + 1] = (f and f(v) or v)
	end
	return out
end
tableconcat = table.concat
table.concat = function(list,sep,f,i,j)
	local txt = ""
	sep = sep or ""
	i,j = i or 1,j or #list
	for k,v in next,list do
		if type(k) ~= "number" and true or (k >= i and k <= j) then
			txt = txt .. (f and f(k,v) or v) .. sep
		end
	end
	return string.sub(txt,1,-1-#sep)
end
table.find = function(list,value,index,f)
	for k,v in next,list do
		local i = (type(v) == "table" and index and v[index] or v)
		if (f and f(i) or i) == value then
			return true,k
		end
	end
	return false,0
end
do
	local printf = print
	print = function(txt)
		txt = tostring(txt)
		if #txt > 2000 then
			local total = 0
			while #txt > total do
				printf(string.sub(txt,total,total + 2000))
				total = total + 2001
			end
		else
			printf(txt)
		end
	end
	
	ui.checkBoxData = {}
	ui.addCheckBox = function(id,txt,n,x,y,checked,w,h,event)
		local thisId = id
		id = id * 4
		
		w = w or 200
		h = h or 20
		
		ui.addTextArea(-id,"",n,x-1,y-1,4,4,1,1,1,true)
		ui.addTextArea(-id + 1,"",n,x,y,4,4,0x3A5A66,0x3A5A66,1,true)
		ui.addTextArea(-id + 2,"",n,x,y,3,3,0x233238,0x233238,1,true)
		ui.addTextArea(-id + 3,"<font size='12' color='#324650'><a href='event:checkBox."..thisId.."'>&nbsp;&nbsp;&nbsp;</a><n>&nbsp;&nbsp;"..txt,n,x-6,y-8,w,h,1,1,0,true)

		ui.checkBoxData[thisId] = {
			text = txt,
			isChecked = checked,
			event = event or (function() end)
		}

		if checked then
			ui.updateCheckBox(thisId,true,n)
		end
	end
	ui.updateCheckBox = function(id,checked,n)
		if ui.checkBoxData[id] then
			local char = "&nbsp;&nbsp;&nbsp;"
			if checked then
				char = "✓"
			end
			ui.updateTextArea(-(id*4) + 3,"<font size='12'><a href='event:checkBox."..id.."'>"..char.."</a><n>&nbsp;&nbsp;"..ui.checkBoxData[id].text,n)
			ui.checkBoxData[id].event(checked,n)
			ui.checkBoxData[id].isChecked = checked
		end
	end
	ui.removeCheckBox = function(id,n)
		id = id * 4
		for i = id - 3,id do
			ui.removeTextArea(-i,n)
		end
	end
end

languages = {1,{"EN","ES","BR","FR"}}
categories = {
	-- Names are En, Es, Br, Fr, respectively
	{
		name = "Normal",
		category = 0,
		checked = false,
		color = "ACA99F",
		image = "AjcGgyx",
	},
	{
		name = {"Protected","Protegido","Protegido","Protégée"},
		category = 1,
		checked = true,
		color = "FCD46E",
		image = "dnuppaW",
	},
	{
		name = "Prime",
		category = 2,
		checked = false,
		color = "FDD17B",
		image = "4tsd2Jp",
	},
	{
		name = {"Prime Bootcamp","Bootcamp","Bootcamp Primário","Bootcamp"},
		category = 3,
		checked = true,
		color = "A19A6C",
		image = "KQmIe6z",
	},
	{
		name = {"Shaman","Chamán","Shaman","Chamane"},
		category = 4,
		checked = true,
		color = "95D9D6",
		image = "W2DuMvz",
	},
	{
		name = {"Art","Arte","Arte","Art"},
		category = 5,
		checked = true,
		color = "D16C41",
		image = "JefkO6b",
	},
	{
		name = {"Mechanism","Mecanismo","Mecanismo","Mécanisme"},
		category = 6,
		checked = true,
		color = "DBDBDB",
		image = "EyQAQ10",
	},
	{
		name = {"No Shaman","Sin Chamán","Sem Shaman","Sans Chamane"},
		category = 7,
		checked = true,
		color = "E9E9E9",
		image = "RV32jmm",
	},
	{
		name = {"Dual Shaman","Dos Chamanes","Dois Shamans","Co-opération Chamanes"},
		category = 8,
		checked = true,
		color = "C9C0E4",
		image = "DoACCNh",
	},
	{
		name = {"Miscellaneous","Misceláneos","Diversos","Divers"},
		category = 9,
		checked = true,
		color = "E9BA5C",
		image = "PYRguTf",
	},
	{
		name = "Survivor",
		category = 10,
		checked = true,
		color = "7C7C7C",
		image = "gdxuJWr",
	},
	{
		name = "Vampire Survivor",
		category = 11,
		checked = false,
		color = "AC3736",
		image = "44zz3dC",
	},
	{
		name = "Bootcamp",
		category = 13,
		checked = true,
		color = "A19A6C",
		image = "KQmIe6z",
	},
	{
		name = "Racing",
		category = 17,
		checked = true,
		color = "CA8A7F",
		image = "pUB90w0",
	},
	{
		name = {"Defilante","Defilante","Defilante","Défilante"},
		category = 18,
		checked = false,
		color = "84D329",
		image = "wM2TiWg",
	},
	{
		name = {"Music","Música","Música","Musique"},
		category = 19,
		checked = false,
		color = "9FAAB2",
		image = "QbMYTsP",
	},
	{
		name = "Survivor Test",
		category = 20,
		checked = false,
		color = "7C7C7C",
		image = "gdxuJWr",
		ref = 10,
	},
	{
		name = "Vampire Test",
		category = 21,
		checked = false,
		color = "AC3736",
		image = "44zz3dC",
		ref = 11,
	},
	{
		name = {"Tribe House","Casa de Tribu","Cafofo da Tribo","Maison de Tribu"},
		category = 22,
		checked = false,
		color = "937456",
		image = "Lxvjj1M",
	},
	{
		name = "Bootcamp Test",
		category = 23,
		checked = false,
		color = "A19A6C",
		image = "KQmIe6z",
		ref = 13,
	},
	{
		name = {"Dual Shaman Survivor","Doble Chamán Survivor","Survivor com Dois Shamans","Deux Chamanes Survivor"},
		category = 24,
		checked = false,
		color = "7C7C7C",
		image = "gdxuJWr",
	},
	{
		name = "Dual Shaman Test",
		category = 32,
		checked = false,
		color = "C9C0E4",
		image = "DoACCNh",
		ref = 8,
	},
	{
		name = "Racing Test",
		category = 38,
		checked = false,
		color = "CA8A7F",
		image = "pUB90w0",
		ref = 17,
	},
	{
		name = "Module",
		category = 41,
		checked = false,
		color = "009D9D",
		image = "GmbpOc6",
	},
	{
		name = "No shaman Test",
		category = 42,
		checked = false,
		color = "E9E9E9",
		image = "RV32jmm",
		ref = 7,
	},
	{
		name = "High Deleted",
		category = 43,
		checked = false,
		color = "FA6A40",
		image = "BLabBxr",
	},
	{
		name = "Deleted",
		category = 44,
		checked = false,
		color = "FA6A40",
		image = "BLabBxr",
	},
	{
		name = "Vanilla",
		category = 87,
		checked = true,
		color = "5D7602",
		image = "GmbpOc6",
	}
}

do
	local _DATA = {}
	
	setMeta = function(cat)
		return setmetatable({},{
			__call = function()
				return _DATA[cat]
			end
		})
	end
	setData = function(cat,i)
		_DATA[cat] = i
	end
end

getMaps = function(data)
	local out = {}
	
	for code,cat in data:gmatch("(@%d+).-P(%d+)") do
		cat = tonumber(cat)
		if not out[cat] then
			out[cat] = setMeta(cat)
		end
		
		out[cat][#out[cat] + 1] = code
		setData(cat,#out[cat])
	end
	
	for cat,codes in next,out do
		table.sort(codes)
	end
	
	return out
end
maps = getMaps(info)

displayList = function()
	local text = {"<BV>Total : <V>%s"}
	
	local total = 0
	local highperm = 0
	for k,v in next,categories do
		if maps[v.category] then
			text[#text + 1] = string.format("<BV><a href='event:list.%s'>P%s</a> : <V>%s",v.category,v.category,#maps[v.category])
			
			total = total + #maps[v.category]
			if v.category > 2 and v.category < 10 then
				highperm = highperm + #maps[v.category]
			end
		end
	end	
	text[1] = string.format(text[1],total)
	if highperm > 0 then
		text[#text + 1] = "<BV>High perm : <V>" .. highperm
	end
	
	text = table.concat(text,"\n")
	print(text)
	ui.addTextArea(0,text,author,5,30,nil,nil,nil,nil,1,true)
end
displayList()

categoryBoxesThread = function()
	local y = 80
	for i = 1,#categories do
		local cat = categories[i]
		
		if (i-1) % 7 == 0 then
			y = y + 20
		end
		
		ui.addCheckBox(10 + i,"P" .. cat.category,author,437 + (((i-1) % 7) * 50),y,cat.checked,50,20)
		if i % 5 == 0 then
			coroutine.yield()
		end
	end
end

-- Generation
getMapsFromCategory = function(mapList,isHighPerm,ignoreRule,avoidLinkedMaps)
	local insertSpoil = "[spoiler=%s]%s%s[/spoiler]"
	local insertImage = "[p=center][img]http://api.micetigri.fr/share/maps/%s[/img][/p]"

	local out = table.concat(mapList,"\n",function(k,v)
		v = v .. "!"
		if not ignoreRule and ui.checkBoxData[4].isChecked and (not ui.checkBoxData[5].isChecked and true or isHighPerm) then
			return insertSpoil:format(
				v, -- @Code
				ui.checkBoxData[6].isChecked and "Add your commentary here!" or "", -- Description
				insertImage:format(v:gsub("@","")) -- Image
			)
		else
			return v -- @Code
		end
	end,1,(avoidLinkedMaps and #mapList - (#mapList - (mapList() or #mapList))))
	
	return out
end
createSingularTab = function(list,form,title)
	if list[1] > 0 then
		return "\n" .. form:format(
			"",
			ui.checkBoxData[3].isChecked and string.format("[b]%03d[/b] ",list[1]) or "",
			"",
			title,
			table.concat(list[2],"\n")
		)
	end
	return ""
end

-- Interface
ui.addTextArea(1,"<p align='center'><font size='20'>BBCODE SETTINGS",author,110,55,300,320,0x192A31,0x192A31,1,true)

ui.addCheckBox(1,"Display icons",author,120,100,true)
ui.addCheckBox(2,"Display category",author,120,130,true)
ui.addCheckBox(3,"Display amount",author,120,160,true)

ui.addCheckBox(4,"Insert map image",author,120,190,false,200,20,function(checked)
	if checked then
		ui.addCheckBox(5,"Only in high perms",author,140,205,true)
		ui.addCheckBox(6,"Add description",author,140,220,false)
	else
		for i = 5,6 do
			ui.removeCheckBox(i,author)
		end
	end
end)

ui.addCheckBox(7,"List all categories",author,120,240,true,200,20,function(checked)
	if checked then
		for i = 2,3 do
			ui.removeTextArea(i,author)
		end

		for i = 1,#categories do
			ui.removeCheckBox(10 + i,author)
		end
		
		createCategoryBoxes = coroutine.create(categoryBoxesThread)
	else
		ui.addTextArea(2,"<p align='center'><font size='20'>CATEGORIES",author,430,55,350,250,0x192A31,0x192A31,1,true)
		ui.addTextArea(3,"<p align='center'><a href='event:uncheckCategories'>Uncheck all",author,435,280,200,20,0x333348,0x333348,1,true)		
	end
end)

ui.addCheckBox(8,"Link test categories",author,140,260)
ui.addCheckBox(9,"Create high perm list",author,120,280)
ui.addCheckBox(10,"Create maps in test list",author,120,310)

ui.addTextArea(4,"<a href='event:language'>Language : " .. languages[2][languages[1]],author,115,320,290,20,1,1,0,true)
ui.addTextArea(5,"<p align='center'>Create BBCode&nbsp;&nbsp;&nbsp;&nbsp;<a href='event:generate'>ASCII</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a href='event:generate.byte'>BYTE</a>",author,115,350,290,20,0x333348,0x333348,1,true)

eventLoop = function()
	if not ui.checkBoxData[7].isChecked then
		if createCategoryBoxes and coroutine.status(createCategoryBoxes) ~= "dead" then
			coroutine.resume(createCategoryBoxes)
		end
	end
end

eventTextAreaCallback = function(i,n,c)
	local p = string.split(c,"[^%.]+")
	
	if p[1] == "list" then
		p[2] = tonumber(p[2])
		
		if maps[p[2]] then
			print(string.format("<BV>P%s : <V>%s",p[2],table.concat(maps[p[2]],",")))
		end
		return
	end
	
	if p[1] == "checkBox" then
		p[2] = tonumber(p[2])
		ui.updateCheckBox(p[2],not ui.checkBoxData[p[2]].isChecked,n)
		return
	end
	
	if p[1] == "uncheckCategories" then
		if not ui.checkBoxData[7].isChecked and coroutine.status(createCategoryBoxes) == "dead" then
			for i = 1,#categories do
				ui.updateCheckBox(10 + i,false,n)
			end
		end
		return
	end
	
	if p[1] == "language" then
		languages[1] = languages[1] + 1
		if languages[1] > #languages[2] then
			languages[1] = 1
		end
		
		ui.updateTextArea(4,"<a href='event:language'>Language : " .. languages[2][languages[1]],n)
		return
	end

	if p[1] == "generate" then
		local insertTab = "[spoiler=[color=#%s]%s %s %s[/color]][size=13]%s[/size][/spoiler]"
		
		if ui.checkBoxData[8].isChecked then
			for k,v in next,categories do
				if v.ref and maps[v.category] then
					if not maps[v.ref] then
						maps[v.ref] = setMeta(v.ref)
						setData(v.ref,0)
					end
					
					for m,n in next,maps[v.category] do
						maps[v.ref][#maps[v.ref] + 1] = n
					end
				end
			end
		end
		
		local bbcode,discussion,highperm = {},{0,{}},{0,{}}
		-- Categories
		for i = 1,#categories do
			local this = categories[i]
			
			if maps[this.category] then
				if ui.checkBoxData[7].isChecked or ui.checkBoxData[10 + i].isChecked then
					local canInsertInto = not ui.checkBoxData[8].isChecked and true or not this.ref
					
					local isHighPerm = this.category > 2 and this.category < 10
					
					local mapCodes = getMapsFromCategory(maps[this.category],isHighPerm)
					local clearCodes = getMapsFromCategory(maps[this.category],isHighPerm,true,true)
					
					if canInsertInto then
						bbcode[#bbcode + 1] = insertTab:format(
							this.color,
							ui.checkBoxData[3].isChecked and string.format("[b]%03d[/b] ",#maps[this.category]) or "", -- Amount
							ui.checkBoxData[1].isChecked and string.format("[img]http://i.imgur.com/%s.png[/img]",this.image) or "", -- Icon
							ui.checkBoxData[2].isChecked and (this.name[languages[1]] or this.name) or "", -- Name
							mapCodes:gsub("!","") -- Map Codes
						)
						
						if ui.checkBoxData[9].isChecked and isHighPerm then
							highperm[1] = highperm[1] + #maps[this.category] - (#maps[this.category] - (maps[this.category]() or #maps[this.category])) -- Total maps
							highperm[2][#highperm[2] + 1] = clearCodes:gsub("!"," - P" .. this.category) -- Insert into the highperm list
						end
					end
					
					if ui.checkBoxData[10].isChecked and this.ref then
						discussion[1] = discussion[1] + #maps[this.category] - (#maps[this.category] - (maps[this.category]() or #maps[this.category])) -- Total maps
						discussion[2][#discussion[2] + 1] = clearCodes:gsub("!",string.format(" - P%s (P%s)",this.category,this.ref)) -- Insert into the discussion list
					end
				end
			end
		end
		
		local result = table.concat(bbcode,"\n") .. createSingularTab(highperm,insertTab,"High Perm") .. createSingularTab(discussion,insertTab,"Maps in test")
		
		if p[2] == "byte" then
			local out = {}
			result:gsub(".",function(v)
				out[#out + 1] = v:byte()
			end)
			print(tableconcat(out,"."))
		else
			print(result)
		end
		
		maps = getMaps(info)
		return
	end
end

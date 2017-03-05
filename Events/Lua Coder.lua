--[[ Title ]]--
title = {
	[1] = "titre_lua_coder",
}

--[[ Main Vars ]]--
currentTime,timeLeft = 0,0

--[[ Main Tables ]]--
system.decorations = {
	[0] = {60,30},
	[1] = {140,205},
	[2] = {40,35},
	[3] = {20,25},
	[4] = {55,55},
	[5] = {65,40},
	[6] = {110,155},
	[7]	= {85,70},
	[8] = {55,30},
	[9] = {35,20},
	[10] = {25,25},
	[11] = {20,30},
	[12] = {70,25},
	[13] = {55,55},
	[14] = {300,200},
	[15] = {180,65},
	[16] = {40,65},
	[17] = {125,40},
	[18] = {50,50},
	[19] = {80,60},
	[20] = {60,70},
	[21] = {50,40},
	[22] = {75,140},
	[23] = {145,120},
	[24] = {140,75},
	[25] = {60,65},
	[26] = {70,70},
	[27] = {55,160},
	[28] = {70,115},
	[29] = {115,135},
	[30] = {100,90},
	[31] = {30,35},
	[32] = {45,45},
	[33] = {50,50},
	[34] = {800,400},
	[35] = {260,70},
	[36] = {275,75},
	[37] = {35,95},
	[38] = {115,160},
	[39] = {145,120},
	[40] = {75,145},
	[41] = {55,80},
	[42] = {145,210},
	[43] = {145,80},
	[44] = {40,120},
	[45] = {800,120},
	[46] = {40,115},
	[47] = {160,75},
	[48] = {75,60},
	[49] = {190,135},
	[50] = {85,85},
	[51] = {150,215},
	[52] = {80,30},
	[53] = {90,85},
	[54] = {40,60},
	[55] = {20,40},
	[56] = {255,70},
	[57] = {140,225},
	[58] = {85,40},
	[59] = {95,90},
	[60] = {40,40},
	[61] = {120,50},
	[62] = {50,50},
	[63] = {140,70},
	[64] = {140,65},
	[65] = {60,55},
	[66] = {135,155},
	[67] = {60,70},
	[68] = {65,50},
	[69] = {70,80},
	[70] = {50,30},
	[71] = {20,50},
	[72] = {50,55},
	[73] = {25,50},
	[74] = {70,110},
	[75] = {50,90},
	[76] = {115,85},
	[77] = {50,60},
	[78] = {65,45},
	[79] = {60,85},
	[80] = {80,55},
	[81] = {35,20},
	[82] = {50,30},
	[83] = {100,30},
	[84] = {215,50},
	[85] = {55,50},
	[86] = {105,90},
	[87] = {55,65},
	[88] = {70,50},
	[89] = {500,285},
	[90] = {220,130},
	[91] = {30,50},
	[92] = {115,90},
	[93] = {85,70},
	[94] = {115,170},
	[95] = {135,100},
	[96] = {125,90},
	[97] = {60,80},
	[98] = {85,125},
	[99] = {75,90},
	[100] = {35,45},
	[101] = {25,30},
	[102] = {115,110},
	[103] = {65,65},
	[104] = {175,40},
	[105] = {50,65},
	[106] = {35,30},
	[107] = {50,60},
	[108] = {155,48},
	[109] = {125,75},
	[110] = {60,95},
	[111] = {55,75},
	[112] = {95,115},
	[113] = {35,45},
	[114] = {85,130},
	[115] = {60,65},
	[116] = {65,80},
	[117] = {800,400},
	[118] = {55,65},
	[119] = {50,55},
	[120] = {105,100},
	[121] = {55,50},
	[122] = {60,65},
	[123] = {80,50},
	[124] = {55,60},
	[125] = {85,80},
	[126] = {40,25},
	[127] = {35,50},
	[128] = {60,60},
	[129] = {60,60},
	[130] = {35,50},
	[131] = {40,35},
}

system.fragments = {
	[1] = {
		[1] = {"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""},
		[2] = {"<VI>if","<VI>not","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].hasCheese","<VI>then"},
		[3] = {"<N>tfm.exec.giveCheese","<N2>(<CE>\"%s\"<N2>)"},
		[4] = {"<N>tfm.exec.playerVictory","<N2>(<CE>\"%s\"<N2>)"},
		[5] = "<VI>end",
		[6] = {"<VI>function","<N>eventPlayerWon","<N2>(<N>playerName<N2>)"},
		[7] = {"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},
		[8] = "<VI>end"
	},
	[2] = {
		[1] = {"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""},
		[2] = {"<VI>if","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].hasCheese","<VI>then"},
		[3] = {"<N>tfm.exec.killPlayer","<N2>(<CE>\"%s\"<N2>)"},
		[4] = "<VI>else",
		[5] = {"<N>tfm.exec.giveCheese","<N2>(<CE>\"%s\"<N2>)"},
		[6] = "<VI>end",
		[7] = {"<VI>function","<N>eventPlayerGetCheese","<N2>(<N>playerName<N2>)"},
		[8] = {"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},
		[9] = "<VI>end"
	},
	[3] = {
		[1] = {"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""},
		[2] = {"<VI>function","<N>eventPlayerVampire","<N2>(<N>playerName<N2>)"},
		[3] = {"<N>tfm.exec.respawnPlayer","<N2>(<CE>\"%s\"<N2>)"},
		[4] = "<VI>end",
		[5] = {"<VI>if","<VI>not","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].isVampire","<VI>then"},
		[6] = {"<N>tfm.exec.setVampirePlayer","<N2>(<CE>\"%s\"<N2>)"},
		[7] = "<VI>end",
		[8] = {"<VI>function","<N>eventPlayerRespawn","<N2>(<N>playerName<N2>)"},
		[9] = {"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},
		[10] = "<VI>end"
	},
}
system.fragmentLaunched = {
	[1] = {
		[1] = {{"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""}},
		[2] = {{"<VI>if","<VI>not","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].hasCheese","<VI>then"},{"<N>tfm.exec.giveCheese","<N2>(<CE>\"%s\"<N2>)"},{"<N>tfm.exec.playerVictory","<N2>(<CE>\"%s\"<N2>)"},"<VI>end"},
		[3] = {{"<VI>function","<N>eventPlayerWon","<N2>(<N>playerName<N2>)"},{"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},"<VI>end"},
	},
	[2] = {
		[1] = {{"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""}},
		[2] = {{"<VI>if","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].hasCheese","<VI>then"},{"<N>tfm.exec.killPlayer","<N2>(<CE>\"%s\"<N2>)"},"<VI>else",{"<N>tfm.exec.giveCheese","<N2>(<CE>\"%s\"<N2>)"},"<VI>end"},
		[3] = {{"<VI>function","<N>eventPlayerGetCheese","<N2>(<N>playerName<N2>)"},{"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},"<VI>end"},
	},
	[3] = {
		[1] = {{"<VI>local","<N>event_title","<N2>=","<CE>\"Lua Coder\""}},
		[2] = {{"<VI>function","<N>eventPlayerVampire","<N2>(<N>playerName<N2>)"},{"<N>tfm.exec.respawnPlayer","<N2>(<CE>\"%s\"<N2>)"},"<VI>end"},
		[3] = {{"<VI>if","<VI>not","<N>tfm.get.room.playerList[<CE>\"%s\"<N>].isVampire","<VI>then"},{"<N>tfm.exec.setVampirePlayer","<N2>(<CE>\"%s\"<N2>)"},"<VI>end"},
		[4] = {{"<VI>function","<N>eventPlayerRespawn","<N2>(<N>playerName<N2>)"},{"<N>system.giveEventGift","<N2>(<N>playerName<N2>,<N>event_title<N2>)"},"<VI>end"},
	},
}
system.fragmentFunction = {
	[1] = function(n)
		if not tfm.get.room.playerList[n].hasCheese then
			tfm.exec.giveCheese(n)
			tfm.exec.playerVictory(n)
		end
	end,
	[2] = function(n)
		if tfm.get.room.playerList[n].hasCheese then
			tfm.exec.killPlayer(n)
		else
			tfm.exec.giveCheese(n)
		end
	end,
	[3] = function(n)
		if not tfm.get.room.playerList[n].isVampire then
			tfm.exec.setVampirePlayer(n)
		end
		tfm.exec.killPlayer(n)
		tfm.exec.respawnPlayer(n)
	end
}

--[[ Main Functions ]]--
	--[[ Data ]]--
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

	--[[ Library ]]--
os.normalizedTime = function(time)
	return math.floor(time) + ((time - math.floor(time)) >= .5 and .5 or 0)
end
table.concat = function(list,sep,f)
	local txt = ""
	sep = sep or ""
	for k,v in next,list do
		txt = txt .. (f and f(k,v) or v) .. sep
	end
	return txt:sub(1,-1-#sep)
end
table.random=function(t)
	return (type(t)=="table" and t[math.random(#t)] or math.random())
end
table.turnTable = function(x)
	return (type(x)=="table" and x or {x})
end

	--[[ System ]]--
system.descompileFragments = function(n)
	local fragments = {}
	for k,v in next,system.fragments[info[n].db.luaCoderFragment] do
		for i,j in next,table.turnTable(v) do
			fragments[#fragments + 1] = j
		end
	end
	return fragments
end
system.displayRunningCode = function(n)
	local subFragmentedCode = system.fragmentPerRow(n)
	for k,v in next,subFragmentedCode do
		v = v:gsub("<%s>","")
	end
	info[n].compiler.code = {table.concat(subFragmentedCode,"\n"),false}
	
	local list = "<BL>"
	for line = 1,#subFragmentedCode do
		list = list .. line .. "\n"
	end
	info[n].compiler.codeLines = line
	
	system.triggerCompiler(n,true)
end
system.fragmentPerRow = function(n)
	local subTable = {}
	for k,v in next,info[n].db.luaCoderCurrentFragments do
		subTable[k] = table.concat(table.turnTable(v)," ")
	end
	return subTable
end	
system.messFragments = function(n)
	local mess = function(t)
		local messedTable = {}
		for i = 1,#t do
			table.insert(t,math.random(#t),t[i])
		end
	end
	info[n].db.luaCoderCurrentFragments = {}
	info[n].db.luaCoderCurrentFragments = mess(system.fragments[info[n].db.luaCoderFragment])

	for k,v in next,info[n].db.luaCoderCurrentFragments do
		if type(v) == "table" then
			v = mess(v)
		end
	end
	
	system.savePlayerData(n,serialization(info[n].db))
end
system.missedFragments = function(n,fragments)
	for k,v in next,fragments do
		local found = false
		for i,j in next,info[n].db.luaCoderCurrentFragments do
			if v == j then
				found = true
				break
			end
		end
		if not found then
			info[n].missedFragments[#info[n].missedFragments + 1] = v
		end
	end
end
system.resetPlayer = function(n)
	local newCodeFragments
	repeat
		newCodeFragments = math.random(#system.fragments)
	until newCodeFragments ~= info[n].db.luaCoderFragment
	info[n].db.luaCoderFragment = newCodeFragments
	
	info[n].db.luaCoderCurrentFragments = {}
	info[n].db.luaCoderTriggerCompiler = false
	
	info[n].notThisRound = true
	
	system.savePlayerData(n,serialization(info[n].db))
end
system.showCancelCallback = function(n)
	if #info[n].compiler.cancel > 0 then
		local href = "<font size='15'><a href='event:compiler.cancel.%s'>■</a></font>"
		local formats = {
			[1] = "Word selectioned\n\t<N> - %s -</N>",
			[2] = "Line selectioned <N>[%s]</N>"
		}

		local text = table.concat(info[n].compiler.cancel,"\n",function(k,v)
			local id = v[1]
			local callback = (id == 1 and "word" or "line")
			return string.format(href .. " " .. formats[id],callback,(#v[2] > 12 and v[2]:sub(1,12).."<BV>...</BV>" or v[2]))
		end)
		
		ui.addTextArea(7,"<R><font size='13'>Cancel\n<font size='11'>\n" .. text,n,10,50,154,130,0x272834,1,1,true)
	end
end
system.triggerCompiler = function(n,done)
	if info[n].compiler.code[2] then
		system.updateCompilerCode(n)
	end
	
	ui.addTextArea(0,"",n,180,50,440,322,0x272834,1,1,true)
	ui.addTextArea(1,info[n].compiler.codeLines,n,184,55,25,280,1,1,0,true)
	ui.addTextArea(2,"",n,214,349,400,15,0x5F8093,0x5F8093,1,true)
	ui.addTextArea(3,"",n,215,351,400,15,0x000000,0x000000,1,true)
	ui.addTextArea(4,"",n,215,350,400,15,0x3C5064,0x3C5064,1,true)
	ui.addTextArea(5,"<p align='center'>" .. (done and "<a href='event:compiler.close'>Close" or "<a href='event:compiler.submit'>Launch!"),n,374,350,100,20,0x324650,1,0,true)
	ui.addTextArea(6,info[n].compiler.code[1],n,215,55,400,280,-1,0x425b68,1,true)
end
system.updateCompilerCode = function(n)
	info[n].compiler.code[2] = false
	
	local code = ""
	for k,v in next,info[n].db.luaCoderCurrentFragments do
		code = code .. table.concat(table.turnTable(v)," ",function(i,j)
			return string.format("<a href='event:compiler.fragment.%s.%s'>%s</a>",k,i,j:format(n))
		end) .. "\n"
	end
	
	info[n].compiler.code[1] = code
end
system.verifyTrigger = function(n)
	if #info[n].missedFragments == 0 then
		if not info[n].db.luaCoderTriggerCompiler then
			info[n].db.luaCoderTriggerCompiler = true
			system.savePlayerData(n,serialization(info[n].db))
		end
	end
	
	if info[n].db.luaCoderTriggerCompiler then
		system.messFragments(n)
		
		local list = "<BL>"
		for line = 1,#info[n].db.luaCoderCurrentFragments + 12 do
			if line > #info[n].db.luaCoderCurrentFragments then
				list = list .. line .. "\n"
			else
				list = list .. string.format("<a href='event:compiler.line.%s'>%s</a>\n",line,line)
			end
		end
		info[n].compiler.codeLines = list
		
		system.triggerCompiler(n)
	end
	
	return info[n].db.luaCoderTriggerCompiler
end

--[[ Collect decorations + playerData ]]--
eventPlayerDataLoading = function(n,tentative)
	if tentative < 4 then
		local loadingData = system.loadPlayerData(n)
		if loadingData then
			tfm.exec.chatMessage("<G>Wait! Your data is loading...",n)
		else
			eventPlayerDataLoading(n,tentative + 1)
		end
	else
		tfm.exec.killPlayer(n)
		tfm.exec.chatMessage("<G>Impossible to load your data :( Try again in the next event.",n)
	end
end
eventPlayerDataLoaded = function(n,data)
	if data ~= "" and data:find(":luaCoder") then
		info[n].db = serialization(data)
	else
		system.savePlayerData(n,serialization(info[n].db))
	end
	
	local descompiled = system.descompileFragments(n)
	system.missedFragments(n,descompiled)
	
	local done = system.verifyTrigger(n)
	if not done then
		tfm.exec.chatMessage("<CE>[•] Fragments : " .. (#descompiled - #info[n].missedFragments) .. "/" .. #descompiled,n)
		system.bindKeyboard(n,3,true,true)
	end
	
	info[n].dataLoaded = true
end

info = {}
system.mapDecorations = {}
eventNewGame = function()
	system.mapDecorations = {}
	local xml = tfm.get.room.xmlMapInfo.xml:match("<D>(.*)</D>")
	if xml then
		xml:gsub("<P (.-)/>",function(decoration)
			local foo,isForeground = decoration:match("P=([\"'])(%d+),%d+%1")
			if isForeground == "1" then
				local info = {}
				for k,v in next,{"X","T","Y"} do
					local foo,value = decoration:match(v .. "=([\"'])(%d+)%1")
					info[v] = tonumber(value)
				end
				system.mapDecorations[#system.mapDecorations + 1] = {
					available = true,
					X = info.X,
					Y = info.Y,
					axis = system.decorations[info.T]
				}
				system.mapDecorations[#system.mapDecorations].range = system.mapDecorations[#system.mapDecorations].axis[1]/2
			end
		end)
	end
	
	for k,v in next,tfm.get.room.playerList do
		info[k] = {
			piece = {
				duck = table.random({9,8,7,1,7,7,9,8,9,7,5}) * 2,
				timer = 0,
			},
			missedFragments = {},
			db = {
				luaCoderFragment = math.random(#system.fragments),
				luaCoderCurrentFragments = {},
				luaCoderTriggerCompiler = false,
				luaCoder = false,
			},
			compiler = {
				code = {"",true}, -- Code, can update
				codeLines = "",
				selected = {},
				newLine = 0,
				cancel = {},
			},
			dataLoaded = false,
			notThisRound = false,
		}
		eventPlayerDataLoading(n,1)
	end

	system.xml = ""
end

--[[ Keyboard ]]--
eventKeyboard = function(n,k,d,x,y)
	if system.xml == "" then
		if info[n].dataLoaded and currentTime > 3 and timeLeft > 5 then
			if k == 3 then
				if not info[n].db.luaCoderTriggerCompiler and not info[n].notThisRound then
					if os.time() > info[n].piece.timer then
						info[n].piece.timer = os.time() + 700
						info[n].piece.duck = table.random({9,8,7,1,7,7,9,8,9,7,5}) * 2
					end
					
					for k,v in next,system.mapDecorations do
						if x > (v.X - v.range - 10) and x < (v.X + range + 10) then
							if y < (v.Y + 10) and y > (v.Y - v.range - 10) then
								if v.available then
									info[n].piece.timer = os.time() + 700
									info[n].piece.duck = info[n].piece.duck - 1
									
									if info[n].piece.duck == 0 then
										info[n].piece = {
											duck = table.random({9,8,7,1,7,7,9,8,9,7,5}) * 2,
											timer = 0
										}
										
										if math.random(15) % 5 == 0 then
											local fragmentIndex = math.random(#info[n].missedFragments)
											local newFragment = info[n].missedFragments[fragmentIndex]
											table.remove(info[n].missedFragments,fragmentIndex)
											local missedFragments = #info[n].missedFragments

											info[n].db.luaCoderCurrentFragments[#info[n].db.luaCoderCurrentFragments + 1] = newFragment
											tfm.exec.chatMessage("<CE>[•] You found something here!",n)

											system.verifyTrigger(n)
											v.available = false
											
											system.savePlayerData(n,serialization(info[n].db))
										end
									end
								else
									tfm.exec.chatMessage("<R>[•] Someone has found something here. Try somewhere else.",n)
								end
								break
							end
						end
					end
				end
			end
		end
	end
end

--[[ Callbacks ]]--
eventTextAreaCallback = function(i,n,c)
	local p = {}
	for word in c:gmatch("[^%.]+") do
		p[#p + 1] = word
	end
	if p[1] == "compiler" then
		if p[2] == "fragment" then
			p[3] = tonumber(p[3])
			p[4] = tonumber(p[4])
			local row = info[n].db.luaCoderCurrentFragments[p[3]]
			local cel = row[p[4]] or row
			
			if #info[n].compiler.selected > 0 then -- Second selection
				local lastRow = info[n].db.luaCoderCurrentFragments[info[n].compiler.selected[1]]
				local lastCel = lastRow[info[n].compiler.selected[2]] or lastRow
			
				if cel and lastCel then
					if info[n].compiler.selected[1] == p[3] then
						if info[n].compiler.selected[2] ~= p[4] then
							cel,lastCel = lastCel,cel

							info[n].compiler.selected = {}

							info[n].compiler.code[2] = true
							system.triggerCompiler(n)

							ui.removeTextArea(7,n)
							
							system.savePlayerData(n,serialization(info[n].db))
						else
							tfm.exec.chatMessage("<R>[•] You can't select the same word!",n)
						end
					else
						tfm.exec.chatMessage("<R>[•] You can't select a word from a different line!",n)
					end
				end
			else -- First selection
				info[n].compiler.selected = {p[3],p[4]}
				
				info[n].compiler.cancel[#info[n].compiler.cancel + 1] = {1,cel}
				system.showCancelCallback(n)
			end
		elseif p[2] == "line" then
			p[3] = tonumber(p[3])
			
			if info[n].compiler.newLine == 0 then -- First selection
				info[n].compiler.newLine = p[3]

				info[n].compiler.cancel[#info[n].compiler.cancel + 1] = {2,info[n].compiler.newLine}
				system.showCancelCallback(n)
			else -- Second selection
				if p[3] ~= info[n].compiler.newLine then
					info[n].db.luaCoderCurrentFragments[p[3]],info[n].db.luaCoderCurrentFragments[info[n].compiler.newLine] = info[n].db.luaCoderCurrentFragments[info[n].compiler.newLine],info[n].db.luaCoderCurrentFragments[p[3]]
					info[n].compiler.newLine = 0

					info[n].compiler.code[2] = true
					system.triggerCompiler(n)

					ui.removeTextArea(7,n)
					
					system.savePlayerData(n,serialization(info[n].db))
				else
					tfm.exec.chatMessage("<R>[•] You can't select the same line!",n)
				end
			end
		elseif p[2] == "cancel" then
			if p[3] == "word" then
				info[n].compiler.selected = {}
				ui.removeTextArea(7,n)
			elseif p[3] == "line" then
				info[n].compiler.newLine = 0
				ui.removeTextArea(7,n)
			end
		elseif p[2] == "close" then
			for i = 0,7 do
				ui.removeTextArea(i,n)
			end
		elseif p[2] == "submit" then
			local Error = false
			local subFragmentedCode = system.fragmentPerRow(n)
			
			for k,v in next,system.fragmentLaunched[info[n].db.luaCoderFragment] do
				local codeBlock,id = {},0
				
				for i,j in next,v do
					codeBlock[#codeBlock + 1] = table.concat(table.turnTable(j)," ")
				end
				
				for i,j in next,subFragmentedCode do
					if j == codeBlock[1] then
						id = i
						break
					end
				end
				
				for i = 1,#codeBlock do
					if codeBlock[i] ~= subFragmentedCode[id + (i - 1)] then
						Error = true
						break
					end
				end
			end
			
			if not Error then
				system.fragmentFunction[info[n].db.luaCoderFragment]()
				
				tfm.exec.chatMessage("<CE>[•] Your code compiles! Your mouse programmed for the first time!",n)
				tfm.exec.chatMessage("<G>[^_^] <PT>Event developed by Bolodefchoco",n)
				
				if not info[n].db.luaCoder then
					info[n].db.luaCoder = true
					system.giveEventGift(n,title[1])
				end
				
				ui.removeTextArea(7,n)
				
				system.displayRunningCode(n)
				system.resetPlayer(n)
			end
		end
	end
end

--[[ Time ]]--
eventLoop = function(currentTime,timeLeft)
	_G.currentTime,_G.timeLeft = os.normalizedTime(currentTime/1000),os.normalizedTime(timeLeft/1000)
end

--[[ Execute ]]--
eventPlayerLeft = function(n)
	system.savePlayerData(n,serialization(info[n].db))
end

for i,f in next,{"AutoShaman","AfkDeath","MortCommand","AutoTimeLeft","PhysicalConsumables","DebugCommand"} do
	tfm.exec["disable"..f]()
end

system.xml = '<C><P L="2500" DS="m;55,985,175,985,295,985,415,985,535,985" H="1000" /><Z><S><S P="0,0,0.3,0.2,0,0,0,0" L="710" o="6a7596" X="355" c="4" Y="800" T="12" H="400" /><S P="0,0,0.3,0.2,0,0,0,0" L="20" o="1d1d1d" H="400" Y="800" T="12" X="10" /><S P="0,0,0.3,0.2,0,0,0,0" L="700" o="1d1d1d" X="350" Y="610" T="12" H="20" /><S L="700" o="1d1d1d" X="360" H="20" Y="990" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="20" o="1d1d1d" X="700" Y="750" T="12" H="300" /></S><D><P C="8a311b" Y="985" T="19" P="1,0" X="55" /><DS Y="945" X="55" /><P C="8a311b" Y="985" T="19" X="175" P="1,0" /><P C="8a311b" Y="985" T="19" P="1,0" X="295" /><P C="8a311b" Y="985" T="19" X="415" P="1,0" /><P C="8a311b" Y="985" T="19" P="1,0" X="535" /></D><O /></Z></C>'
tfm.exec.newGame(system.xml)

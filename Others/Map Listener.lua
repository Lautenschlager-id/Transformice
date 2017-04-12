maps = [[

Insert your lsmap here

]]

admin = maps:match("(.*)'s maps:")

P = {}

for code,cat in maps:gmatch("@(%d+) .-%% %- P(%d+)\n") do
	cat = tonumber(cat)
	if not P[cat] then
		P[cat] = {}
	end

	P[cat][#P[cat] + 1] = code
end
for k,v in next,P do
	table.sort(v)
end

eventChatCommand = function(n,c)
	if n == admin then
		if c == "count" then
			local text = "<BV>Total : <V>%s\n"
			local total = 0
			local high = 0
			for k = 1,41 do
				if P[k] then
					local v = P[k]
					text = text .. "<BV>P" .. k .. " : <V>" .. #v .. "\n"
					total = total + #v
					if k > 2 and k < 10 then
						high = high + #v
					end
				end
			end
			text = text:format(total) .. (high>0 and "<BV>High perm : <V>"..high or "")
			print(text)
			ui.addTextArea(0,text,n)
		end
		if c:sub(1,4) == "list" then
			for k = 1,41 do
				if P[k] and k ~= 22 then
					local v = P[k]
					print("<BV>P"..k.." : <V>@" .. table.concat(v,(c:sub(5)~="" and c:sub(5) or ", ") .. "@"))
				end
			end
		end
		if c:sub(1,6) == "bbcode" then
			local cat = {
				[1] = {"qUHhRxy","Permanent","BABD2F"},
				[3] = {"XmYA7E8","Bootcamp","30BA76"},
				[4] = {"3EbPie0","Shaman","98E2EB"},
				[5] = {"TlH3Mdp","Art","CB546B"},
				[6] = {"l587DC9","Mechanism","8FA8BB"},
				[7] = {"5xzLi58","No Shaman","C2C2DA"},
				[8] = {"xIPNzGC","Dual [color=#FEB1FC]Shaman[/color]","98E2EB"},
				[9] = {"cnz08X2","Miscellaneous","EDCC8D"},
				[10] = {"UytFMU1","Survivor","606090"},
				[11] = {"VDsuQTx","Vampire","EB1D51"},
				[13] = {"3ZMej","Bootcamp","92CF91"},
				[17] = {"ouplMc9","Rac[color=#CB546B]ing[/color]","C2C2DA"},
				[18] = {"8bEFPBE","Defilante","6C77C1"},
				[19] = {"exheHJR","Music","7A8E9E"},
				[24] = {"UytFMU1","Dual [color=#FEB1FC]Shaman[/color] [color=#606090]Survivor[/color]","98E2EB"},
				[41] = {"3ZMej","Module","009D9D"},
			}
			local spoil = "[spoiler=[color=#%s]&lt;%s> %s[/color] [img]http://i.imgur.com/%s.png[/img]][size=13]@%s[/size][/spoiler]"
			for k = 1,41 do
				if P[k] then
					local v = P[k]
					if c:sub(8) == "" or (c:sub(8) == "high" and k > 2 and k < 10) then
						if cat[k] then
							local category = cat[k]
							print(spoil:format(category[3],#v,category[2],category[1],table.concat(v,"\n@")))
						end
					end
				end
			end
		end
	end
end

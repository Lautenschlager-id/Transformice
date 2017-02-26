roundsForNewGame=5
T={
	en = {
		imp = "Tie",
		won = "Won",
		help = "<J>Press Space on the chair to be a player (PvP only)\n\nEach map contains 9 seconds (after 3 initial seconds (that you can't make your choice yet)) to choose an item and play it\n\n<R>How to choose/play items?\n\n<J>You must press the key according to the object you want!\n<VP><B>B</B> <J>- ROCK\n<VP><B>N</B> <J>- PAPER\n<VP><B>M</B> <J>- SCISSOR (actually Pufferfish)\n\nThe yellow score is the \"tie\"",
	};
	br = {
		imp = "Empate",
		won = "Venceu",
		help = "<J>Pressione Espaço sobre a cadeira para ser um jogador (apenas dois jogadores)\n\nCada mapa tem 9 segundos (depois dos três segundos de início (que você não pode fazer sua escolha ainda)) para escolher um item e jogá-lo\n\n<R>Como escolher/jogar itens?\n\n<J>Você deve pressionar a tecla de acordo com a sua escolha!\n<VP><B>B</B> <J>- PEDRA\n<VP><B>N</B> <J>- PAPEL\n<VP><B>M</B> <J>- TESOURA (na verdade Baiacu)\n\nA pontuação amarela é o \"Empate\"",
	};
}
tr=function(t) return (T[tfm.get.room.community] and T[tfm.get.room.community][t] or T.en[t]) end
eventNewGame=function()
	ui.addTextArea(6,tr('help'),n,530,30,250,nil,-1,0xB07213,1,true)
end
for _,f in next,{"AutoShaman","AutoNewGame","AfkDeath"} do tfm.exec["disable"..f]() end
objects={
	[1] = 85,
	[2] = 95,
	[3] = 65
}
map = '<C><P /><Z><S><S L="30" o="2d3232" H="400" X="15" Y="200" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="800" o="2d3232" H="70" X="400" Y="410" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="30" o="2d3232" X="785" Y="210" T="12" H="400" /><S P="0,0,0.3,0.2,0,0,0,0" L="800"  X="400" Y="10" T="12" H="20" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="e3454d" H="66" Y="224" T="12" X="318" /><S L="10" o="e3454d" H="46" X="346" Y="196" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="e3454d" X="374" Y="224" T="12" H="66" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="e3454d" X="346" Y="252" T="12" H="46" /><S L="10" o="4577e3" X="482" H="66" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="10" o="4577e3" X="454" H="46" Y="252" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S L="10" o="4577e3" H="66" X="426" Y="224" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="4577e3" X="454" Y="196" T="12" H="46" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="45e374" X="372" Y="105" T="12" H="66" /><S L="10" o="45e374" X="400" H="46" Y="77" T="12" P="0,0,0.3,0.2,-90,0,0,0" /><S P="0,0,0.3,0.2,0,0,0,0" L="10" o="45e374" H="66" Y="105" T="12" X="428" /><S P="0,0,0.3,0.2,-90,0,0,0" L="10" o="45e374" H="46" Y="133" T="12" X="400" /><S L="74"  H="152" X="137" Y="300" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="73"  H="10" X="122" Y="150" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="117"  H="65" X="705" Y="340" T="12" P="0,0,0.3,0.2,0,0,0,0" /><S L="14"  H="10" X="677" Y="289" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10"  H="10" X="710" Y="285" T="13" P="0,0,0.3,0.2,0,0,0,0" /><S L="10"  H="18" X="655" Y="301" T="12" P="0,0,0.3,0.2,0,0,0,0" /></S><D><P C="1c2b2b" Y="0" T="34" P="0,0" X="0" /><P X="415" Y="334" T="113" P="0,0" /><P C="cdc5bc,564740" Y="375" T="105" P="0,1" X="285" /><P C="cdc5bc,564740" Y="375" T="105" P="0,0" X="515" /><P C="564740" Y="376" T="104" P="0,0" X="400" /><DS Y="320" X="400" /><P C="413632" Y="379" T="95" X="707" P="0,0" /><P P="0,0" Y="174" T="112" X="124" /><P C="4577e3,babd2f,45e374,e3454d" Y="306" T="93" X="684" P="0,0" /><P C="413632,a3468e" Y="382" T="94" X="132" P="0,0" /><P X="400" Y="336" T="21" P="0,0" /><P P="0,1" Y="336" T="21" X="400" /><P P="0,0" Y="335" T="31" X="475" /><P P="0,1" Y="335" T="31" X="325" /></D><O /></Z></C>'
systemG,mice = {},{}
round,temp = 0,0
systemG.newRound=function()
	ui.removeTextArea(0,nil)
	start,temp,timer = false,0,9.5
	if round == 0 then
		round = round + 1
		mice={}
		chair1,chair2 = "",""
		imp = 0
		for n in next,tfm.get.room.playerList do mice[n] = {
			points=0,currentItem=nil,fakeId=-1}
		end
		for i = 1,2 do ui.removeTextArea(i,nil) end
	else
		round = round + 1
		for i = 1,2 do local who=_G["chair"..i];mice[who].currentItem,mice[who].fakeId=nil,-1;ui.updateTextArea(i,"<p align='center'>"..who.."\n"..("%02d"):format(mice[who].points or 0),nil) end
	end
	ui.addTextArea(3,"<p align='center'><font size='35'><J>"..math.floor(timer),nil,380,85,40,40,1,1,0,true)
	for n in next,tfm.get.room.playerList do for _,k in next,{66,78,77,32} do
		system.bindKeyboard(n,k,true,true) end
	end
	tfm.exec.newGame(map)
	ui.setMapName("<PT>#Jokenpô   <G>|   <N>Round : <V>"..round.."<")
	ui.addTextArea(5,"<p align='center'><font size='25'><J><B>X</B><font size='13'>\n"..("%02d"):format(imp or 0),nil,380,207,40,nil,1,1,0,true)
end
eventKeyboard=function(n,k,d,x,y)
	if k == 32 then
		if y<340 then if x>269 and x<306 then if chair1=="" then
			chair1=n;system.bindKeyboard(n,32,true,false)
			ui.addTextArea(1,"<p align='center'>"..n.."\n"..("%02d"):format(mice[n].points or 0),nil,270,165,105,nil,1,1,0,true)
			tfm.exec.playEmote(chair1,8)
		end elseif x>494 and x<536 then if chair2=="" then
			chair2=n;system.bindKeyboard(n,32,true,false)
			ui.addTextArea(2,"<p align='center'>"..n.."\n"..("%02d"):format(mice[n].points or 0),nil,425,165,105,nil,1,1,0,true)
			tfm.exec.playEmote(chair1,8)
		end end end
	else if mice[n] and mice[n].currentItem==nil and (chair1==n or chair2==n) and start then
		k=(k==66 and 1 or k==78 and 2 or k==77 and 3)
		mice[n].currentItem=objects[k];mice[n].fakeId=k
		table.foreach({66,78,77},function(_,k) system.bindKeyboard(n,k,true,false) end)
		end
	end
end
eWin,eLost,eBoth=function(a) local b=(a==1 and 2 or 1);tfm.exec.playEmote(_G["chair"..tostring(a)],24);tfm.exec.playEmote(_G["chair"..tostring(b)],5) end,function(a) local b=(a==1 and 2 or 1);tfm.exec.playEmote(_G["chair"..tostring(a)],17);tfm.exec.playEmote(_G["chair"..tostring(b)],2) end,function() tfm.exec.playEmote(chair1,4);tfm.exec.playEmote(chair2,4) end
eventLoop=function(time)
	if chair1~="" and chair2~="" then if time/1000>3 then start=true end end
	if math.floor(time/1000)==4 then tfm.exec.movePlayer(chair1,285,330);tfm.exec.movePlayer(chair2,515,330);tfm.exec.playEmote(chair1,8);tfm.exec.playEmote(chair2,8) end
	if temp~=0 then if os.time()>temp then systemG.newRound() end end
	if start then
		if timer<10 then
			timer = (timer>0 and timer-.5 or 0)
			ui.updateTextArea(3,"<p align='center'><font size='35'><J>"..math.floor(timer),nil)
			if timer <= 0 then timer = 11
				for i = 1,2 do
					local who = _G["chair"..i]
					if mice[who].currentItem then
						local xP = {345,450}
						tfm.exec.addShamanObject(mice[who].currentItem,xP[i],200)
					end
				end
				local i1,i2 = mice[chair1].fakeId,mice[chair2].fakeId
				if i1==i2 then imp=imp+1;eBoth() else if i1==-1 then mice[chair2].points=mice[chair2].points+1;eLost(2) end;if i2==-1 then mice[chair1].points=mice[chair1].points+1;eLost(1) end end;if i1==1 then if i2==2 then mice[chair2].points=mice[chair2].points+1;eWin(2) elseif i2==3 then mice[chair1].points=mice[chair1].points+1;eWin(1) end end;if i1==2 then if i2==1 then mice[chair1].points=mice[chair1].points+1;eWin(1) elseif i2==3 then mice[chair2].points=mice[chair2].points+1;eWin(2) end end;if i1==3 then if i2==1 then mice[chair2].points=mice[chair2].points+1;eWin(2) elseif i2==2 then mice[chair1].points=mice[chair1].points+1;eWin(1) end end
				ui.addTextArea(0,("<font size='50'><p align='center'><R>%d <PT>| <J>%d <PT>| <BV>%s"):format(mice[chair1].points,imp,mice[chair2].points),nil,5,270,795,nil,1,1,0,true)
				ui.addTextArea(5,"<p align='center'><font size='25'><J><B>X</B><font size='13'>\n"..("%02d"):format(imp or 0),nil,380,207,40,nil,1,1,0,true)
				for i = 1,2 do local who=_G["chair"..i];ui.updateTextArea(i,"<p align='center'>"..who.."\n"..("%02d"):format(mice[who].points or 0),nil) end
				if round<roundsForNewGame then temp=os.time()+5000 else round=0
					local points = {{chair1,mice[chair1].points},{chair2,mice[chair2].points}}
					table.sort(points,function(a,b) return a[2]>b[2] end)
					local winner = points[1][1].." ("..points[1][2]..") "
					if points[1][2] == points[2][2] then
						winner = tr('imp').."!"
					end
					ui.updateTextArea(0,"<V>".. winner .. (winner:find("!") and "" or " <J>"..tr('won').."!") .. "\n<font size='13'><R>"..mice[chair1].points.." <PT>|<J> "..imp.." | <BV>"..mice[chair2].points,nil)
					temp = os.time() + 10000
				end
			end
		end
	end
end
systemG.newRound()

adm="Bolodefchoco" --<-- Replace "Bolodefchoco" to "YourNickName"

tfm.exec.newGame("#1")
eventKeyboard=table.foreach({32,80},function(_,k) system.bindKeyboard(adm,k,true,true) end) or function(n,k)
	if k==80 then tfm.exec.newGame(tfm.get.room.currentMap) end
	if k==32 then local xml,current=tfm.get.room.xmlMapInfo.xml,0
		xml=xml:gsub("<","*"):gsub(",0,",",,")
		print("<R>"..tfm.get.room.currentMap.." XML:")
		while #xml>current do current=current+3001
			print("<R>"..xml:sub(current-3000,current):gsub("*","&lt;"))
		end
	end
end

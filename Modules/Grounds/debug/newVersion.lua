ui.new=function(a,b,c,d,e,f,g,h,i)d=d-f/2;e=e-g/2;a=a>0 and a*5 or a;if h then ui.addTextArea(a,"",c,5,5,790,400,1,1,.5,false)end;ui.addTextArea(a+1,"",c,d,e,f,g,0x0C191C,0x0C191C,1,false)ui.addTextArea(a+2,"",c,d+1,e+1,f-2,g-2,0x24474D,0x24474D,1,false)ui.addTextArea(a+3,"",c,d+2,e+2,f-4,g-4,0x183337,0x183337,1,false)ui.addTextArea(a+4,b,c,d+2,e+3,f-4,g-5,i or 0x122528,i or 0x122528,1,false)end

eventNewPlayer = function(n)
	ui.new(0,"<p align='center'><font size='15'><BV>#GROUNDS MODULE\n\n<p align='justify'><font size='12'>• #Grounds is currently not available due to a new version. Please, wait.\n\n• The module will launch automatically once the update is implemented!\n\n• All the submodes are also disabled.\n\n• Module developed by Bolodefchoco\n\n• Click anywhere to close this window.",n,400,200,300,220,true)
	system.bindMouse(n,true)
end

eventMouse = function(n)
	for i = 0,4 do
		ui.removeTextArea(i,n)
	end
end

tfm.exec.newGame('<C><P /><Z><S><S L="800" H="100" X="400" Y="400" T="6" P="0,0,0.3,0.2,0,0,0,0" /></S><D /><O /></Z></C>')

table.foreach(tfm.get.room.playerList,eventNewPlayer)

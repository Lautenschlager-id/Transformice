-- Stolen from Jordynl#Pokelua
combiner = {}

combiner.newVersion = false
combiner.newVersionString = "none"
dump = {
	[[--Creator: Bolodefchoco
--Made in: 06/02/2017
--Last update: ]] .. os.date("%d/%m/%Y")
}
workPath = debug.getinfo(1).short_src
modulePath = string.format("%s\\",workPath:match("([^,]+)\\debug\\combine.lua"))

fileTree = {
	"src:Module",
	"src:API",
	"src:Game Mode System",
	"src:Modes",
	"src:mode:Grounds",
	"src:mode:Jokenpo",
	"src:mode:Click",
	"src:mode:Presents",
	"src:mode:Chat",
	"src:mode:Cannonup",
	"src:mode:Xmas",
	"src:mode:Signal",
	"src:mode:Bootcamp+",
	"src:Non-official Events",
	"src:Event Functions",
	"src:Room Settings",
	"src:Initialize",
}

function file_exists(file)
	local f = io.open(file,"rb")
	if f then
		f:close()
	end
	return f ~= nil
end

function lines_from(file)
	if not file_exists(file) then
		return {}
	end
	lines = {}
	for line in io.lines(file) do 
		lines[#lines + 1] = line
	end
	return lines
end

combiner.run = function()
	if combiner.newVersion then
		fullPath = string.format("debug/%s.lua","newVersion")
		local lines = lines_from(fullPath)
		table.insert(dump,string.format("%s\n",string.gsub(lines,"&version&",combiner.version)))
	else 
		for _,file in next,fileTree do
			fullPath = string.format("%s%s.lua",modulePath,string.gsub(file,"%:","\\"))
			if file_exists(fullPath) == false then
				print(string.format("File '%s' does not exist.", fullPath))
			else
				local lines = lines_from(fullPath)
				table.insert(dump,string.format("--[[ %s ]]--\n%s",string.match(file,":(.-)$"),string.gsub(lines,"&version&",combiner.version)))
			end
		end
	end

	buildFile = string.format("debug\\builds\\Grounds_%s.lua",os.date("%d_%m_%y")) 
	file = io.open("module.lua","w")
	fileBuild = io.open(buildFile,"w")
	file:write(table.concat(dump,"\n\n"))
	fileBuild:write(table.concat(dump,"\n\n"))
	file.close()
	fileBuild.close()
end

combiner.debug = function()
	buildFile = string.format("debug\\builds\\Grounds_%s.lua", os.date("%d_%m_%y")) 
	file = io.open("module.lua","w")
	fileBuild = io.open(buildFile,"w")
	file:write(table.concat(dump,"\n\n"))
	fileBuild:write(table.concat(dump,"\n\n"))
	file.close()
	fileBuild.close()
end

return combiner

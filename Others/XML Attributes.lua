xml = {}
xml.parse = function(currentXml)
	currentXml = currentXml:match("<P (.-)/>") or ""
	local out = {}
	for tag,_,value in currentXml:gmatch("([%-%w]+)=([\"'])(.-)%2") do
		out[tag] = value
	end
	return out
end
xml.attribFunc = function(currentXml,funcs)
	local attributes = xml.parse(currentXml)
	for k,v in next,funcs do
		if attributes[v.attribute] then
			v.func(attributes[v.attribute])
		end
	end
end
xml.addAttrib = function(currentXml,out,launch)
	local parameters = currentXml:match("<P (.-)/>") or ""
	for k,v in next,out do
		if not parameters:find(v.tag) then
			currentXml = currentXml:gsub("<P (.-)/>",function(attribs)
				return string.format("<P %s=\"%s\" %s/>",v.tag,v.value,attribs)
			end)
		end
	end
	if launch then
		tfm.exec.newGame(currentXml)
	else
		return currentXml
	end
end

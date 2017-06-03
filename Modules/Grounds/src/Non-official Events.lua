system.objects = {
	image = {},
	textarea = {}
}
eventModeChanged = function()
	for k in next,system.objects.image do
		tfm.exec.removeImage(k)
	end
	
	for k in next,system.objects.textarea do
		ui.removeTextArea(k,nil)
	end
	
	system.objects = {
		image = {},
		textarea = {}
	}
end

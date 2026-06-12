--!strict

const YapApplication = require("./Interface/YapApplication")

const MessageOut = require("./MessageOut")

const Yap = {
	MessageOut = MessageOut,
	
	output = require("./output"),
	
	open = YapApplication.open,
	close = YapApplication.close,
}

return Yap
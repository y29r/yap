--!strict

const ConfigManager = require("../ConfigManager")

return function(value: string) : string
	const preferredStringQuote: string = ConfigManager.get("PrefferedStringQuote")
	
	return string.format("%*%*%*", preferredStringQuote, value, preferredStringQuote)
end
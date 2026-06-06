--!strict

const Config = require("../Config")

return function(value: string) : string
	return string.format("%*%*%*", Config.PrefferedStringQuote, value, Config.PrefferedStringQuote)
end
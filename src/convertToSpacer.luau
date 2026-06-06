--!strict

const Config = require("./Config")

return function(key: string, longestKeyLength: number) : string
	const length: number = string.len(key)
	const spaces: number = longestKeyLength - length
	
	return key .. Config.SpacerPrefix .. string.rep(Config.SpacerSymbol, spaces)
end
--!strict

const ConfigManager = require("./ConfigManager")

return function(key: string, longestKeyLength: number) : string
	const length: number = string.len(key)
	const spaces: number = longestKeyLength - length
	
	return key .. ConfigManager.get("SpacerPrefix") .. string.rep(ConfigManager.get("SpacerSymbol"), spaces)
end
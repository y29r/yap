--!strict

const ConfigManager = require("./ConfigManager")

const convertToSpacer = require("./convertToSpacer")

return function(key: any, longestKeyLength: number) : string
	return ConfigManager.get("SpacersEnabled")
		and convertToSpacer(key, longestKeyLength + ConfigManager.get("SpacerOffset"))
		or key
end
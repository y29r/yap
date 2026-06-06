--!strict

const Config = require("./Config")

const convertToSpacer = require("./convertToSpacer")

return function(key: any, longestKeyLength: number) : string
	return Config.SpacersEnabled and convertToSpacer(key, longestKeyLength + Config.SpacerOffset) or key
end
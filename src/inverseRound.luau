--!strict

const Config = require("./Config")

return function(value: number) : number
	return math.round(value * (1 / Config.RoundPrecision)) / (1 / Config.RoundPrecision)
end
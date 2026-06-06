--!strict

const Config = require("./Config")

const inverseRound = require("./inverseRound")

return function(value: any) : any
	if type(value) == "number" and Config.RoundNumbers then
		value = inverseRound(value)
	end
	
	return value
end
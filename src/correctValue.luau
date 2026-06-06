--!strict

const ConfigManager = require("./ConfigManager")

const inverseRound = require("./inverseRound")

return function(value: any) : any
	if type(value) == "number" and ConfigManager.get("RoundNumbers") then
		value = inverseRound(value)
	end
	
	return value
end
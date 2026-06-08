--!strict

const ConfigManager = require("./ConfigManager")

return function(value: number) : number
	const inverseScaler: number = 1 / ConfigManager.get("RoundPrecision")
	
	return math.round(value * inverseScaler) / inverseScaler
end
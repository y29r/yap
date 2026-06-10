--!strict

const ConfigManager = require("./ConfigManager")

return function(value: any) : any
	if ConfigManager.get("Strict") then
		warn(string.format("Failed to find a type format function for the type: %* \nReturning a backup formatter.", typeof(value)))
	end
	
	return string.format("%* || %*", value, typeof(value))
end
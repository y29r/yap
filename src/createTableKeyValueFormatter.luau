--!strict

const Config = require("./Config")

const function convertToSpacer(key: string, longestKeyLength: number) : string
	const length: number = string.len(key)
	const spaces: number = longestKeyLength - length
	
	return key .. string.rep(Config.SpacerSymbol, spaces)
end

return function(keys: { [string]: true }) : (object: any) -> { [string]: any }
	return function(object: any) : { [string]: any }
		local longestKeyLength: number = 0
		
		for key: any in keys do
			const keyLength: number = string.len(tostring(key))
			
			if keyLength > longestKeyLength then
				longestKeyLength = keyLength
			end
		end
		
		const finalValue: { [string]: any } = {}
		
		for key: any in keys do
			const value: any = object[key]
			
			finalValue[Config.SpacersEnabled and convertToSpacer(key, longestKeyLength + Config.SpacerOffset) or key] = value
		end
		
		return finalValue
	end
end
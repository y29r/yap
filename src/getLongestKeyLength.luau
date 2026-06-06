--!strict

const Types = require("./Types")

type TableKeys = Types.TableKeys

const EmptyDictionary: { [any]: any } = {}

return function(keys: { [any]: any }) : number
	local longestKeyLength: number = 0
	
	const customKeys: { [any]: any }? = keys.CustomKeys
	
	for key: any in keys do
		if key == "CustomKeys" then
			continue
		end
		
		const keyLength: number = string.len(tostring(key))
		
		if keyLength > longestKeyLength then
			longestKeyLength = keyLength
		end
	end
	
	for key: any in customKeys or EmptyDictionary do
		const keyLength: number = string.len(tostring(key))
		
		if keyLength > longestKeyLength then
			longestKeyLength = keyLength
		end
	end
	
	return longestKeyLength
end
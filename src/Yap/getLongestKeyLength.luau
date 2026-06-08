--!strict

const Types = require("./Types")

type TableKeys = Types.TableKeys

return function(keys: { [any]: any }, customKeys: { [any]: any }) : number
	local longestKeyLength: number = 0
	
	for key: any in keys do
		if key == "CustomKeys" then
			continue
		end
		
		const keyLength: number = string.len(tostring(key))
		
		if keyLength > longestKeyLength then
			longestKeyLength = keyLength
		end
	end
	
	for key: any in customKeys do
		const keyLength: number = string.len(tostring(key))
		
		if keyLength > longestKeyLength then
			longestKeyLength = keyLength
		end
	end
	
	return longestKeyLength
end
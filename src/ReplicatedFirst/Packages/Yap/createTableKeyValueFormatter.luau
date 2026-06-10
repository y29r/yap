--!strict

const Types = require("./Types")

type TableKeyValueFormatter = Types.TableKeyValueFormatter
type TableKeys = Types.TableKeys

const formatKey = require("./formatKey")
const correctValue = require("./correctValue")
const getLongestKeyLength = require("./getLongestKeyLength")
const fixKeysAndValues = require("./fixKeysAndValues")

const function createTableKeyValueFormatter(keys: TableKeys) : TableKeyValueFormatter
	if keys.CustomKeys then
		keys.CustomKeys["++Type"] = typeof
	else
		keys.CustomKeys = { ["++Type"] = typeof }
	end
	
	const customKeys: { [any]: any } = keys.CustomKeys or {}
	
	keys.CustomKeys = nil
	
	return function(object: any) : { [string]: any }
		local longestKeyLength: number = getLongestKeyLength(keys, customKeys)
		
		const finalValue: { [string]: any } = fixKeysAndValues(keys, object, longestKeyLength)
		
		for key: string, value: ((value: any) -> ...any) | any in customKeys do
			finalValue[formatKey(key, longestKeyLength)] = correctValue(
				type(value) == "function" and (value :: any)(object)
				or value
			)
		end
		
		return finalValue
	end
end

return createTableKeyValueFormatter
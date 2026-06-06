--!strict

const Types = require("./Types")

type TableKeyValueFormatter = Types.TableKeyValueFormatter
type TableKeys = Types.TableKeys

const formatKey = require("./formatKey")
const correctValue = require("./correctValue")
const getLongestKeyLength = require("./getLongestKeyLength")
const fixKeysAndValues = require("./fixKeysAndValues")

const EmptyDictionary: { [any]: any } = {}

const function createTableKeyValueFormatter(keys: TableKeys) : TableKeyValueFormatter
	return function(object: any) : { [string]: any }
		local longestKeyLength: number = getLongestKeyLength(keys)
		
		const customKeys: { [any]: any }? = keys.CustomKeys
		
		keys.CustomKeys = nil
		
		const finalValue: { [string]: any } = fixKeysAndValues(keys, object, longestKeyLength)
		
		for key: string, customCallback: (value: any) -> ...any in customKeys or EmptyDictionary do
			finalValue[formatKey(key, longestKeyLength)] = correctValue(customCallback(object))
		end
		
		return finalValue
	end
end

return createTableKeyValueFormatter
--!strict

const formatKey = require("../formatKey")
const getLongestKeyLength = require("../getLongestKeyLength")

return function(value: Enum) : { [string]: string }
	const keys: { EnumItem } = value:GetEnumItems()
	
	const longestKeyLength: number = getLongestKeyLength(keys)
	
	const finalValue: { [string]: string } = {}
	
	for index: number, value: EnumItem in keys do
		finalValue[formatKey(index, longestKeyLength)] = tostring(value)
	end
	
	return finalValue
end
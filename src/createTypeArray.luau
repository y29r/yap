--!strict

const formatKey = require("./formatKey")
const getLongestKeyLength = require("./getLongestKeyLength")

const InstanceFormatter = require("./Formatters/Instance")

const FormatTypeArray = {
	["Instance"] = InstanceFormatter,
}

return function(array: { any }) : { [string]: any } | string
	if not array or #array == 0 then
		return "{}"
	end
	
	const typeArray: { [string]: any } = {}
	
	const longestKeyLength: number = getLongestKeyLength(array, { ["++Type"] = true })
	
	local lastTypes: { string } = { typeof(array[1]) }
	
	for index: number, value: any in array do
		const valueType: string = typeof(value)
		
		typeArray[formatKey(index, longestKeyLength)] = FormatTypeArray[valueType or tostring](value)
		
		if not table.find(lastTypes, valueType) then
			table.insert(lastTypes, valueType)
		end
	end
	
	typeArray[formatKey("++Type", longestKeyLength)] = "{ " .. table.concat(lastTypes, ", ") .. " }"
	
	return typeArray
end
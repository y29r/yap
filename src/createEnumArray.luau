--!strict

const formatKey = require("./formatKey")
const getLongestKeyLength = require("./getLongestKeyLength")

return function(enumItems: { EnumItem }) : { [string]: any } | string
	if #enumItems == 0 then
		return "{}"
	end
	
	const array: { [string]: any } = {}
	
	const longestKeyLength: number = getLongestKeyLength(enumItems, {})
	
	local lastEnumItemTypes: { string } = { tostring(enumItems[1].EnumType) }
	
	for index: number, value: EnumItem in enumItems do
		array[formatKey(index, longestKeyLength)] = tostring(value)
		
		const valueEnumType: string = tostring(value.EnumType)
		if not table.find(lastEnumItemTypes, valueEnumType) then
			table.insert(lastEnumItemTypes, valueEnumType)
		end
	end
	
	array["++Type"] = "{ " .. table.concat(lastEnumItemTypes, ", ") .. " }"
	
	return array
end
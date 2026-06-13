--!strict

const Table = require("@game/ReplicatedFirst/Packages/TableUtility/TableUtility")
const Beaver = require("@game/ReplicatedFirst/Packages/Beaver/Beaver")

const count = Table.count

const colorString = require("./colorString")

const DataTypeTokens = require("./DataTypeTokens")

const function formatValue(key: any, value: any) : string
	const valueType: string = typeof(value)
	if valueType == "table" then
		const dataType: { Type: string, CustomString: string? } = value[DataTypeTokens.TypeToken]
		if dataType then
			return dataType.CustomString or string.format("%*(...)", colorString(dataType.Type, Color3.fromRGB(143, 180, 255)))
		end
		
		return "{...} (" .. tostring(count(value)) .. " keys)"
	elseif valueType == "number" then
		return colorString(Beaver.Comma(value), Color3.fromRGB(255, 207, 112))
	elseif valueType == "string" then
		return colorString("\"" .. value .. "\"", Color3.fromRGB(172, 255, 120))
	elseif valueType == "boolean" then
		return colorString(tostring(value), Color3.fromRGB(242, 103, 255))
	end
	
	return tostring(value)
end

return formatValue
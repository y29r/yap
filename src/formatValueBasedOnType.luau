--!strict

const FormatMap = require("./FormatMap")
const backupFormatter = require("./backupFormatter")

return function(value: any) : any
	const valueType: string = typeof(value)
	if valueType == "table" then
		error("Cannot format a table type")
	end
	
	return (FormatMap[valueType] or backupFormatter)(value)
end
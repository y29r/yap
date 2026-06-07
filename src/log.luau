--!strict

const this = require("./this")
const getFormatterFromType = require("./getFormatterFromType")

return function(...: any) : ()
	for index: number, value: any in {...} do
		const valueType: string = typeof(value)
		if valueType == "table" then
			this(valueType, value)
			
			continue
		end
		
		this(valueType, getFormatterFromType(value)(value))
	end
end
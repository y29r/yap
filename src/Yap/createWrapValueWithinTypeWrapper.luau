--!strict

return function(valueType: string) : (value: any) -> string
	const format: string = valueType .. "(%*)"
	
	return function(value: any) : string
		return string.format(format, valueType, value)
	end
end
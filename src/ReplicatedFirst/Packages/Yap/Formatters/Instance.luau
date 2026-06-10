--!strict

return function(value: any) : string
	return string.format("Instance(%*)", value:GetFullName())
end
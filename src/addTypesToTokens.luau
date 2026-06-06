--!strict

const Types = require("./Types")

type Tokens = Types.Tokens
type StringTokens = Types.StringTokens

const getFormatterFromType: (value: any) -> any = require("./getFormatterFromType")

const function addTypesToTokens(stringTokens: Tokens) : StringTokens
	const typedStringTokens: StringTokens = {}
	
	for key: string, value: any in stringTokens do
		if type(value) == "table" then
			typedStringTokens[key] = addTypesToTokens(value)
		else
			typedStringTokens[key] = getFormatterFromType(value)(value)
		end
	end
	
	return typedStringTokens
end

return addTypesToTokens
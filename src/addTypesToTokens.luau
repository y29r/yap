--!strict

const Types = require("./Types")

type Tokens = Types.Tokens
type StringTokens = Types.StringTokens

const formatValueBasedOnType: (value: any) -> any = require("./formatValueBasedOnType")

const function addTypesToTokens(stringTokens: Tokens) : StringTokens
	const typedStringTokens: StringTokens = {}
	
	for key: string, value: any in stringTokens do
		if type(value) == "table" then
			typedStringTokens[key] = addTypesToTokens(value)
		else
			typedStringTokens[key] = formatValueBasedOnType(value)
		end
	end
	
	return typedStringTokens
end

return addTypesToTokens
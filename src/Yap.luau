--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type Tokens = Types.Tokens
type StringTokens = Types.StringTokens

const addTypesToTokens: (tokens: Tokens) -> StringTokens = require("./addTypesToTokens")
const convertToStringTokens: (tokens: Tokens) -> StringTokens = require("./convertToStringTokens")

const Yap = {}

function Yap.this(message: string, tokens: Tokens?, includeTypes: boolean?) : ()
	if not includeTypes then
		LogService:Output(message, tokens and convertToStringTokens(tokens))
	else
		
		LogService:Output(message, tokens and addTypesToTokens(convertToStringTokens(tokens)))
	end
end

return Yap
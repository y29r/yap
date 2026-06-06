--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type Tokens = Types.Tokens
type StringTokens = Types.StringTokens

const addTypesToTokens = require("./addTypesToTokens")
const convertToStringTokens = require("./convertToStringTokens")

const FormatMap = require("./FormatMap")

const Yap = {}

function Yap.this(message: string, tokens: Tokens?) : ()
	LogService:Output(message, tokens and addTypesToTokens(convertToStringTokens(tokens)))
end

function Yap.now(...: any) : ()
	for index: number, value: any in {...} do
		const format = FormatMap[typeof(value)]
		
		Yap.this(tostring(value), format(value))
	end
end

return Yap
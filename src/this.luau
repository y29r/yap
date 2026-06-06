--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type Tokens = Types.Tokens

const ConfigManager = require("./ConfigManager")

const addTypesToTokens = require("./addTypesToTokens")
const convertToStringTokens = require("./convertToStringTokens")
const formatTraceback = require("./formatTraceback")

return function(message: string, tokens: Tokens?) : ()
	if ConfigManager.get("TracebackEnabled") and tokens then
		tokens["++Trace"] = formatTraceback(debug.traceback())
	end
	
	LogService:Output(message, tokens and addTypesToTokens(convertToStringTokens(tokens)))
end
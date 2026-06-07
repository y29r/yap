--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type Tokens = Types.Tokens

const ConfigManager = require("./ConfigManager")

const addTypesToTokens = require("./addTypesToTokens")
const convertToStringTokens = require("./convertToStringTokens")
const formatTraceback = require("./formatTraceback")

const MessageTypeToMethodName = {
	[Enum.MessageType.MessageError] = "Error",
	[Enum.MessageType.MessageInfo] = "Info",
	[Enum.MessageType.MessageOutput] = "Output",
	[Enum.MessageType.MessageWarning] = "Warn",
}

return function(messageType: Enum.MessageType) : (message: string, tokens: Tokens?) -> ()
	const outputFunction: (logService: LogService, ...any) -> () = (LogService :: any)[MessageTypeToMethodName[messageType]]
	
	return function(message: string, tokens: Tokens?) : ()
		if ConfigManager.get("TracebackEnabled") and type(tokens) == "table" then
			tokens["++Trace"] = formatTraceback(debug.traceback())
		end
		
		outputFunction(LogService, message, tokens and addTypesToTokens(convertToStringTokens(tokens)))
	end
end
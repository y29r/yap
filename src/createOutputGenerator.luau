--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type Tokens = Types.Tokens

const ConfigManager = require("./ConfigManager")

const addTypesToTokens = require("./addTypesToTokens")
const convertToStringTokens = require("./convertToStringTokens")
const formatTraceback = require("./formatTraceback")

const OutputContext = require("./OutputContext/OutputContext")
const MessageTypeToMethodName = require("./MessageTypeToMethodName")

return function(messageType: Enum.MessageType) : (message: string, tokens: Tokens?) -> ()
	const outputFunction: (logService: LogService, ...any) -> () = (LogService :: any)[MessageTypeToMethodName[messageType]]
	
	return function(message: string, tokens: Tokens?) : ()
		if ConfigManager.get("DuplicateLogsEnabled") then
			const context: Tokens = OutputContext.EmptyContext
			const isTheSameLog: boolean = OutputContext.isLastLogTheSame(message, context)
			
			OutputContext.updateLastLog(message, context)
			
			OutputContext.currentDuplicateLogStreak = isTheSameLog and OutputContext.currentDuplicateLogStreak + 1 or 0
			
			if isTheSameLog and OutputContext.currentDuplicateLogStreak >= ConfigManager.get("MaxDuplicateLogs") then
				return
			end
		end
		
		if ConfigManager.get("TracebackEnabled") and tokens then
			tokens["++Trace"] = formatTraceback(debug.traceback())
		end
		
		outputFunction(LogService, message, tokens and addTypesToTokens(convertToStringTokens(tokens)))
	end
end
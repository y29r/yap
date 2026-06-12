--!strict

const LogService: LogService = game:GetService("LogService")

const MessageOut = require("./MessageOut")

const function output(message: string, context: { [any]: any }) : ()
	LogService:Output(message, context)
	
	MessageOut:Fire(message, Enum.MessageType.MessageOutput, context)
end

return output
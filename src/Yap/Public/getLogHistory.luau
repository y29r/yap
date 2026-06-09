--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("../Types")

export type LogHistoryNode = Types.LogHistoryNode

--[[

	@return { LogHistoryNode }
	
	Returns an array of log history nodes.
	```luau
	
	const yap = require("./Path/To/yap")
	
	print(yap.getLogHistory())
	
	-- each node will always be in the form:
	--  {
	--    context: { [any]: any },
	--    message: string,
	--    messageType: Enum.MessageType,
	--    timestamp: number,
	--  }
	
	```
	
]]
return function() : { LogHistoryNode }
	return LogService:GetLogHistory()
end
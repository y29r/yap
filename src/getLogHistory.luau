--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

type LogHistoryNode = Types.LogHistoryNode

return function() : { LogHistoryNode }
	return LogService:GetLogHistory()
end
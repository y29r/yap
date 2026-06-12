--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

export type LogNode = Types.LogNode

const function getLogHistory() : { LogNode }
	return LogService:GetLogHistory()
end

return getLogHistory
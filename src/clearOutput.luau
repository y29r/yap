--!strict

const LogService: LogService = game:GetService("LogService")

return function() : ()
	LogService:ClearOutput()
end
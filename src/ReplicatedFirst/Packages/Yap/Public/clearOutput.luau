--!strict

const LogService: LogService = game:GetService("LogService")

--[[
	
	@return void
	
	Clears both the studio and client F9 console
	
]]
return function() : ()
	LogService:ClearOutput()
end
--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local createEvent = require("./createEvent")

return function(eventName: string) : RemoteFunction
	return createEvent(eventName, "Rebound")
end
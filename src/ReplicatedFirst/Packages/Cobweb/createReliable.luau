--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local createEvent = require("./createEvent")

return function(eventName: string) : RemoteEvent
	return createEvent(eventName, "Reliable")
end
--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: [Tome]

local createEvent = require("./createEvent")
local createReliable = require("./createReliable")
local createUnreliable = require("./createUnreliable")
local createRebound = require("./createRebound")
local attach =  require("./attach")

local Cobweb = {
	createEvent = createEvent,
	createReliable = createReliable,
	createUnreliable = createUnreliable,
	createRebound = createRebound,
	attach = attach,
}

return Cobweb
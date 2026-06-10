--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

const Types = require("../Types")

type Filterer = Types.Filterer

--[[
	
	Returns a filter which only allows instance that have the provided tag
	
	@param tag string
	@return filterer Filterer
	
]]
return function(tag: string) : Filterer
	return function(instance: Instance)
		return instance:HasTag(tag)
	end
end
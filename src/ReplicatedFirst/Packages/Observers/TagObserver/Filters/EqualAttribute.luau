--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

const Types = require("../Types")

type Filterer = Types.Filterer

--[[
	
	Returns a filterer which checks if the passed in attribute value
	equals that of the expected value within that instance.
	
	@param attributeName string
	@param expectedValue any
	@return filterer Filterer
	
]]
return function(attributeName: string, expectedValue: any) : Filterer
	return function(instance: Instance)
		return instance:GetAttribute(attributeName) == expectedValue
	end
end
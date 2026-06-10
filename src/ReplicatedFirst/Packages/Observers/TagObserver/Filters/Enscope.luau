--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

const Types = require("../Types")

type Filterer = Types.Filterer

--[[
	
	Returns a filterer which only allows instances under the provided
	parent from being observed.
	
	@param parent Instance?
	@return filterer Filterer
	
]]
return function(parent: Instance?) : Filterer
	if not parent then
		return function(instance: Instance)
			return false
		end
	end
	
	return function(instance: Instance)
		return instance:IsDescendantOf(parent)
	end
end
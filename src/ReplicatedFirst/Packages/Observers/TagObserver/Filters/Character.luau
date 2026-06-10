--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

const Types = require("../Types")

type Filterer = Types.Filterer

--[[
	
	Returns a filteter which checks if the provided instance is part of a Player's character
	
	@param player Player
	@return filterer Filterer
	
]]
return function(player: Player) : Filterer
	return function(instance: Instance)
		local character: Model? = player.Character
		if character then
			return instance:IsDescendantOf(character)
		end
		
		return false
	end
end
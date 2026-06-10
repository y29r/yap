--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 28th, 2025
-- Deps: []

local Players = game:GetService("Players")

--[[

	@param Model
	@return Player?
	
	Returns the player from the given character model if it exists
	
]]
return function(model: Instance?) : Player?
	return Players:GetPlayerFromCharacter(model)
end
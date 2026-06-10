--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

local getFromCharacter = require("./getFromCharacter")

--[[
	
	@param otherPart BasePart
	@param callback (player: Player, character: Model, humanoid: Humanoid) -> any
	@return any?
	
	Calls a given callback if the 'otherPart' (#1 argument) is related to a player by its character
	Will only call the function if the player is also alive
	
]]
local function callIfFromTouched(otherPart: BasePart, callback: (player: Player, character: Model, humanoid: Humanoid) -> any) : any?
	local player: Player? = getFromCharacter(otherPart.Parent)
	if not player then
		return
	end
	
	local character: Model? = player.Character
	if not character then
		return
	end
	
	local humanoid: Humanoid? = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return
	end
	
	if humanoid.Health <= 0 then
		return
	end
	
	return callback(player, character, humanoid)
end

return callIfFromTouched
--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

--[[
	
	@param player Player
	@param callback (character: Model, humanoid: Humanoid) -> any
	@return any?
	
	Calls a given callback function if the player is alive
	Provides the player, character and humanoid if all validity clauses don't assert
	
]]
local function callIfAlive(player: Player, callback: (character: Model, humanoid: Humanoid) -> any?) : any?
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
	
	return callback(character, humanoid)
end

return callIfAlive
--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

--[[
	
	@param player Player
	@return boolean
	
	Returns whether the player is dead
	
]]
return function(player: Player) : boolean
	local character: Model? = player.Character
	if not character then
		return false
	end
	
	local humanoid: Humanoid? = character:FindFirstChildOfClass("Humanoid")
	if not humanoid then
		return false
	end
	
	return humanoid.Health <= 0
end
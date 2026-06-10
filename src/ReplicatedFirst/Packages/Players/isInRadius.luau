--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

--[[
	
	@param player Player
	@param position Vector3
	@param radius number
	@return boolean
	
	Returns whether the player is within the radius of the given position
	
]]
local function isInRadius(player: Player, position: Vector3, radius: number) : boolean
	local distance: number? = player:DistanceFromCharacter(position)
	if distance == 0 then
		return false
	end
	
	return distance <= radius
end

return isInRadius
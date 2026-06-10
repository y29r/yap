--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

local getFromCharacter = require("./getFromCharacter")
local callIfAlive = require("./callIfAlive")
local getAllExcept = require("./getAllExcept")

--[[
	
	@param position Vector3
	@param radius number
	@param exceptions {Player}
	@return {Player}
	
	Returns all the players within the radius of the given position
	An optional exceptions array can be passed to exclude certain players from the search
	
]]
local function getInRadius(position: Vector3, radius: number, exceptions: {Player}?) : {Player}
	local playersInRadius: {Player} = {}
	
	for index: number, player: Player in getAllExcept(exceptions or {}) do
		local distance: number? = player:DistanceFromCharacter(position)
		if distance == 0 then
			continue
		end
		
		if distance > radius then
			continue
		end
		
		table.insert(playersInRadius, player)
	end
	
	return playersInRadius
end

return getInRadius
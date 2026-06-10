--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local Players = game:GetService("Players")

--[[
	
	@return {Player}
	
	Returns all the player objects associated with this session
	
]]
return function() : {Player}
	return Players:GetPlayers()
end
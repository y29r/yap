--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local getAll = require("./getAll")

--[[

	@param exceptions {Player}
	@return {Player}
	
	Returns every player except the provided exception.
	
]]
return function(exceptions: {Player}) : {Player}
	local selection: {Player} = {}
	
	for index: number, player: Player in getAll() do
		if table.find(exceptions, player) then
			continue
		end
		
		table.insert(selection, player)
	end
	
	return selection
end
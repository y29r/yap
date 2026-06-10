--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local getAll = require("./getAll")

--[[

	@param callback (player: Player) -> ()
	@param runInExternalThread boolean
	@return void
	
	Invokes the provided callback for all players within the session
	An optional 'runInExternalThread' argument (#2) can be provided
	to run the callback within a spawned thread.
	
]]
return function(callback: (player: Player) -> (), runInExternalThread: boolean?) : ()
	for index: number, player: Player in getAll() do
		if runInExternalThread then
			task.spawn(callback, player)
		else
			callback(player)
		end
	end
end
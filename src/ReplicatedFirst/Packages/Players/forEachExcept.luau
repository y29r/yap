--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local getAll = require("./getAll")

--[[

	@param exceptions {Player}
	@param callback (player: Player) -> ()
	@param runInExternalThread boolean
	@return void
	
	Invokes the provided callback for all players within the session
	An optional 'runInExternalThread' argument (#2) can be provided
	to run the callback within a spawned thread.
	
]]
return function(exceptions: {Player}, callback: (player: Player) -> (), runInExternalThread: boolean?) : ()
	for index: number, player: Player in getAll() do
		if table.find(exceptions, player) then
			continue
		end
		
		if runInExternalThread then
			task.spawn(callback, player)
		else
			callback(player)
		end
	end
end
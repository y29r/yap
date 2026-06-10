--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: January 12th, 2025
-- Deps: []

--[[
	
	@param players {Player}
	@param callback (player: Player) -> ()
	@param runInExternalThread boolean?
	@return ()
	
	Calls the given callback function for every provided player in argument #1
	An optional runInExternalThread argument can be passed to call every callback inside another thread
	
]]
local function map(players: {Player}, callback: (player: Player) -> (), runInExternalThread: boolean?) : ()
	for index: number, player: Player in players do
		if runInExternalThread or runInExternalThread == nil then
			task.spawn(callback, player)
		else
			callback(player)
		end
	end
end

return map
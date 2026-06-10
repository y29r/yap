--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local getAll = require("./getAll")
local forEach = require("./forEach")

export type AttachmentParams = {
	RunInExternalThread: boolean,
}

--[[

	@param signal RBXScriptSignal
	@param callback (player: Player) -> ()
	@param attachmentParams attachmentParams
	
	Attaches the provided callback to the given signal (binding) and also invokes the
	given callback for all players inside the session
	
]]
return function(signal: RBXScriptSignal, callback: (player: Player) -> (), attachmentParams: AttachmentParams) : ()
	signal:Connect(callback)
	
	forEach(callback, attachmentParams.RunInExternalThread)
end
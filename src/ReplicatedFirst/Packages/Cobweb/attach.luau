--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: [Tome]

local RunService = game:GetService("RunService")

local Tome = require("../Tome/Tome")

return function(event: Instance, callback: any) : () -> ()
	if event:IsA("RemoteEvent") then
		local scopeTome: Tome.Tome = Tome.new()
		scopeTome:Connect(RunService:IsClient() and event.OnClientEvent or event.OnServerEvent, callback)
		
		return scopeTome:WrapDestroy()
	elseif event:IsA("UnreliableRemoteEvent") then
		local scopeTome: Tome.Tome = Tome.new()
		scopeTome:Connect(RunService:IsClient() and event.OnClientEvent or event.OnServerEvent, callback)
		
		return scopeTome:WrapDestroy()
	elseif event:IsA("RemoteFunction") then
		if RunService:IsClient() then
			event.OnClientInvoke = callback
		elseif RunService:IsServer() then
			event.OnServerInvoke = callback
		end
		
		return function()
			
		end
	end
	
	error("Bad argument #1 event provided. Expected an event instance")
end
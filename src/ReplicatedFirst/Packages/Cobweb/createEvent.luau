--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local RunService = game:GetService("RunService")
local EncodingService = game:GetService("EncodingService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local cobwebKey: string = EncodingService:ComputeStringHash("CobWeb", Enum.HashAlgorithm.Sha256)

local eventsCache = {}

local eventKindToInstanceName: {[string]: string} = {
	["Reliable"] = "RemoteEvent",
	["Unreliable"] = "UnreliableRemoteEvent",
	["Rebound"] = "RemoteFunction",
}

local function scrambleEventName(eventName: string) : string
	local random: Random = Random.new(8152.31928)
	
	local reversed: string = string.reverse(eventName)
	local letters: {string} = string.split(reversed, "")
	local newArray: {number} = {}
	for index: number = 1, #letters do
		newArray[index] = string.byte((random:NextInteger(1, 2) == 1 and string.upper or string.lower)(letters[index]), 1, 1)
	end
	
	return table.concat(newArray, "")
end

return function(eventName: string, eventKind: "Reliable" | "Unreliable" | "Rebound") : any
	if eventsCache[eventName] then
		return eventsCache[eventName]
	end
	
	local cobwebFolder: Folder
	if RunService:IsServer() then
		local initialCobwebFolder = ReplicatedStorage:FindFirstChild(cobwebKey)
		if not initialCobwebFolder then
			initialCobwebFolder = Instance.new("Folder")
			initialCobwebFolder.Name = cobwebKey
			initialCobwebFolder.Parent = ReplicatedStorage
		end
		
		cobwebFolder = initialCobwebFolder
	else
		cobwebFolder = ReplicatedStorage:WaitForChild(cobwebKey, math.huge)
	end
	
	local event: any = nil
	
	local handEventName: string = scrambleEventName(eventName) --EncodingService:ComputeStringHash(eventName, Enum.HashAlgorithm.Md5)
	
	if RunService:IsClient() then
		event = cobwebFolder:WaitForChild(handEventName, 5)
	elseif RunService:IsServer() then
		event = Instance.new(eventKindToInstanceName[eventKind])
		event.Name = handEventName
		event.Parent = cobwebFolder
	end
	
	eventsCache[eventName] = event
	
	return event
end
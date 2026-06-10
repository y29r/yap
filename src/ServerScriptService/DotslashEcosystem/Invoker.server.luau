--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: October 25th, 2025
-- Deps: []

const HttpService = game:GetService("HttpService")
const ReplicatedFirst = game:GetService("ReplicatedFirst")
const ReplicatedStorage = game:GetService("ReplicatedStorage")
const ServerScriptService = game:GetService("ServerScriptService")

const instantiatorsFolder = script.Parent.Instantiators
const dotslashModulesFolder = script.Parent.Modules

const serverContextScripts: {Script} = {}
const clientContextScripts: {Script} = {}
const firstClientContextScripts: {Script} = {}
const runContextToArrayMap = {
	["Server"] = serverContextScripts,
	["Client"] = clientContextScripts,
	["FirstClient"] = firstClientContextScripts,
}

do
	for index: number, instantiator: Script in instantiatorsFolder:GetChildren() do
		if not instantiator:IsA("Script") then
			warn("Found non-script inside instantiators folder")
			continue
		end
		
		const runContext: string = instantiator:GetAttribute("RunContext") :: string
		const contextArray: {Script} = runContextToArrayMap[runContext]
		if not contextArray then
			warn("Context for instantiator is invalid")
			continue
		end
		
		table.insert(contextArray, instantiator)
	end
end

local runContextToLocationMap = { ["Server"] = ServerScriptService, ["Client"] = ReplicatedStorage, ["FirstClient"] = ReplicatedFirst }
const function getLocationFileFromRunContext(runContext: string) : Instance
	return runContextToLocationMap[runContext]
end

const function setModulesFolderFromFile(file: Instance) : ()
	local modulesFolder: Folder = nil
	const existingModulesFolder: Instance? = file:FindFirstChild("Modules")
	if not existingModulesFolder then
		modulesFolder = Instance.new("Folder")
		modulesFolder.Name = "Modules"
		modulesFolder.Parent = file
	elseif existingModulesFolder and existingModulesFolder:IsA("Folder") then
		modulesFolder = existingModulesFolder
	end
	
	if not modulesFolder then
		error("Couldn't locate a Modules folder within the provided file.")
	end
	
	for index: number, module: ModuleScript in dotslashModulesFolder:QueryDescendants("ModuleScript") do
		if modulesFolder:FindFirstChild(module.Name) then
			warn(string.format("A module with the name '%*' already exists", module.Name))
			continue
		end
		
		module:Clone().Parent = modulesFolder
	end
end

local function forwardLoaderModules(runContext: string) : ()
	const locationFile: Instance = getLocationFileFromRunContext(runContext)
	if not locationFile then
		warn("Expected location file when forwarding loader modules")
		return
	end
	
	setModulesFolderFromFile(locationFile)
end

local function runInstantiator(instantiator: Script) : ()
	const runningContext: string = instantiator:GetAttribute("RunContext") :: string
	const locationFile: Instance = getLocationFileFromRunContext(runningContext)
	if not locationFile then
		warn("Expected location file when running instantiator")
		return
	end
	
	local indexReducer: Folder = Instance.new("Folder")
	indexReducer.Name = HttpService:GenerateGUID(true)
	indexReducer.Parent = locationFile
	
	local clone: Script = instantiator:Clone()
	clone.Name = HttpService:GenerateGUID(true)
	clone.Parent = indexReducer
	clone.Disabled = false
end

local function runContextArray(contextArray: {Script}) : ()
	for index: number, instantiator: Script in contextArray do
		task.spawn(runInstantiator, instantiator)
	end
end

local function runContextEnvironment(runContext: string) : ()
	forwardLoaderModules(runContext)
	
	const contextArray: {Script} = runContextToArrayMap[runContext]
	runContextArray(contextArray)
end

runContextEnvironment("Server")
runContextEnvironment("FirstClient")
runContextEnvironment("Client")
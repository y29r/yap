--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local PackagesFolder: Instance? = script.Parent:FindFirstChild("Packages")
if not PackagesFolder then
	PackagesFolder = game:GetService("ReplicatedFirst"):WaitForChild("Packages")
end

if not PackagesFolder then
	error("Couldn't locate Packages folder. Ensure either ReplicatedFirst or ReplicatedStorage has a Packages folder.")
end

const TagObserver = (require)(PackagesFolder:WaitForChild("Observers"):WaitForChild("TagObserver"):WaitForChild("TagObserver"))

const upperBoundScope = script.Parent.Parent

type Internal = {
	init: () -> ()?,
	defer: () -> ()?,
}

const function dotslashEcosystemControllerAdded(ecosystemController: Folder) : ()
	const controllerName: string = ecosystemController.Name
	
	const logWarnings: boolean = ecosystemController:GetAttribute("LogWarnings")
	
	local internalModule: Instance? = ecosystemController:FindFirstChild("Internal")
		or ecosystemController:FindFirstChild("Controller")
		or ecosystemController:FindFirstChild(controllerName)
	if not (internalModule and internalModule:IsA("ModuleScript")) then
		if logWarnings then
			warn(string.format("Controller: '%*' expected a module named 'Internal' to use to invoke the controller, but it does not exist.", controllerName))
		end
		
		return
	end
	
	task.spawn(function()
		const internal: Internal = (require)(internalModule)
		if not internal.init and not internal.defer then
			if logWarnings then
				warn(string.format("Controller: '%*' expected either functions: .init or .defer. The controller cannot be ran otherwise.", controllerName))
			end
			
			return
		end
		
		const calledFunctions: {string} = {}
		if internal.init then
			local success: boolean, result: any = pcall(internal.init)
			if not success then
				warn(string.format("Failed to run init function for Controller: %*. Issue: %*", controllerName, result))
			end
			
			const logInitialization: boolean = ecosystemController:GetAttribute("LogInitialization") or false
			if logInitialization then
				print(ecosystemController.Name)
			end
			
			table.insert(calledFunctions, ".init")
		end
		
		if internal.defer then
			task.defer(internal.defer)
			table.insert(calledFunctions, ".defer")
		end
		
		const logStartupInfo: boolean = ecosystemController:GetAttribute("LogStartupInfo") or false
		if logStartupInfo then
			local formatString: string ="\nStarting '%*' module.\nStarted functions '%*'\nStarted at '%*'\n"
			print(string.format(formatString, controllerName, table.concat(calledFunctions, ", "), time()))
		end
	end)
end

const filter: () -> () = TagObserver.createFilter({
	TagObserver.Enscope(upperBoundScope),
	TagObserver.EqualAttribute("Disabled", false),
})

const ECOSYSTEM_TAG: string = "DotslashController"
TagObserver.observeAdd(ECOSYSTEM_TAG, dotslashEcosystemControllerAdded, filter)

return false
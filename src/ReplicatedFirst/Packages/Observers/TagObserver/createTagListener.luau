--!strict
-- Auth: @bytenand
-- Date: October 28th, 2025
-- Deps: [Tome]

const CollectionService: CollectionService = game:GetService("CollectionService")

const getAll = require("./getAll")

const Tome = require("../../Tome/Tome")

return function(
	signalName: string,
	includeExistingInstances: boolean
)
	return function<instance>(
		tag: string,
		callback: (instance: instance) -> (),
		middleware: ((instance: instance) -> boolean)?
	)
		const observerTome: Tome.Tome = Tome.new()
		
		const function instanceWithTagAdded(instance: instance) : ()
			if middleware and not middleware(instance) then
				return
			end
			
			callback(instance)
		end
		
		if signalName == "GetInstanceAddedSignal" then
			observerTome:Connect(CollectionService:GetInstanceAddedSignal(tag), instanceWithTagAdded)
		elseif signalName == "GetInstanceRemovedSignal" then
			observerTome:Connect(CollectionService:GetInstanceRemovedSignal(tag), instanceWithTagAdded)
		end
		
		if includeExistingInstances then
			for index: number, instance: instance in getAll(tag) do
				task.spawn(instanceWithTagAdded, instance)
			end
		end
		
		return observerTome:WrapDestroy()
	end
end
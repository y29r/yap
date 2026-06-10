--!strict

local deepCopy = require("./deepCopy")

local function withoutKeys(t: {[any]: any}, keys: {any}) : {[any]: any}
	local newTable: {[any]: any} = deepCopy(t)
	
	for index: number, key: any in keys do
		newTable[key] = nil
	end
	
	return newTable
end

return withoutKeys
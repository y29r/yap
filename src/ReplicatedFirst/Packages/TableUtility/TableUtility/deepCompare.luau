--!strict

function doKeysMatch(toCompare: {[any]: any}, comparingTo: {[any]: any}, key: any) : boolean
	if not comparingTo[key] then
		return false
	end
	
	if typeof(toCompare[key]) ~= typeof(comparingTo[key]) then
		return false
	end
	
	if typeof(toCompare[key]) == "table" then
		if not compareKeys(toCompare[key], comparingTo[key]) then
			return false
		end
	elseif toCompare[key] ~= comparingTo[key] then
		return false
	end
	
	return true
end

function compareKeys(toCompare: {[any]: any}, comparingTo: {[any]: any}) : boolean
	if not toCompare then
		return false
	end
	
	for key: any in toCompare do
		if not doKeysMatch(toCompare, comparingTo, key) then
			return false
		end
	end
	
	return true
end

local function deepCompare(toCompare: {[any]: any}, comparingTo: {[any]: any}) : boolean
	if not compareKeys(toCompare, comparingTo) then
		return false
	end
	
	if not compareKeys(comparingTo, toCompare) then
		return false
	end
	
	return true
end

return deepCompare
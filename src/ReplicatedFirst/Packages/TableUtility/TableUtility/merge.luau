--!strict

local function merge(...: any) : any
	local merged: {[any]: any} = {}
	
	for index: number, t: {[any]: any} in {...} do
		if t == nil then
			continue
		end
		
		for key: any, value: any in t do
			merged[key] = value
		end
	end
	
	return merged
end

return merge
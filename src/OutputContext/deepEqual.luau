--!strict

const function deepEqual(a: { [any]: any }, b: { [any]: any }) : boolean
	if a == b then
		return true
	end
	
	for key: any, aValue: any in a do
		const bValue: any = b[key]
		
		const bValueType: string = type(bValue)
		const aValueType: string = type(aValue)
		
		if aValueType ~= bValueType then
			return false
		end
		
		if aValueType == "table" then
			const isEqual: boolean = deepEqual(aValue, bValue)
			if not isEqual then
				return false
			end
		else
			const isEqual: boolean = aValue == bValue
			if not isEqual then
				return false
			end
		end
	end
	
	return true
end

return deepEqual
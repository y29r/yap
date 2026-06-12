--!strict

const DirectKeywordsToLayoutOrder = {
	["++Trace"] = -99999,
	["++Type"] = -9999,
	
	["X"] = 0,
	["Y"] = 1,
	["Z"] = 2,
	
	["Unit"] = 3,
	["Magnitude"] = 4,
	
	["LookVector"] = 5,
	["UpVector"] = 6,
	["RightVector"] = 7,
	
	["XVector"] = 8,
	["YVector"] = 9,
	["ZVector"] = 10,
	
	["Rotation"] = 11,
}

const function getLayoutOrderFromKey(key: any) : number
	const directLayoutOrder: number? = DirectKeywordsToLayoutOrder[key]
	if directLayoutOrder then
		return directLayoutOrder
	end
	
	return tonumber(key) or #tostring(key)
end

return getLayoutOrderFromKey
--!strict

const log = require("./log")

const function difference(a: { [any]: any }, b: { [any]: any }) : { [any]: any }
	const differenceTable: { [any]: any } = {}
	
	for key: any, aValue: any in a do
		const bValue: any = b[key]
		
		const aType: string, bType: string = typeof(aValue), typeof(bValue)
		
		if aType == "table" and bType == "table" then
			differenceTable[key] = difference(aValue, bValue)
			
			continue
		end
		
		if aValue ~= bValue then
			differenceTable[key] = string.format("%* -> %*", aValue, bValue)
			
			continue
		end
		
		differenceTable[key] = aValue
	end
	
	for key: any, bValue: any in b do
		if differenceTable[key] then
			continue
		end
		
		const aValue: any = a[key]
		
		const aType: string, bType: string = typeof(aValue), typeof(bValue)
		
		if aType == "table" and bType == "table" then
			differenceTable[key] = difference(aValue, bValue)
			
			continue
		end
		
		if aValue ~= bValue then
			differenceTable[key] = string.format("%* -> %*", aValue, bValue)
			
			continue
		end
		
		differenceTable[key] = aValue
	end
	
	return differenceTable
end

return function(a: { [any]: any }, b: { [any]: any }) : ()
	log(difference(a, b))
end
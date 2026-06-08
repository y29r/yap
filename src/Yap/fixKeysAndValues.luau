--!strict

const formatKey = require("./formatKey")
const correctValue = require("./correctValue")

return function(dictionary: { [any]: any }, object: any, longestKeyLength: number) : { [string]: any }
	const finalValue: { [string]: any } = {}
	
	for key: any, keyValue: any in dictionary do
		finalValue[formatKey(key, longestKeyLength)] = correctValue(
			type(keyValue) == "function" and keyValue(object[key], object) or object[key]
		)
	end
	
	return finalValue
end
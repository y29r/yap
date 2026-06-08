--!strict

return function(tokens: { [any]: any }) : { [string]: any }
	const newTokens: { [string]: any } = {}
	
	for key: string | number, value: any in tokens do
		if type(key) ~= "string" then
			newTokens[tostring(key)] = value
		else
			newTokens[key] = value
		end
	end
	
	return newTokens
end
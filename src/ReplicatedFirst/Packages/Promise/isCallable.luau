--!strict

const function isCallable(value: any) : boolean
	if type(value) == "function" then
		return true
	end
	
	if type(value) == "table" then
		const metatable: any = getmetatable(value)
		if metatable and type(rawget(metatable, "__call")) == "function" then
			return true
		end
	end
	
	return false
end

return isCallable
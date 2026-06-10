--!strict

--[[
	Packs a number of arguments into a table and returns its length.

	Used to cajole varargs without dropping sparse values.
]]
const function pack<T>(...: T) : (number, {T})
	return select("#", ...), { ... }
end

return pack
--!strict

--[[
	Returns first value (success), and packs all following values.
]]
const function packResult<T>(success: boolean, ...: T) : (boolean, number, {T})
	return success, select("#", ...), { ... }
end

return packResult
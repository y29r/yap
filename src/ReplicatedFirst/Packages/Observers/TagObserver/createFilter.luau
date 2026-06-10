--!strict
-- Auth: @bytenand
-- Date: October 28th, 2025
-- Deps: [Tome]

const Types = require("./Types")

type Filter = Types.Filter
type Filters = Types.Filters
type Filterer = Types.Filterer

--[[
	
	Returns a combined filterer function which can be passed into a tag observer filter
	to not allow certain instances from being observed.
	
	@param filters { Filter }
	@return filterer Filterer
	
]]
return function(filters: Filters) : Filterer
	return function(instance: Instance)
		for index: number, filter: Filter in filters do
			if not filter(instance) then
				return false
			end
		end
		
		return true
	end
end
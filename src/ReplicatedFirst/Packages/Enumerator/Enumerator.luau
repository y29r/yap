--!strict

local Types = require("./Types")

local Enumerator = {}
Enumerator.__index = Enumerator

function Enumerator.new(enumeratorName: string, foreName: string) : Types.Enumerator
	local self = setmetatable({
		__mainName = enumeratorName,
		__forename = foreName,
		[foreName] = {},
	}, Enumerator) :: any
	
	return (self :: Types.Enumerator)
end

function Enumerator:__tostring() : ()
	return string.format("%*(%*)", self.__mainName, self.__forename)
end

function Enumerator:addEnum(elementName: string) : Types.Enumerator
	self[self.__forename][elementName] = elementName
	
	return self
end

return Enumerator
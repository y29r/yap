--!strict

export type EnumMembers = { string }

const CustomEnum = {}
CustomEnum.__index = CustomEnum
CustomEnum.__newindex = function()
	error(string.format("Creating new members in this Enum is not allowed!"), 2)
end

export type CustomEnumInternal = { [string]: string }

export type CustomEnum = typeof(
	setmetatable({} :: CustomEnumInternal, CustomEnum)
)

--[[
	Creates an enum dictionary with some metamethods to prevent common mistakes.
]]
function CustomEnum.new(enumName: string, members: EnumMembers) : CustomEnum
	const enum: { [string]: string } = {}
	
	for index: number, memberName: string in members do
		enum[memberName] = memberName
	end
	
	return setmetatable(enum, CustomEnum)
end

return CustomEnum
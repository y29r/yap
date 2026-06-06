--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	Name = true,
	Value = true,
	EnumType = tostring,
})
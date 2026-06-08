--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	Interpolation = tostring,
	Time = true,
	Value = true,
	RightTangent = true,
	LeftTangent = true,
})
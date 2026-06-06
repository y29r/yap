--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const CFrameFormatter = require("./CFrame")

return createTableKeyValueFormatter({
	Interpolation = tostring,
	Time = true,
	Value = CFrameFormatter,
	RightTangent = true,
	LeftTangent = true,
})
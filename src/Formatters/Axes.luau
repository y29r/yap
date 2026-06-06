--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	X = true,
	Y = true,
	Z = true,
	Front = true,
	Back = true,
	Left = true,
	Right = true,
	Top = true,
	Bottom = true,
})
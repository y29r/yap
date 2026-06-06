--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	X = true,
	Y = true,
	Z = true,
	Magnitude = true,
	Unit = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
})
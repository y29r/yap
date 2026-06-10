--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	X = true,
	Y = true,
	Magnitude = true,
	Unit = createTableKeyValueFormatter({
		X = true,
		Y = true,
	}),
})
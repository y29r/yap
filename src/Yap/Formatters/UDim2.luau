--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const UDimFormatter = require("./UDim")

return createTableKeyValueFormatter({
	X = UDimFormatter,
	Y = UDimFormatter,
	Width = UDimFormatter,
	Height = UDimFormatter,
})
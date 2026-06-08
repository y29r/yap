--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Vector2Formatter = require("./Vector2")

return createTableKeyValueFormatter({
	Width = true,
	Height = true,
	Min = Vector2Formatter,
	Max = Vector2Formatter,
})
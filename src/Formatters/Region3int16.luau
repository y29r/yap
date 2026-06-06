--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Vector3int16Formatter = require("./Vector3int16")

return createTableKeyValueFormatter({
	Min = Vector3int16Formatter,
	Max = Vector3int16Formatter,
})
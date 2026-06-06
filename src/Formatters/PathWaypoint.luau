--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Vector3Formatter = require("./Vector3")

return createTableKeyValueFormatter({
	Action = tostring,
	Position = Vector3Formatter,
	Label = true,
})
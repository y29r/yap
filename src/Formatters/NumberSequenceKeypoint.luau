--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	Envelope = true,
	Time = true,
	Value = true,
})
--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Color3Formatter = require("./Color3")

return createTableKeyValueFormatter({
	Value = Color3Formatter,
	Time = true,
})
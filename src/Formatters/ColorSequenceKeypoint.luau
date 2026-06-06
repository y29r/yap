--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Color3Formatter = require("./Color3")

return createTableKeyValueFormatter({
	Value = Color3Formatter.createColor3Formatter(),
	Time = true,
})
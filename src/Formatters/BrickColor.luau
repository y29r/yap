--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Color3Formatter = require("./Color3")

return createTableKeyValueFormatter({
	Number = true,
	r = true,
	g = true,
	b = true,
	Name = true,
	Color = Color3Formatter,
})
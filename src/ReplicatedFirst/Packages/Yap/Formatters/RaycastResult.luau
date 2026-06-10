--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const InstanceFormatter = require("./Instance")
const Vector3Formatter = require("./Vector3")

return createTableKeyValueFormatter({
	Distance = true,
	Instance = InstanceFormatter,
	Material = tostring,
	Position = Vector3Formatter,
	Normal = Vector3Formatter,
})
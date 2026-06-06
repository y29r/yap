--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	none = tostring,
	SourceType = tostring,
	Uri = tostring,
	Object = tostring,
	Opaque = tostring,
})
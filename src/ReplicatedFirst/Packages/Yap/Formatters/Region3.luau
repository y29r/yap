--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const CFrameFormatter = require("./CFrame")
const Vector3Formatter = require("./Vector3")

return createTableKeyValueFormatter({
	CFrame = CFrameFormatter,
	Size = Vector3Formatter,
})
--!strict

const createTypeArray = require("../createTypeArray")
const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const stringFormatter = require("./string")

return createTableKeyValueFormatter({
	ExcludeInstances = createTypeArray,
	IncludeInstances = createTypeArray,
	IgnoreWater = true,
	CollisionGroup = stringFormatter,
	RespectCanCollide = true,
	BruteForceAllSlow = true,
	FilterDescendantsInstances = createTypeArray,
	FilterType = tostring,
})
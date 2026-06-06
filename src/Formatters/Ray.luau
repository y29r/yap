--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Vector3Formatter = require("./Vector3")

return createTableKeyValueFormatter({
	Unit = createTableKeyValueFormatter({
		Origin = true,
		Direction = true,
		
		CustomKeys = {
			Unit = function() : string
				return "** CYCLIC **"
			end,
		},
	}),
	Origin = Vector3Formatter,
	Direction = Vector3Formatter,
})
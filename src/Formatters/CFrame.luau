--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	X = true,
	Y = true,
	Z = true,
	
	LookVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
	UpVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
	RightVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
	
	Rotation = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
		
		LookVector = true,
		UpVector = true,
		RightVector = true,
		
		XVector = true,
		YVector = true,
		ZVector = true,
		
		CustomKeys = {
			Rotation = function(cframe: CFrame) : string
				return "** CYCLIC **"
			end,
		},
	}),
	
	XVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
	YVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
	ZVector = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
	}),
})
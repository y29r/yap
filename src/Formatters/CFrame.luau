--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const Vector3Formatter = require("./Vector3")

return createTableKeyValueFormatter({
	X = true,
	Y = true,
	Z = true,
	
	LookVector = Vector3Formatter,
	UpVector = Vector3Formatter,
	RightVector = Vector3Formatter,
	
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
			Rotation = "** CYCLIC **",
		},
	}),
	
	XVector = Vector3Formatter,
	YVector = Vector3Formatter,
	ZVector = Vector3Formatter,
})
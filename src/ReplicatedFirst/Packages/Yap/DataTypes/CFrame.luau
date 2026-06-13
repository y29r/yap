--!strict

const DataTypeTokens = require("../DataTypeTokens")

const Vector3Serializer = require("./Vector3")

const Themes = require("../Themes")

const colorString = require("../colorString")
const formatValue = require("../formatValue")

return function(value: CFrame) : any
	return {
		[DataTypeTokens.TypeToken] = {
			Type = "CFrame",
			CustomString = string.format("%*(%*, %*, %*, %*, %*, %*, %*, %*, %*, %*, %*, %*)",
				colorString("CFrame", Themes.DataTypeClassColor),
				formatValue("X", value.X),
				formatValue("Y", value.Y),
				formatValue("Z", value.Z),
				
				formatValue("R00", value.LookVector.X),
				formatValue("R01", value.LookVector.Y),
				formatValue("R02", value.LookVector.Y),
				
				formatValue("R10", value.UpVector.Y),
				formatValue("R11", value.UpVector.Y),
				formatValue("R12", value.UpVector.Y),
				
				formatValue("R20", value.RightVector.Y),
				formatValue("R21", value.RightVector.Y),
				formatValue("R22", value.RightVector.Y)
			),
		},
		
		X = value.X,
		Y = value.Y,
		Z = value.Z,
		
		LookVector = Vector3Serializer(value.LookVector),
		UpVector = Vector3Serializer(value.UpVector),
		RightVector = Vector3Serializer(value.RightVector),
		
		XVector = Vector3Serializer(value.XVector),
		YVector = Vector3Serializer(value.YVector),
		ZVector = Vector3Serializer(value.ZVector),
		
		Rotation = {
			[DataTypeTokens.TypeToken] = {
				Type = "CFrame",
				CustomString = string.format("%*(%*, %*, %*, %*, %*, %*, %*, %*, %*, %*, %*, %*)",
					colorString("CFrame", Themes.DataTypeClassColor),
					formatValue("X", value.Rotation.X),
					formatValue("Y", value.Rotation.Y),
					formatValue("Z", value.Rotation.Z),
					
					formatValue("R00", value.Rotation.LookVector.X),
					formatValue("R01", value.Rotation.LookVector.Y),
					formatValue("R02", value.Rotation.LookVector.Y),
					
					formatValue("R10", value.Rotation.UpVector.Y),
					formatValue("R11", value.Rotation.UpVector.Y),
					formatValue("R12", value.Rotation.UpVector.Y),
					
					formatValue("R20", value.Rotation.RightVector.Y),
					formatValue("R21", value.Rotation.RightVector.Y),
					formatValue("R22", value.Rotation.RightVector.Y)
				),
			},
			
			X = value.Rotation.X,
			Y = value.Rotation.Y,
			Z = value.Rotation.Z,
			
			LookVector = Vector3Serializer(value.Rotation.LookVector),
			UpVector = Vector3Serializer(value.Rotation.UpVector),
			RightVector = Vector3Serializer(value.Rotation.RightVector),
			
			XVector = Vector3Serializer(value.Rotation.XVector),
			YVector = Vector3Serializer(value.Rotation.YVector),
			ZVector = Vector3Serializer(value.Rotation.ZVector),
			
			Rotation = "** CYCLE **",
		},
	}
end
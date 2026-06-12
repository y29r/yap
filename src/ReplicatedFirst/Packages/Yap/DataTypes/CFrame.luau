--!strict

const DataTypeTokens = require("../DataTypeTokens")

const Vector3Serializer = require("./Vector3")

return function(value: CFrame) : any
	return {
		[DataTypeTokens.TypeToken] = {
			Type = "CFrame",
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
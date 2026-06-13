--!strict

const DataTypeTokens = require("../DataTypeTokens")

const Themes = require("../Themes")

const colorString = require("../colorString")
const formatValue = require("../formatValue")

return function(value: Vector3) : any
	return {
		[DataTypeTokens.TypeToken] = {
			Type = "Vector3",
			CustomString = string.format("%*(%*, %*, %*)",
				colorString("Vector3", Themes.DataTypeClassColor),
				formatValue("X", value.X),
				formatValue("Y", value.Y),
				formatValue("Z", value.Z)
			),
		},
		
		X = value.X,
		Y = value.Y,
		Z = value.Z,
		
		Unit = {
			[DataTypeTokens.TypeToken] = {
				Type = "Vector3",
				CustomString = string.format("%*(%*, %*, %*)",
					colorString("Vector3", Themes.DataTypeClassColor),
					formatValue("X", value.X),
					formatValue("Y", value.Y),
					formatValue("Z", value.Z)
				),
			},
			
			X = value.Unit.X,
			Y = value.Unit.Y,
			Z = value.Unit.Z,
			
			Unit = "** CYCLE **",
			Magnitude = 1,
		},
		
		Magnitude = value.Magnitude,
	}
end
--!strict

const formatValue = require("../formatValue")
const DataTypeTokens = require("../DataTypeTokens")

const colorString = require("../colorString")

const function upscale255(value: number) : number
	return math.clamp(math.round(value * 255), 0, 255)
end

return function(value: Color3) : any
	const hue: number, saturation: number, brightness: number = value:ToHSV()
	
	return {
		[DataTypeTokens.TypeToken] = {
			Type = "Color3",
			CustomString = string.format("%*(%*, %*, %*)",
				colorString("Color3", Color3.fromRGB(143, 180, 255)),
				formatValue("R", upscale255(value.R)),
				formatValue("G", upscale255(value.G)),
				formatValue("B", upscale255(value.B))
			),
		},
		
		R = value.R,
		G = value.G,
		B = value.B,
		
		Hex = "#" .. value:ToHex():upper(),
		
		HSV = {
			Hue = hue,
			Saturation = saturation,
			Value = brightness,
		},
	}
end
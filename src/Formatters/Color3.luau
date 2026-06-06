--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	CustomKeys = {
		RGB = function(color: Color3) : string
			return table.concat({ math.round(color.R * 255), math.round(color.G * 255), math.round(color.B* 255) }, ", ")
		end,
		
		HSV = function(color3: Color3) : string
			const hue: number, saturation: number, value: number = color3:ToHSV()
			
			return table.concat({
				string.format("%.2f°", hue * 360),
				string.format("%.2f%%", saturation * 100),
				string.format("%.2f%%", value * 100)
			}, ", ")
		end,
		
		Hex = function(color: Color3) : string
			return "#" .. string.upper(color:ToHex())
		end,
	},
})
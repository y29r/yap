--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const function scale255(value: number) : number
	return math.round(value * 255)
end

const function createHSVKeyFormatter(index: number) : (color: Color3) -> string
	return function(color: Color3) : string
		const hsv: { number } = { color:ToHSV() }
		
		return string.format("%.2f%%", hsv[index] * 100)
	end
end

const function createColor3Formatter() : (object: any) -> { [string]: any }
	return createTableKeyValueFormatter({
		R = scale255,
		G = scale255,
		B = scale255,
		
		CustomKeys = {
			HSV = createTableKeyValueFormatter({
				CustomKeys = {
					H = createHSVKeyFormatter(1),
					S = createHSVKeyFormatter(2),
					V = createHSVKeyFormatter(3),
				},
			}),
			Hex = function(color: Color3) : any
				return "#" .. string.upper(color:ToHex())
			end,
		},
	})
end

return {
	Private = createColor3Formatter(),
	
	createColor3Formatter = createColor3Formatter,
}
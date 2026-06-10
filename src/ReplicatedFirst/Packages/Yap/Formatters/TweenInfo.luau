--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	EasingDirection = tostring,
	Time = true,
	DelayTime = true,
	RepeatCount = function(repeatCount: number) : string | number
		return repeatCount == -1 and "-1 (infinite)" or repeatCount
	end,
	EasingStyle = tostring,
	Reverses = true,
})
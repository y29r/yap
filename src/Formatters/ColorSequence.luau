--!strict

const formatKey = require("../formatKey")
const getLongestKeyLength = require("../getLongestKeyLength")

const Color3Formatter = require("./Color3")

return function(colorSequence: ColorSequence) : { [string]: any }
	const keypointMap: { [string]: any } = {}
	keypointMap["++Type"] = "ColorSequence"
	
	const longestKeyLength: number = getLongestKeyLength(colorSequence.Keypoints, {})
	
	for index: number, colorSequenceKeypoint: ColorSequenceKeypoint in colorSequence.Keypoints do
		keypointMap[formatKey(colorSequenceKeypoint.Time, longestKeyLength)] = Color3Formatter(colorSequenceKeypoint.Value)
	end
	
	return keypointMap
end
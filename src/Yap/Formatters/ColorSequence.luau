--!strict

const formatKey = require("../formatKey")
const getLongestKeyLength = require("../getLongestKeyLength")

const Color3Formatter = require("./Color3")

return function(colorSequence: ColorSequence) : { [string]: any }
	const decimalKeypointMap: { [string]: any } = {}
	decimalKeypointMap["++Type"] = "ColorSequence"
	
	for index: number, colorSequenceKeypoint: ColorSequenceKeypoint in colorSequence.Keypoints do
		decimalKeypointMap[string.format("%.3f", colorSequenceKeypoint.Time)] = Color3Formatter(colorSequenceKeypoint.Value)
	end
	
	const longestKeyLength: number = getLongestKeyLength(decimalKeypointMap, {})
	
	const keypointMap: { [string]: any } = {}
	
	for key: string, value: any in decimalKeypointMap do
		keypointMap[formatKey(key, longestKeyLength)] = value
	end
	
	return keypointMap
end
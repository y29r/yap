--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const NumberSequenceKeypointFormatter = require("./NumberSequenceKeypoint")

return createTableKeyValueFormatter({
	Keypoints = function(keypoints: { NumberSequenceKeypoint }) : { any }
		const formattedKeypoints: { any } = {}
		
		for index: number, keypoint: NumberSequenceKeypoint in keypoints do
			table.insert(formattedKeypoints, NumberSequenceKeypointFormatter(keypoint))
		end
		
		return formattedKeypoints
	end,
})
--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

const NumberSequenceKeypointFormatter = require("./NumberSequenceKeypoint")

return createTableKeyValueFormatter({
	CustomKeys = {
		Keypoints = function(object: NumberSequence) : { any }
			const keypoints: { any } = {}
			
			for index: number, keypoint: NumberSequenceKeypoint in object.Keypoints do
				table.insert(keypoints, NumberSequenceKeypointFormatter(keypoint))
			end
			
			return keypoints
		end
	},
})
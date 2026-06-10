--!strict

const formatKey = require("../formatKey")
const getLongestKeyLength = require("../getLongestKeyLength")
const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	UnixTimestamp = true,
	UnixTimestampMillis = true,
	
	CustomKeys = {
		UniversalTime = function(dateTime: DateTime) : ()
			const theTime: { [string]: number } = dateTime:ToUniversalTime() :: { [any]: any }
			const longestKeyLength: number = getLongestKeyLength(theTime, {})
			
			const fixedTime: { [string]: any } = {}
			
			for key: string, value: number in theTime do
				fixedTime[formatKey(key, longestKeyLength)] = value
			end
			
			return fixedTime
		end,
		
		LocalTime = function(dateTime: DateTime) : ()
			const theTime: { [string]: number } = dateTime:ToLocalTime() :: { [any]: any }
			const longestKeyLength: number = getLongestKeyLength(theTime, {})
			
			const fixedTime: { [string]: any } = {}
			
			for key: string, value: number in theTime do
				fixedTime[formatKey(key, longestKeyLength)] = value
			end
			
			return fixedTime
		end,
		
		IsoDate = function(dateTime: DateTime) : string
			return dateTime:ToIsoDate()
		end,
	},
})
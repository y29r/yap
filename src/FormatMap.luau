--!strict

const Config = require("./Config")

const createTableKeyValueFormatter: (keys: { [string]: true }) -> (object: any) -> { [string]: any } = require("./createTableKeyValueFormatter")
const createWrapValueWithinTypeWrapper: (valueType: string) -> (value: any) -> string = require("./createWrapValueWithinTypeWrapper")

return {
	["string"] = function(value: string) : string
		return string.format("%*%*%*", Config.PrefferedStringQuote, value, Config.PrefferedStringQuote)
	end,
	["number"] = tostring,
	["function"] = tostring,
	["Instance"] = function(value: Instance) : string
		return string.format("Instance(%*)", value:GetFullName())
	end,
	["Axes"] = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
		Front = true,
		Back = true,
		Left = true,
		Right = true,
		Top = true,
		Bottom = true,
	}),
	["CFrame"] = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
		LookVector = true,
		UpVector = true,
		RightVector = true,
		Rotation = true,
		XVector = true,
		YVector = true,
		ZVector = true,
	}),
	["Vector3"] = createTableKeyValueFormatter({
		X = true,
		Y = true,
		Z = true,
		Magnitude = true,
		Unit = true,
	}),
}
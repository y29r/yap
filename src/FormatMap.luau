--!strict

return {
	["number"] = tostring,
	["function"] = tostring,
	
	["string"] = require("./Formatters/string"),
	["Instance"] = require("./Formatters/Instance"),
	["Axes"] = require("./Formatters/Axes"),
	["CFrame"] = require("./Formatters/CFrame"),
	["Vector3"] = require("./Formatters/Vector3"),
	["Vector2"] = require("./Formatters/Vector2"),
	["Color3"] = require("./Formatters/Color3").Private,
	["ColorSequenceKeypoint"] = require("./Formatters/ColorSequenceKeypoint"),
	["NumberSequenceKeypoint"] = require("./Formatters/NumberSequenceKeypoint"),
	["NumberSequence"] = require("./Formatters/NumberSequence"),
	["Enum"] = require("./Formatters/Enum"),
	["EnumItem"] = require("./Formatters/EnumItem"),
	["RaycastResult"] = require("./Formatters/RaycastResult"),
	["Rect"] = require("./Formatters/Rect"),
	["RotationCurveKey"] = require("./Formatters/RotationCurveKey"),
	["UDim"] = require("./Formatters/UDim"),
	["UDim2"] = require("./Formatters/UDim2"),
	["Vector2int16"] = require("./Formatters/Vector2int16"),
	["BrickColor"] = require("./Formatters/BrickColor"),
}
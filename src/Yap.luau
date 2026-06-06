--!strict

const Types = require("./Types")

export type Tokens = Types.Tokens
export type StringTokens = Types.StringTokens

export type Config = Types.Config

const ConfigManager = require("./ConfigManager")

const Yap = {
	now = require("./now"),
	this = require("./this"),
	
	Config = ConfigManager,
}

return Yap
--!strict

const Types = require("./Types")

export type Tokens = Types.Tokens
export type StringTokens = Types.StringTokens

const Yap = {
	now = require("./now"),
	this = require("./this"),
}

return Yap
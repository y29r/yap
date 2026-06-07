--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

export type Tokens = Types.Tokens
export type StringTokens = Types.StringTokens

export type Config = Types.Config

const Yap = {
	log = require("./log"),
	this = require("./this"),
	error = require("./error"),
	info = require("./info"),
	warn = require("./warn"),
	clear = require("./clearOutput"),
	getLogHistory = require("./getLogHistory"),
	
	MessageOut = LogService.MessageOut,
	
	Config = require("./ConfigManager"),
}

return Yap
--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

export type Tokens = Types.Tokens
export type StringTokens = Types.StringTokens

export type Config = Types.Config

const Yap = {
	log = require("./Public/log"),
	this = require("./Public/this"),
	error = require("./Public/error"),
	info = require("./Public/info"),
	warn = require("./Public/warn"),
	clear = require("./Public/clearOutput"),
	getLogHistory = require("./Public/getLogHistory"),
	
	MessageOut = LogService.MessageOut,
	
	Config = require("./ConfigManager"),
}

return Yap
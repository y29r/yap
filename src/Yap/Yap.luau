--!strict

const LogService: LogService = game:GetService("LogService")

const Types = require("./Types")

export type Tokens = Types.Tokens
export type StringTokens = Types.StringTokens

export type Config = Types.Config

const log = require("./Public/log")
const this = require("./Public/this")
const error = require("./Public/error")
const info = require("./Public/info")
const warn = require("./Public/warn")
const clear = require("./Public/clearOutput")
const dif = require("./Public/dif")
const getLogHistory = require("./Public/getLogHistory")

const YapApplication = require("./Interface/YapApplication")

const Yap = {
	log = log,
	this = this,
	error = error,
	info = info,
	warn = warn,
	clear = clear,
	getLogHistory = getLogHistory,
	dif = dif,
	
	MessageOut = LogService.MessageOut,
	
	Config = require("./ConfigManager"),
	
	open = YapApplication.open,
	close = YapApplication.close,
}

return Yap
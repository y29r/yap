--!strict

const Types = require("./Types")

type Callback = Types.Callback

const packResult = require("./packResult")
const makeErrorHandler = require("./makeErrorHandler")

--[[
	Calls a Promise executor with error handling.
]]
const function runExecutor(traceback: string?, callback: Callback, ...: any) : (boolean, number, {any})
	return packResult(xpcall(callback, makeErrorHandler(traceback), ...))
end

return runExecutor
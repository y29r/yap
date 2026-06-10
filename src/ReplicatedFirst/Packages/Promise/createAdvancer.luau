--!strict

const runExecutor = require("./runExecutor")

const Types = require("./Types")

type Callback = Types.Callback

--[[
	Creates a function that invokes a callback with correct error handling and
	resolution mechanisms.
]]
const function createAdvancer(traceback: string?, callback: Callback, resolve: Callback, reject: Callback) : Callback
	return function(...: any)
		const ok: boolean, resultLength: number, result: {any} = runExecutor(traceback, callback, ...)
		
		-- if ok then
		-- 	resolve(unpack(result, 1, resultLength))
		-- else
		-- 	reject(result[1])
		-- end
		
		;(ok and resolve or reject)(ok and unpack(result, 1, resultLength) or result[1])
	end
end

return createAdvancer
--!strict

const Error = require("./Error/Error")

type Error = Error.Error

const function makeErrorHandler(traceback: string?) : (error: Error) -> Error
	assert(traceback ~= nil, "traceback is nil")
	
	return function(error: Error) : Error
		-- If the error object is already a table, forward it directly.
		-- Should we extend the error here and add our own trace?
		
		if type(error) == "table" then
			return error
		end
		
		return Error.new({
			error = error,
			kind = Error.Kind.ExecutionError,
			trace = debug.traceback(tostring(error), 2),
			context = "Promise created at:\n\n" .. traceback,
		})
	end
end

return makeErrorHandler
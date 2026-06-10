--!strict

const CustomEnum = require("../CustomEnum/CustomEnum")

--[=[
	An object to represent runtime errors that occur during execution.
	Promises that experience an error like this will be rejected with
	an instance of this object.

	@class Error
]=]
const Error = {
	Kind = CustomEnum.new("Promise.Error.Kind", {
		"ExecutionError",
		"AlreadyCancelled",
		"NotResolvedInTime",
		"TimedOut",
	}),
}
Error.__index = Error

export type ErrorInternal = {
	error: string,
	trace: string?,
	context: string,
	kind: string?,
	parent: Error?,
	createdTick: number,
	createdTrace: string,
}

export type ErrorOptions = {
	error: string,
	trace: string?,
	context: string,
	kind: string?,
}

export type Error = typeof(
	setmetatable({} :: ErrorInternal, Error)
)

const function createEmptyErrorOptions() : ErrorOptions
	return {
		error = "[This error has no error text.]",
		trace = "",
		context = "",
		kind = nil,
	}
end

function Error.new(options: ErrorOptions?, parent: Error?) : Error
	const ensuredOptions: ErrorOptions = options or createEmptyErrorOptions()
	
	return setmetatable({
		error = tostring(ensuredOptions.error),
		trace = ensuredOptions.trace,
		context = ensuredOptions.context,
		kind = ensuredOptions.kind,
		parent = parent,
		createdTick = os.clock(),
		createdTrace = debug.traceback(),
	}, Error)
end

function Error.is(anything: any) : boolean
	if type(anything) == "table" then
		const metatable = getmetatable(anything)
		
		if type(metatable) == "table" then
			return rawget(anything, "error") ~= nil and type(rawget(metatable, "extend")) == "function"
		end
	end
	
	return false
end

function Error.isKind(anything: any, kind: string) : boolean
	assert(kind ~= nil, "Argument #2 to Promise.Error.isKind must not be nil")
	
	return Error.is(anything) and anything.kind == kind
end

function Error.extend(self: Error, options: ErrorOptions?) : Error
	const ensuredOptions: ErrorOptions = options or createEmptyErrorOptions()
	
	ensuredOptions.kind = ensuredOptions.kind or self.kind
	
	return Error.new(ensuredOptions, self)
end

function Error.getErrorChain(self: Error) : { Error }
	const runtimeErrors: { Error } = { self }
	
	while runtimeErrors[#runtimeErrors].parent do
		const parentError: Error? = runtimeErrors[#runtimeErrors].parent
		if not parentError then
			break
		end
		
		table.insert(runtimeErrors, parentError)
	end
	
	return runtimeErrors
end

function Error.__tostring(self: Error) : string
	const errorStrings: { string } = {
		string.format("-- Promise.Error(%s) --", self.kind or "?"),
	}
	
	for index: number, runtimeError: Error in self:getErrorChain() do
		table.insert(
			errorStrings,
			table.concat({
				runtimeError.trace or runtimeError.error,
				runtimeError.context,
			}, "\n")
		)
	end
	
	return table.concat(errorStrings, "\n")
end

return Error
--!strict

const IGNORE_YAP_STACK_PATTERN: string = ".Yap."

return function(traceback: string) : { string } | string
	const traces: { string } = string.split(traceback, "\n")
	const validatedTraces: { string } = {}
	
	for index: number, trace: string in traces do
		if string.len(trace) > 0 and not string.find(trace, IGNORE_YAP_STACK_PATTERN, 1, true) then
			table.insert(validatedTraces, trace)
		end
	end
	
	return #validatedTraces == 1 and validatedTraces[1] or validatedTraces
end
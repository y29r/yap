--!strict

return function(traceback: string) : { string }
	const traces: { string } = string.split(traceback, "\n")
	const validatedTraces: { string } = {}
	
	for index: number, trace: string in traces do
		if string.len(trace) > 0 then
			table.insert(validatedTraces, trace)
		end
	end
	
	return validatedTraces
end
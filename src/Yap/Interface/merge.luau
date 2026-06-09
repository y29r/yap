--!strict

return function(...: { [any]: any }) : { [any]: any }
	const c: { [any]: any } = {}
	
	for index: number, dictionary: { [any]: any } in {...} do
		for key: any, value: any in dictionary do
			c[key] = value
		end
	end
	
	return c
end
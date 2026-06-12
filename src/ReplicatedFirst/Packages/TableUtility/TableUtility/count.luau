--!strict

return function(...: { [any]: any }) : number
	local count: number = 0
	
	for index: number, table: { [any]: any } in {...} do
		if table == nil then
			continue
		end
		
		for key: any in table do
			count += 1
		end
	end
	
	return count
end
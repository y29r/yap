--!strict

const DataTypeSerializers = {
	CFrame = require("./DataTypes/CFrame"),
	Vector3 = require("./DataTypes/Vector3"),
}

const function formatContext(context: { [any]: any }) : { [any]: any }
	const formattedContext: { [any]: any } = {}
	
	for key: any, value: any in context do
		const valueType: string = typeof(value)
		if valueType == "table" then
			formattedContext[key] = formatContext(value)
		else
			const serializer: (value: any) -> any = DataTypeSerializers[valueType]
			
			formattedContext[key] = serializer and serializer(value) or value
		end
	end
	
	return formattedContext
end

return formatContext
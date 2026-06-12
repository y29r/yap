--!strict

const function colorString(string: string, color: Color3) : string
	return `<font color='#{color:ToHex()}'>` .. string .. "</font>"
end

return colorString
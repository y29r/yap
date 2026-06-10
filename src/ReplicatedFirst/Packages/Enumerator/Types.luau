--!strict

export type Enumerator = {
	__mainName: string,
	__forename: string,
	
	[string]: any,
	
	new: (enumeratorName: string, foreName: string) -> Enumerator,
	
	addEnum: (self: Enumerator, elementName: string) -> Enumerator,
}

return false
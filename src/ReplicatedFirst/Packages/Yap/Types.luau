--!strict

export type LogNode = {
	message: string,
	messageType: Enum.MessageType,
	timestamp: number,
	context: { [any]: any },
}

return false
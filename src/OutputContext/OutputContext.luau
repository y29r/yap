--!strict

const Types = require("../Types")

type Tokens = Types.Tokens

const deepEqual = require("./deepEqual")

const EmptyContext: Tokens = {}

local lastMessage: string? = nil
local lastContext: Tokens? = nil

const function isLastLogTheSame(message: string, tokens: Tokens) : boolean
	return message == lastMessage and deepEqual(tokens, lastContext or EmptyContext)
end

const function updateLastLog(message: string, tokens: Tokens?) : ()
	lastMessage = message
	lastContext = tokens
end

return {
	isLastLogTheSame = isLastLogTheSame,
	updateLastLog = updateLastLog,
	
	currentDuplicateLogStreak = 0,
	
	EmptyContext = EmptyContext,
}
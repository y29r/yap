--!strict

const Types: boolean = require("./Types")

export type Config = Types.Config

return {
	Strict               = true, -- if true 
	
	TracebackEnabled     = true, -- if true, the context table includes a ++Trace key-value with information about the stack
	
	PrefferedStringQuote = "\"", -- takes priority when displaying a string type
	
	SpacersEnabled       = true, -- if true, a spacer is created for every key to ensure an equal length for all the keys
	SpacerSymbol         = " ",  -- the string which is repeated
	SpacerPrefix         = "",   -- the prefix string that gets concatenated before the spacers
	SpacerOffset         = 1,    -- how many extra spacers there are for each key
	
	RoundingEnabled      = true, -- if true, all numbers within types will be rounded. Some numbers are exempt
	
	-- the level of fractional precision that numbers recieve when being formatted
	-- for example the number 3.14159265 with a precision of 0.001 will become 3.142
	RoundPrecision       = 0.0001,
	
	-- TODO
	DuplicateLogsEnabled = true, -- if true, duplicate logs will be dropped after Config.MaxDuplicateLogs
	MaxDuplicateLogs     = 100,  -- the amount of duplicate logs allowed before new duplicate logs get dropped
	
	ProductionOverrides  = {},   -- optional config overrides that take authority inside production builds
} :: Config
--!strict

const Types: boolean = require("./Types")

export type Config = Types.Config

return {
	Strict = true,
	
	TracebackEnabled = true,
	
	PrefferedStringQuote = "\"",
	
	SpacersEnabled = true,
	SpacerSymbol = " ",
	SpacerPrefix = "",
	SpacerOffset = 1,
	
	RoundNumbers = true,
	RoundPrecision = 0.0001,
	
	ProductionOverrides = {},
} :: Config
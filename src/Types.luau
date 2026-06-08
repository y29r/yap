--!strict

export type Tokens = { [any]: any }
export type StringTokens = { [string]: any }

export type TableKeyValueFormatter = (object: any) -> { [string]: any }
export type TableKeys = { [string]: true | TableKeyValueFormatter | any, CustomKeys: { [string]: (value: any) -> ...any }? }
export type createTableKeyValueFormatter = (keys: TableKeys) -> TableKeyValueFormatter

export type LogHistoryNode = {
	context: { [any]: any },
	message: string,
	messageType: Enum.MessageType,
	timestamp: number,
}

export type BaseConfig = {
	Strict: boolean,
	
	TracebackEnabled: boolean,
	PrefferedStringQuote: string,
	
	SpacersEnabled: boolean,
	SpacerSymbol: string,
	SpacerPrefix: string,
	SpacerOffset: number,
	
	RoundingEnabled: boolean,
	RoundPrecision: number,
	
	DuplicateLogsEnabled: boolean,
	MaxDuplicateLogs: number,
	ClearCacheSeconds: number,
}

-- TODO: Once the type solver becomes more stable, use the optional type function instead of creating a new type
export type PartialBaseConfig = {
	Strict: boolean?,
	
	TracebackEnabled: boolean?,
	PrefferedStringQuote: string?,
	
	SpacersEnabled: boolean?,
	SpacerSymbol: string?,
	SpacerPrefix: string?,
	SpacerOffset: number?,
	
	RoundingEnabled: boolean?,
	RoundPrecision: number?,
	
	DuplicateLogsEnabled: boolean?,
	MaxDuplicateLogs: number?,
	ClearCacheSeconds: number?,
}

export type Config = BaseConfig & {
	ProductionOverrides: PartialBaseConfig,
}

return false
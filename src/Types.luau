--!strict

export type Tokens = { [any]: any }
export type StringTokens = { [string]: any }

export type TableKeyValueFormatter = (object: any) -> { [string]: any }
export type TableKeys = { [string]: true | TableKeyValueFormatter | any, CustomKeys: { [string]: (value: any) -> ...any }? }
export type createTableKeyValueFormatter = (keys: TableKeys) -> TableKeyValueFormatter

export type BaseConfig = {
	Strict: boolean,
	
	TracebackEnabled: boolean,
	PrefferedStringQuote: string,
	
	SpacersEnabled: boolean,
	SpacerSymbol: string,
	SpacerPrefix: string,
	SpacerOffset: number,
	
	RoundNumbers: boolean,
	RoundPrecision: number,
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
	
	RoundNumbers: boolean?,
	RoundPrecision: number?,
}

export type Config = BaseConfig & {
	ProductionOverrides: PartialBaseConfig,
}

return false
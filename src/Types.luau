--!strict

export type Tokens = { [any]: any }
export type StringTokens = { [string]: any }

export type TableKeyValueFormatter = (object: any) -> { [string]: any }
export type TableKeys = { [string]: true | TableKeyValueFormatter | any, CustomKeys: { [string]: (value: any) -> ...any }? }
export type createTableKeyValueFormatter = (keys: TableKeys) -> TableKeyValueFormatter

return false
--!strict
-- Auth: @bytenand
-- Date: November 28th, 2025
-- Deps: [Tome]

export type Filter = (instance: Instance, ...any) -> boolean
export type Filterer = (instances: Instance) -> boolean

export type Filters = { Filter }

return false
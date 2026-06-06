--!strict

const RunService: RunService = game:GetService("RunService")

const Types: boolean = require("./Types")

export type Config = Types.Config
export type PartialBaseConfig = Types.PartialBaseConfig

const Config: Config = require("./Config")

const ConfigManager = {}

const isProductionEnvironment: boolean = not RunService:IsStudio()
const ProductionOverrides: PartialBaseConfig = Config.ProductionOverrides

function ConfigManager.get(config: string) : any
	const productionOverride: any = ProductionOverrides[config]
	
	return if isProductionEnvironment then
		if productionOverride ~= nil then
			productionOverride
		else
			Config[config]
		else
			Config[config]
end

function ConfigManager.set(config: string, value: any) : ()
	assert(typeof(Config[config]) == typeof(value), "Cannot set a different type of value inside the config")
	
	Config[config] = value
end

return ConfigManager
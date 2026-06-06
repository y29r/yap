--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")

return createTableKeyValueFormatter({
	AcousticAbsorption = true,
	Density = true,
	Friction = true,
	Elasticity = true,
	FrictionWeight  = true,
	ElasticityWeight = true,
})
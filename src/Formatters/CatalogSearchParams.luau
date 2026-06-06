--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")
const createEnumArray = require("../createEnumArray")

return createTableKeyValueFormatter({
	SearchKeyword = tostring,
	MinPrice = true,
	MaxPrice = true,
	IncludeOffSale = true,
	CreatorName = tostring,
	CreatorId = true,
	Limit = true,
	CreatorType = tostring,
	SortType = tostring,
	SortAggregation = tostring,
	CategoryFilter = tostring,
	SalesTypeFilter = tostring,
	BundleTypes = createEnumArray,
	AssetTypes = createEnumArray,
})
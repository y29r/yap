--!strict

const createTableKeyValueFormatter = require("../createTableKeyValueFormatter")
const createEnumArray = require("../createEnumArray")

const stringFormatter = require("./string")

return createTableKeyValueFormatter({
	SearchKeyword = stringFormatter,
	MinPrice = true,
	MaxPrice = true,
	IncludeOffSale = true,
	CreatorName = stringFormatter,
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
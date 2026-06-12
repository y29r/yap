--!strict
-- Author : @bytenand (Git)
-- Date : 03(D)/10(M)/2024(Y)

const isEmpty = require("@self/isEmpty")
const shuffle = require("@self/shuffle")
const deepCopy = require("@self/deepCopy")
const reconcile = require("@self/reconcile")
const stringReconcile = require("@self/stringReconcile")
const merge = require("@self/merge")
const deepCompare = require("@self/deepCompare")
const withoutKeys = require("@self/withoutKeys")
const count = require("@self/count")

const TableUtility = {
	isEmpty = isEmpty,
	shuffle = shuffle,
	deepCopy = deepCopy,
	reconcile = reconcile,
	stringReconcile = stringReconcile,
	merge = merge,
	deepCompare = deepCompare,
	withoutKeys = withoutKeys,
	count = count,
}

return TableUtility
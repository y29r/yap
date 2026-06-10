--!strict
-- Author : @bytenand (Git)
-- Date : 03(D)/10(M)/2024(Y)

local isEmpty = require("@self/isEmpty")
local shuffle = require("@self/shuffle")
local deepCopy = require("@self/deepCopy")
local reconcile = require("@self/reconcile")
local stringReconcile = require("@self/stringReconcile")
local merge = require("@self/merge")
local deepCompare = require("@self/deepCompare")
local withoutKeys = require("@self/withoutKeys")

local TableUtility = {
	isEmpty = isEmpty,
	shuffle = shuffle,
	deepCopy = deepCopy,
	reconcile = reconcile,
	stringReconcile = stringReconcile,
	merge = merge,
	deepCompare = deepCompare,
	withoutKeys = withoutKeys,
}

return TableUtility
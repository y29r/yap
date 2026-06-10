--!strict
-- Auth: @bytenand
-- Date: October 28th, 2025
-- Deps: [Tome]

const createTagListener = require("./createTagListener")
const createFilter = require("./createFilter")
const getAll = require("./getAll")
const createTemporaryTag = require("./createTemporaryTag")

const Enscope = require("./Filters/Enscope")
const HasTag = require("./Filters/HasTag")
const DoesntHaveTag = require("./Filters/DoesntHaveTag")
const EqualAttribute = require("./Filters/EqualAttribute")
const Character = require("./Filters/Character")

const Types = require("./Types")

export type Filter = Types.Filter
export type Filterer = Types.Filterer

export type TemporaryTag = createTemporaryTag.TemporaryTag

const TagObserver = {
	getAll = getAll,
	observeAdd = createTagListener("GetInstanceAddedSignal", true),
	observeRemove = createTagListener("GetInstanceRemovedSignal", false),
	
	createTagListener = createTagListener,
	createFilter = createFilter,
	createTemporaryTag = createTemporaryTag,
	
	Enscope = Enscope,
	HasTag = HasTag,
	DoesntHaveTag = DoesntHaveTag,
	EqualAttribute = EqualAttribute,
	Character = Character,
}

return TagObserver
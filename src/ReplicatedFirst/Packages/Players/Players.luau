--!strict
-- Auth: @bytenand (Roblox) @y29r (Github)
-- Date: November 25th, 2025
-- Deps: []

local PlayersService = game:GetService("Players")

local map = require("./map")
local getAll = require("./getAll")
local forEach = require("./forEach")
local isAlive = require("./isAlive")
local isDead = require("./isDead")
local isInRadius = require("./isInRadius")
local getInRadius = require("./getInRadius")
local callIfAlive = require("./callIfAlive")
local getAllExcept = require("./getAllExcept")
local forEachExcept = require("./forEachExcept")
local attachBinding = require("./attachBinding")
local getFromCharacter = require("./getFromCharacter")
local callIfFromTouched = require("./callIfFromTouched")

local Players = {
	Local = PlayersService.LocalPlayer :: Player,
	
	map = map,
	
	getAll = getAll,
	getAllExcept = getAllExcept,
	
	forEach = forEach,
	forEachExcept = forEachExcept,
	
	getInRadius = getInRadius,
	isInRadius = isInRadius,
	
	isDead = isDead,
	isAlive = isAlive,
	callIfAlive = callIfAlive,
	callIfFromTouched = callIfFromTouched,
	getFromCharacter = getFromCharacter,
	
	attachBinding = attachBinding,
	Joined = PlayersService.PlayerAdded,
	Left = PlayersService.PlayerRemoving,
	
	Reference = PlayersService,
}

return Players
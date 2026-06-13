--!strict

const Yap = require("@game/ReplicatedFirst/Packages/Yap/Yap")

const Controller = {}

function Controller.init() : ()
	
end

function Controller.defer() : ()
	Yap.open()
	
	while true do
		Yap.output("hello this is a test", {
			apples = 25,
			lemons = 12.526,
			aBigNumber = 1958219,
			myFunction = function() end,
			items = {
				swords = {
					iron = 25,
					diamond = 3,
					emerald = 0,
				},
				shields = {
					wooden = 3,
					copper = 9,
					stone = 2,
				},
				armor = {
					leather = 25,
					iron = 3,
				},
			},
			placement = CFrame.identity,
			myFavouriteString = "hello world!",
			myColor = Color3.fromRGB(255, 216, 87),
			myBoolean = true,
			myBooleans = { true, false, true, true, true, false, false, true },
		})
		
		task.wait(1)
	end
end

return Controller
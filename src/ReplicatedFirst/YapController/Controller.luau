--!strict

const Yap = require("@game/ReplicatedFirst/Packages/Yap/Yap")

const Controller = {}

function Controller.init() : ()
	
end

function Controller.defer() : ()
	Yap.open()
end

return Controller
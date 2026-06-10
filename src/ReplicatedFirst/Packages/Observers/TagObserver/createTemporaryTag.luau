--!strict
-- Auth: @bytenand
-- Date: October 28th, 2025
-- Deps: [Tome]

const HttpService: HttpService = game:GetService("HttpService")

const getAll = require("./getAll")

export type TemporaryTag = {
	tag: string,
	destroy: () -> (),
}

return function() : TemporaryTag
	const temporaryTag: string = HttpService:GenerateGUID(false)
	
	return {
		tag = temporaryTag,
		destroy = function() : ()
			for index: number, instance: Instance in getAll(temporaryTag) do
				instance:RemoveTag(temporaryTag)
			end
		end,
	}
end
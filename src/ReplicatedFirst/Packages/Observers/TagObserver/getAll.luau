--!strict
-- Auth: @bytenand
-- Date: October 28th, 2025
-- Deps: [Tome]

const CollectionService: CollectionService = game:GetService("CollectionService")

return function(tag: string) : { any }
	return CollectionService:GetTagged(tag)
end
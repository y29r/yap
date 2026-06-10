--!strict

local function shuffle(array: {any}) : ()
	for index: number = 2, #array do
		local newIndex: number = math.random(1, index)
		
		array[index], array[newIndex] = array[newIndex], array[index]
	end
end

return shuffle
local Otter = require(script.Parent.Otter)
local useAnimatedBinding = require(script.Parent.useAnimatedBinding)
local useMotor = require(script.Parent.useMotor)

export type Goal = Otter.Goal<any>
export type SpringOptions = Otter.SpringOptions

return {
	useAnimatedBinding = useAnimatedBinding,
	useMotor = useMotor,
	ease = Otter.ease,
	spring = Otter.spring,
	instant = Otter.instant,
}

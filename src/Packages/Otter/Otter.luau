--!strict
local createGroupMotor = require(script.Parent.createGroupMotor)
local createSingleMotor = require(script.Parent.createSingleMotor)
local ease = require(script.Parent.ease)
local spring = require(script.Parent.spring)
local instant = require(script.Parent.instant)
local types = require(script.Parent.types)

local AnimationStepSignal = require(script.Parent.AnimationStepSignal)

export type Goal<T> = types.Goal<T>
export type Motor<T, U> = types.Motor<T, U>
export type Unsubscribe = types.Unsubscribe
export type MotorCallback<T> = types.MotorCallback<T>

export type SingleMotor = createSingleMotor.SingleMotor
export type GroupMotor = createGroupMotor.GroupMotor

export type SpringOptions = spring.SpringOptions
export type EaseOptions = ease.EaseOptions

return {
	createGroupMotor = createGroupMotor,
	createSingleMotor = createSingleMotor,
	ease = ease,
	spring = spring,
	instant = instant,
	__devAnimationStepSignal = AnimationStepSignal,
}
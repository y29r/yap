--!strict

const Players: Players = game:GetService("Players")

const React = require("@game/ReplicatedFirst/Packages/React/React")
const ReactRoblox = require("@game/ReplicatedFirst/Packages/React/ReactRoblox")

const Interface = require("./Components/Interface")

const AppApplication = {}

const AppRoot: ReactRoblox.RootType = ReactRoblox.createRoot(Instance.new("Folder"))

function AppApplication.open() : ()
	AppRoot:render({
		Portal = ReactRoblox.createPortal({
			Interface = React.createElement(Interface, {})
		}, Players.LocalPlayer:WaitForChild("PlayerGui"))
	})
end

function AppApplication.close() : ()
	AppRoot:unmount()
end

return AppApplication
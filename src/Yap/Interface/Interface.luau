--!strict

const GuiComponent = require("./Components/Gui")

const React = require("../../Packages/React/React")

const create = React.createElement

export type Props = {
	children: { React.Element<any> }
}

const function Interface(props: Props)
	const state: number, setState: React.SetState<number> = React.useState(2)
	
	return create("ScreenGui", {
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	}, {
		Container = create("Frame", {
			Name = "Container",
			Size = UDim2.new(0, 852, 0, 724),
			BorderColor3 = Color3.fromRGB(0, 0, 0),
			BackgroundTransparency = 0.1,
			Position = UDim2.new(0.27, 0, 0.12, 0),
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(43, 36, 44),
		}, {
			Corner = create("UICorner", {
				CornerRadius = UDim.new(0, 12),
			}),
			
		}),
	})
end

return Interface
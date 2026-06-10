--!strict

const React = require("@game/ReplicatedFirst/Packages/React/React")

const create = React.createElement

const Table = require("@game/ReplicatedFirst/Packages/TableUtility/TableUtility")

export type Props = {
	Text: string,
	
	children: { React.Element<any> }?
}

const function Context(props: Props)
	const showChildren: boolean, setShowChildren: React.SetState<boolean> = React.useState(false)
	
	return create("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 24),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	}, Table.merge({
		Label = create("TextButton", {
			AutomaticSize = Enum.AutomaticSize.X,
			Size = UDim2.new(1, 0, 0, 24),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 16,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Text = props.Text,
			FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Regular),
			TextXAlignment = Enum.TextXAlignment.Left,
			[React.Event.Activated] = function(reference: TextButton) : ()
				setShowChildren(not showChildren)
			end,
		}),
		ListLayout = create("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = create("UIPadding", {
			PaddingLeft = UDim.new(0, 32),
		}),
	}, showChildren and props.children or {}))
end

return Context
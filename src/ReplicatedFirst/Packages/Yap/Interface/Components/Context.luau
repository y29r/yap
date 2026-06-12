--!strict

const React = require("@game/ReplicatedFirst/Packages/React/React")
const Table = require("@game/ReplicatedFirst/Packages/TableUtility/TableUtility")

const create = React.createElement

const merge = Table.merge

const formatKey = require("../../formatKey")
const formatValue = require("../../formatValue")
const getLayoutOrderFromKey = require("../../getLayoutOrderFromKey")

const DataTypeTokens = require("../../DataTypeTokens")

export type Props = {
	Key: string,
	Value: string,
	Context: { [any]: any },
	
	LeftPadding: number?,
	
	children: { React.ReactElement<any> }?
}

function Context(props: Props)
	if props.Key == DataTypeTokens.TypeToken then
		return
	end
	
	const showChildren: boolean, setShowChildren: React.SetState<boolean> = React.useState(false)
	
	const contextChildren: { React.ReactElement<Props, any> } = {}
	
	const contextType: string = typeof(props.Context)
	if contextType == "table" then
		for key: any, value: any in props.Context do
			table.insert(contextChildren, create(Context, {
				Key = formatKey(key, value),
				Value = formatValue(key, value),
				Context = type(value) == "table" and value or {},
			}))
		end
	end
	
	return create("Frame", {
		AutomaticSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 0, 24),
		BorderColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		LayoutOrder = getLayoutOrderFromKey(props.Key),
	}, merge({
		Label = create("TextButton", {
			AutomaticSize = Enum.AutomaticSize.XY,
			Size = UDim2.new(1, 0, 0, 24),
			BorderColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			TextSize = 16,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Text = props.Key .. ": " .. props.Value,
			FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Regular),
			TextXAlignment = Enum.TextXAlignment.Left,
			RichText = true,
			LayoutOrder = -999999,
			[React.Event.Activated] = function(reference: TextButton) : ()
				setShowChildren(not showChildren)
			end,
		}),
		ListLayout = create("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		Padding = create("UIPadding", {
			PaddingLeft = UDim.new(0, props.LeftPadding or 32),
		}),
	}, showChildren and contextChildren or {}))
end

return Context
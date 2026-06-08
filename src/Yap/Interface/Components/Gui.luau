--!strict

export type Props = {
	
}

const function Gui(props: Props, children: { [any]: Instance })
	const ScreenGui = Instance.new("ScreenGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	
	const Container = Instance.new("Frame")
	Container.Name = "Container"
	Container.Size = UDim2.new(0, 852, 0, 724)
	Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Container.BackgroundTransparency = 0.1
	Container.Position = UDim2.new(0.2718155, 0, 0.1244151, 0)
	Container.BorderSizePixel = 0
	Container.BackgroundColor3 = Color3.fromRGB(43, 36, 44)
	Container.Parent = ScreenGui
	
	const UICorner = Instance.new("UICorner")
	UICorner.TopLeftRadius = UDim.new(0, 12)
	UICorner.CornerRadius = UDim.new(0, 12)
	UICorner.TopRightRadius = UDim.new(0, 12)
	UICorner.BottomRightRadius = UDim.new(0, 12)
	UICorner.BottomLeftRadius = UDim.new(0, 12)
	UICorner.Parent = Container
	
	const UIShadow = Instance.new("UIShadow")
	UIShadow.BlurRadius = UDim.new(0, 20)
	UIShadow.Transparency = 0.5
	UIShadow.Parent = Container
	
	const UIStroke = Instance.new("UIStroke")
	UIStroke.Color = Color3.fromRGB(212, 173, 217)
	UIStroke.Parent = Container
	
	const UIPadding = Instance.new("UIPadding")
	UIPadding.PaddingTop = UDim.new(0, 6)
	UIPadding.PaddingBottom = UDim.new(0, 6)
	UIPadding.PaddingLeft = UDim.new(0, 6)
	UIPadding.PaddingRight = UDim.new(0, 6)
	UIPadding.Parent = Container
	
	const UIListLayout = Instance.new("UIListLayout")
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 6)
	UIListLayout.Parent = Container
	
	const UIDragDetector = Instance.new("UIDragDetector")
	UIDragDetector.Enabled = false
	UIDragDetector.BoundingUI = ScreenGui
	UIDragDetector.ReferenceUIInstance = Container
	UIDragDetector.Parent = Container
	
	return ScreenGui
end

return Gui
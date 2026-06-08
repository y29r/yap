local Logs = Instance.new("Frame")
Logs.Name = "Logs"
Logs.Size = UDim2.new(1, 0, 0, 0)
Logs.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logs.BackgroundTransparency = 0.7
Logs.BorderSizePixel = 0
Logs.LayoutOrder = 3
Logs.BackgroundColor3 = Color3.fromRGB(20, 17, 21)

local UIFlexItem = Instance.new("UIFlexItem")
UIFlexItem.FlexMode = Enum.UIFlexMode.Fill
UIFlexItem.Parent = Logs

local UICorner = Instance.new("UICorner")
UICorner.TopLeftRadius = UDim.new(0, 12)
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.TopRightRadius = UDim.new(0, 12)
UICorner.BottomRightRadius = UDim.new(0, 12)
UICorner.BottomLeftRadius = UDim.new(0, 12)
UICorner.Parent = Logs

local Canvas = Instance.new("ScrollingFrame")
Canvas.Name = "Canvas"
Canvas.Size = UDim2.new(1, 0, 1, 0)
Canvas.BorderColor3 = Color3.fromRGB(0, 0, 0)
Canvas.BackgroundTransparency = 1
Canvas.Active = true
Canvas.BorderSizePixel = 0
Canvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Canvas.AutomaticCanvasSize = Enum.AutomaticSize.Y
Canvas.ScrollingDirection = Enum.ScrollingDirection.Y
Canvas.CanvasSize = UDim2.new(0, 0, 0, 0)
Canvas.ScrollBarThickness = 3
Canvas.Parent = Logs

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 8)
UIListLayout.Parent = Canvas

local EmptySpace = Instance.new("Frame")
EmptySpace.Name = "EmptySpace"
EmptySpace.Size = UDim2.new(1, 0, 0, 24)
EmptySpace.BorderColor3 = Color3.fromRGB(0, 0, 0)
EmptySpace.LayoutOrder = 2555
EmptySpace.BackgroundTransparency = 1
EmptySpace.BorderSizePixel = 0
EmptySpace.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
EmptySpace.Parent = Canvas

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 8)
UIPadding.PaddingBottom = UDim.new(0, 8)
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 8)
UIPadding.Parent = Logs


return Logs
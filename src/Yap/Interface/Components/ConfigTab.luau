local Config = Instance.new("Frame")
Config.Name = "Config"
Config.Size = UDim2.new(1, 0, 0, 46)
Config.BorderColor3 = Color3.fromRGB(0, 0, 0)
Config.BackgroundTransparency = 0.7
Config.BorderSizePixel = 0
Config.LayoutOrder = 2
Config.BackgroundColor3 = Color3.fromRGB(20, 17, 21)

local UICorner = Instance.new("UICorner")
UICorner.TopLeftRadius = UDim.new(0, 12)
UICorner.CornerRadius = UDim.new(0, 12)
UICorner.TopRightRadius = UDim.new(0, 12)
UICorner.BottomRightRadius = UDim.new(0, 12)
UICorner.BottomLeftRadius = UDim.new(0, 12)
UICorner.Parent = Config

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 8)
UIPadding.PaddingBottom = UDim.new(0, 8)
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 8)
UIPadding.Parent = Config

local Canvas = Instance.new("ScrollingFrame")
Canvas.Name = "Canvas"
Canvas.Size = UDim2.new(1, 0, 1, 0)
Canvas.BorderColor3 = Color3.fromRGB(0, 0, 0)
Canvas.BackgroundTransparency = 1
Canvas.Active = true
Canvas.BorderSizePixel = 0
Canvas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Canvas.AutomaticCanvasSize = Enum.AutomaticSize.X
Canvas.ScrollingDirection = Enum.ScrollingDirection.X
Canvas.CanvasSize = UDim2.new(0, 0, 0, 0)
Canvas.ScrollBarThickness = 0
Canvas.Parent = Config

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 16)
UIListLayout.Parent = Canvas

local UIPadding1 = Instance.new("UIPadding")
UIPadding1.PaddingTop = UDim.new(0, 2)
UIPadding1.PaddingBottom = UDim.new(0, 2)
UIPadding1.Parent = Canvas

local Spacer = Instance.new("Frame")
Spacer.Name = "Spacer"
Spacer.BorderColor3 = Color3.fromRGB(0, 0, 0)
Spacer.LayoutOrder = 2
Spacer.BackgroundTransparency = 1
Spacer.BorderSizePixel = 0
Spacer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Spacer.Parent = Canvas

local UIFlexItem = Instance.new("UIFlexItem")
UIFlexItem.FlexMode = Enum.UIFlexMode.Fill
UIFlexItem.Parent = Spacer


return Config
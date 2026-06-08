local Search = Instance.new("Frame")
Search.Name = "Search"
Search.Size = UDim2.new(0, 200, 0, 32)
Search.BorderColor3 = Color3.fromRGB(0, 0, 0)
Search.LayoutOrder = 5
Search.BackgroundTransparency = 0.8
Search.BorderSizePixel = 0
Search.BackgroundColor3 = Color3.fromRGB(249, 185, 255)

local UICorner = Instance.new("UICorner")
UICorner.Parent = Search

local Icon = Instance.new("ImageLabel")
Icon.Name = "Icon"
Icon.Size = UDim2.new(0, 16, 0, 16)
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BackgroundTransparency = 1
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Image = "rbxassetid://123164384472978"
Icon.ImageColor3 = Color3.fromRGB(153, 128, 167)
Icon.Parent = Search

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.Parent = Search

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.Parent = Search

local Query = Instance.new("TextBox")
Query.Name = "Query"
Query.Size = UDim2.new(0, 0, 1, 0)
Query.BorderColor3 = Color3.fromRGB(0, 0, 0)
Query.BackgroundTransparency = 1
Query.BorderSizePixel = 0
Query.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Query.PlaceholderColor3 = Color3.fromRGB(126, 107, 138)
Query.TextSize = 17
Query.TextColor3 = Color3.fromRGB(249, 239, 255)
Query.PlaceholderText = "QUERY..."
Query.Text = ""
Query.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Regular)
Query.TextXAlignment = Enum.TextXAlignment.Left
Query.Parent = Search

local UIFlexItem = Instance.new("UIFlexItem")
UIFlexItem.FlexMode = Enum.UIFlexMode.Fill
UIFlexItem.Parent = Query


return Search
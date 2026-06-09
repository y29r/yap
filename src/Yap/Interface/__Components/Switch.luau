local Switch = Instance.new("TextButton")
Switch.Name = "Switch"
Switch.AutomaticSize = Enum.AutomaticSize.X
Switch.Size = UDim2.new(0, 0, 0, 24)
Switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Switch.TextSize = 14
Switch.TextColor3 = Color3.fromRGB(0, 0, 0)
Switch.Text = ""
Switch.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 6)
UIListLayout.Parent = Switch

local Header = Instance.new("TextLabel")
Header.Name = "Header"
Header.AutomaticSize = Enum.AutomaticSize.X
Header.Size = UDim2.new(0, 0, 0, 24)
Header.BorderColor3 = Color3.fromRGB(255, 255, 255)
Header.LayoutOrder = 2
Header.BackgroundTransparency = 1
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 16
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.Text = "Output"
Header.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Parent = Switch

local Checkbox = Instance.new("Frame")
Checkbox.Name = "Checkbox"
Checkbox.Size = UDim2.new(0, 18, 0, 18)
Checkbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Checkbox.LayoutOrder = 1
Checkbox.BorderSizePixel = 0
Checkbox.BackgroundColor3 = Color3.fromRGB(255, 89, 139)
Checkbox.Parent = Switch

local UICorner = Instance.new("UICorner")
UICorner.TopLeftRadius = UDim.new(0, 3)
UICorner.CornerRadius = UDim.new(0, 3)
UICorner.TopRightRadius = UDim.new(0, 3)
UICorner.BottomRightRadius = UDim.new(0, 3)
UICorner.BottomLeftRadius = UDim.new(0, 3)
UICorner.Parent = Checkbox

local UIStroke = Instance.new("UIStroke")
UIStroke.Color = Color3.fromRGB(255, 89, 139)
UIStroke.Transparency = 0.64
UIStroke.Parent = Checkbox

local Icon = Instance.new("ImageLabel")
Icon.Name = "Icon"
Icon.AnchorPoint = Vector2.new(0.5, 0.5)
Icon.Size = UDim2.new(0.7, 0, 0.7, 0)
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(0.5, 0, 0.5, 0)
Icon.BorderSizePixel = 0
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.Image = "rbxassetid://107114727537543"
Icon.ImageColor3 = Color3.fromRGB(25, 21, 27)
Icon.Parent = Checkbox

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 2)
UIPadding.PaddingRight = UDim.new(0, 2)
UIPadding.Parent = Switch


return Switch
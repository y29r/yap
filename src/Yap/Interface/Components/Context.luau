local Context = Instance.new("Frame")
Context.Name = "Context"
Context.AutomaticSize = Enum.AutomaticSize.Y
Context.Size = UDim2.new(1, 0, 0, 24)
Context.BorderColor3 = Color3.fromRGB(0, 0, 0)
Context.BackgroundTransparency = 1
Context.BorderSizePixel = 0
Context.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local Header = Instance.new("TextLabel")
Header.Name = "Header"
Header.AutomaticSize = Enum.AutomaticSize.X
Header.Size = UDim2.new(1, 0, 0, 24)
Header.BorderColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 16
Header.TextColor3 = Color3.fromRGB(255, 255, 255)
Header.Text = "RGB : [254, 215, 138]"
Header.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Regular)
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Parent = Context

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = Context

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 32)
UIPadding.Parent = Context

return Context
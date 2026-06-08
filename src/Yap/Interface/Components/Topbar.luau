local Topbar = Instance.new("Frame")
Topbar.Name = "Topbar"
Topbar.ZIndex = 2
Topbar.Size = UDim2.new(1, 0, 0, 42)
Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Topbar.BackgroundTransparency = 1
Topbar.BorderSizePixel = 0
Topbar.LayoutOrder = 1
Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local Header = Instance.new("TextLabel")
Header.Name = "Header"
Header.AutomaticSize = Enum.AutomaticSize.X
Header.Size = UDim2.new(0, 0, 0, 32)
Header.BorderColor3 = Color3.fromRGB(255, 255, 255)
Header.BackgroundTransparency = 1
Header.BorderSizePixel = 0
Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Header.TextSize = 23
Header.TextColor3 = Color3.fromRGB(247, 216, 255)
Header.Text = "YAP"
Header.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Header.TextXAlignment = Enum.TextXAlignment.Left
Header.Parent = Topbar

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = Topbar

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingLeft = UDim.new(0, 6)
UIPadding.Parent = Topbar

local Close = Instance.new("TextButton")
Close.Name = "Close"
Close.Size = UDim2.new(0, 32, 0, 32)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.LayoutOrder = 3
Close.BorderSizePixel = 0
Close.BackgroundColor3 = Color3.fromRGB(255, 89, 139)
Close.AutoButtonColor = false
Close.TextSize = 24
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.Text = ""
Close.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Close.Parent = Topbar

local UICorner = Instance.new("UICorner")
UICorner.Parent = Close

local UIShadow = Instance.new("UIShadow")
UIShadow.BlurRadius = UDim.new(0, 12)
UIShadow.Color = Color3.fromRGB(218, 67, 147)
UIShadow.Transparency = 0.5
UIShadow.Parent = Close

local X = Instance.new("ImageLabel")
X.Name = "X"
X.AnchorPoint = Vector2.new(0.5, 0.5)
X.Size = UDim2.new(0.8, 0, 0.8, 0)
X.BorderColor3 = Color3.fromRGB(0, 0, 0)
X.BackgroundTransparency = 1
X.Position = UDim2.new(0.5, 0, 0.5, 0)
X.BorderSizePixel = 0
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.Image = "rbxassetid://93178879906466"
X.Parent = Close

local ClientInfo = Instance.new("Frame")
ClientInfo.Name = "ClientInfo"
ClientInfo.Size = UDim2.new(0, 300, 0, 32)
ClientInfo.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClientInfo.BackgroundTransparency = 1
ClientInfo.BorderSizePixel = 0
ClientInfo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ClientInfo.Parent = Topbar

local Memory = Instance.new("TextLabel")
Memory.Name = "Memory"
Memory.AutomaticSize = Enum.AutomaticSize.X
Memory.Size = UDim2.new(0, 0, 0, 24)
Memory.BorderColor3 = Color3.fromRGB(255, 255, 255)
Memory.BackgroundTransparency = 1
Memory.BorderSizePixel = 0
Memory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Memory.TextSize = 16
Memory.RichText = true
Memory.TextColor3 = Color3.fromRGB(255, 255, 255)
Memory.Text = "<font color='rgb(255, 195, 90)'>Memory:</font> 2318 MB"
Memory.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Memory.TextXAlignment = Enum.TextXAlignment.Left
Memory.Parent = ClientInfo

local UIListLayout1 = Instance.new("UIListLayout")
UIListLayout1.FillDirection = Enum.FillDirection.Horizontal
UIListLayout1.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout1.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout1.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout1.Padding = UDim.new(0, 12)
UIListLayout1.Parent = ClientInfo

local Latency = Instance.new("TextLabel")
Latency.Name = "Latency"
Latency.AutomaticSize = Enum.AutomaticSize.X
Latency.Size = UDim2.new(0, 0, 0, 24)
Latency.BorderColor3 = Color3.fromRGB(255, 255, 255)
Latency.BackgroundTransparency = 1
Latency.BorderSizePixel = 0
Latency.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Latency.TextSize = 16
Latency.RichText = true
Latency.TextColor3 = Color3.fromRGB(255, 255, 255)
Latency.Text = "<font color='rgb(255, 195, 90)'>Avg latency:</font> 32 ms"
Latency.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Latency.TextXAlignment = Enum.TextXAlignment.Left
Latency.Parent = ClientInfo

return Topbar
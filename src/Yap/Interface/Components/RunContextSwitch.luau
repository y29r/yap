local RunContextSwitch = Instance.new("Frame")
RunContextSwitch.Name = "RunContextSwitch"
RunContextSwitch.Size = UDim2.new(0, 160, 0, 28)
RunContextSwitch.BorderColor3 = Color3.fromRGB(0, 0, 0)
RunContextSwitch.LayoutOrder = 3
RunContextSwitch.BackgroundTransparency = 1
RunContextSwitch.BorderSizePixel = 0
RunContextSwitch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local Client = Instance.new("TextButton")
Client.Name = "Client"
Client.Size = UDim2.new(0.5, 0, 1, 0)
Client.BorderColor3 = Color3.fromRGB(0, 0, 0)
Client.BorderSizePixel = 0
Client.BackgroundColor3 = Color3.fromRGB(255, 89, 139)
Client.AutoButtonColor = false
Client.TextSize = 16
Client.TextColor3 = Color3.fromRGB(255, 255, 255)
Client.Text = "CLIENT"
Client.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Client.Parent = RunContextSwitch

local UICorner = Instance.new("UICorner")
UICorner.TopRightRadius = UDim.new(0, 0)
UICorner.BottomRightRadius = UDim.new(0, 0)
UICorner.Parent = Client

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 8)
UIPadding.PaddingBottom = UDim.new(0, 8)
UIPadding.PaddingLeft = UDim.new(0, 8)
UIPadding.PaddingRight = UDim.new(0, 8)
UIPadding.Parent = Client

local UIShadow = Instance.new("UIShadow")
UIShadow.BlurRadius = UDim.new(0, 12)
UIShadow.Color = Color3.fromRGB(59, 18, 40)
UIShadow.Transparency = 0.5
UIShadow.Parent = RunContextSwitch

local Server = Instance.new("TextButton")
Server.Name = "Server"
Server.Size = UDim2.new(0.5, 0, 1, 0)
Server.BorderColor3 = Color3.fromRGB(0, 0, 0)
Server.Position = UDim2.new(0.5, 0, 0, 0)
Server.BorderSizePixel = 0
Server.BackgroundColor3 = Color3.fromRGB(93, 32, 52)
Server.AutoButtonColor = false
Server.TextSize = 16
Server.TextColor3 = Color3.fromRGB(180, 180, 180)
Server.Text = "SERVER"
Server.FontFace = Font.fromName("RobotoMono", Enum.FontWeight.Medium)
Server.Parent = RunContextSwitch

local UICorner1 = Instance.new("UICorner")
UICorner1.TopLeftRadius = UDim.new(0, 0)
UICorner1.CornerRadius = UDim.new(0, 0)
UICorner1.BottomLeftRadius = UDim.new(0, 0)
UICorner1.Parent = Server


return RunContextSwitch
-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local TextButton_6 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Main = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Frame_3 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
local TextLabel_5 = Instance.new("TextLabel")
local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
local TextButton_7 = Instance.new("TextButton")
local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
local Frame_4 = Instance.new("Frame")
local TextLabel_6 = Instance.new("TextLabel")
local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
local TextLabel_7 = Instance.new("TextLabel")
local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
local TextButton_8 = Instance.new("TextButton")
local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
local Frame_5 = Instance.new("Frame")
local TextLabel_8 = Instance.new("TextLabel")
local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
local TextLabel_9 = Instance.new("TextLabel")
local UITextSizeConstraint_8 = Instance.new("UITextSizeConstraint")
local TextButton_9 = Instance.new("TextButton")
local UITextSizeConstraint_9 = Instance.new("UITextSizeConstraint")
local Frame_6 = Instance.new("Frame")
local TextLabel_10 = Instance.new("TextLabel")
local UITextSizeConstraint_10 = Instance.new("UITextSizeConstraint")
local TextLabel_11 = Instance.new("TextLabel")
local UITextSizeConstraint_11 = Instance.new("UITextSizeConstraint")
local TextButton_10 = Instance.new("TextButton")
local UITextSizeConstraint_12 = Instance.new("UITextSizeConstraint")
local Frame_7 = Instance.new("Frame")
local TextLabel_12 = Instance.new("TextLabel")
local UITextSizeConstraint_13 = Instance.new("UITextSizeConstraint")
local TextLabel_13 = Instance.new("TextLabel")
local UITextSizeConstraint_14 = Instance.new("UITextSizeConstraint")
local TextButton_11 = Instance.new("TextButton")
local UITextSizeConstraint_15 = Instance.new("UITextSizeConstraint")
local Frame_8 = Instance.new("Frame")
local TextLabel_14 = Instance.new("TextLabel")
local UITextSizeConstraint_16 = Instance.new("UITextSizeConstraint")
local TextLabel_15 = Instance.new("TextLabel")
local UITextSizeConstraint_17 = Instance.new("UITextSizeConstraint")
local TextButton_12 = Instance.new("TextButton")
local UITextSizeConstraint_18 = Instance.new("UITextSizeConstraint")
local Frame_9 = Instance.new("Frame")
local TextLabel_16 = Instance.new("TextLabel")
local UITextSizeConstraint_19 = Instance.new("UITextSizeConstraint")
local TextLabel_17 = Instance.new("TextLabel")
local UITextSizeConstraint_20 = Instance.new("UITextSizeConstraint")
local TextButton_13 = Instance.new("TextButton")
local UITextSizeConstraint_21 = Instance.new("UITextSizeConstraint")
local Frame_10 = Instance.new("Frame")
local TextLabel_18 = Instance.new("TextLabel")
local UITextSizeConstraint_22 = Instance.new("UITextSizeConstraint")
local TextLabel_19 = Instance.new("TextLabel")
local UITextSizeConstraint_23 = Instance.new("UITextSizeConstraint")
local TextButton_14 = Instance.new("TextButton")
local UITextSizeConstraint_24 = Instance.new("UITextSizeConstraint")
local TextLabel_20 = Instance.new("TextLabel")
local TextLabel_21 = Instance.new("TextLabel")
local TextLabel_22 = Instance.new("TextLabel")
local TextLabel_23 = Instance.new("TextLabel")
local TextButton_15 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UITextSizeConstraint_25 = Instance.new("UITextSizeConstraint")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.29054451, 350, 0.158890292, 270)
Frame.Size = UDim2.new(0.419150442, 0, 0.682850063, 0)
Frame.Visible = false

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.499714166, 0, 0.0258541033, 0)
TextLabel.Size = UDim2.new(0.999428332, 0, 0.0535549261, 0)
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = "Bstlar's Gui"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Frame_2.Parent = Frame
Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.ClipsDescendants = true
Frame_2.Position = UDim2.new(0.071387738, 0, 0.531855822, 0)
Frame_2.Size = UDim2.new(0.142775476, 0, 0.934441149, 0)

TextButton.Parent = Frame_2
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton.BackgroundTransparency = 1.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 50, 0, 26)
TextButton.Size = UDim2.new(1, 0, 0.102766797, 0)
TextButton.Font = Enum.Font.Gotham
TextButton.Text = "Main"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.1015625, 0)
TextButton_2.Size = UDim2.new(0, 100, 0, 52)
TextButton_2.Font = Enum.Font.Gotham
TextButton_2.Text = "Teleportation"
TextButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame_2
TextButton_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 0.203125, 0)
TextButton_3.Size = UDim2.new(0, 100, 0, 52)
TextButton_3.Font = Enum.Font.Gotham
TextButton_3.Text = "Local Player"
TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14.000
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame_2
TextButton_4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0, 0, 0.3046875, 0)
TextButton_4.Size = UDim2.new(0, 100, 0, 52)
TextButton_4.Font = Enum.Font.Gotham
TextButton_4.Text = "Autofarm"
TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14.000
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame_2
TextButton_5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0, 0, 0.40625, 0)
TextButton_5.Size = UDim2.new(0, 100, 0, 52)
TextButton_5.Font = Enum.Font.Gotham
TextButton_5.Text = "Fun"
TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14.000
TextButton_5.TextWrapped = true

UIListLayout.Parent = Frame_2
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TextButton_6.Parent = Frame_2
TextButton_6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0, 0, 0.40625, 0)
TextButton_6.Size = UDim2.new(0, 100, 0, 52)
TextButton_6.Font = Enum.Font.Gotham
TextButton_6.Text = "Donate"
TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14.000
TextButton_6.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.498286426, 0, 1.01200342, 0)
TextLabel_2.Size = UDim2.new(0.983723044, 0, 0.0258541033, 0)
TextLabel_2.Font = Enum.Font.Gotham
TextLabel_2.Text = "no key system needed"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.575385153, 0, 0.0886426419, 0)
TextLabel_3.Size = UDim2.new(0.739576995, 0, 0.0498614833, 0)
TextLabel_3.Font = Enum.Font.Gotham
TextLabel_3.Text = "Welcome, [username]"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true

Main.Name = "Main"
Main.Parent = Frame
Main.AnchorPoint = Vector2.new(0.5, 0.5)
Main.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.716268003, 0, 0.530009091, 0)
Main.Size = UDim2.new(0.84482038, 0, 0.936749816, 0)
Main.Visible = false
Main.ZIndex = 2

ScrollingFrame.Parent = Main
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.500242889, 0, 0.498767704, 0)
ScrollingFrame.Size = UDim2.new(1.00362289, 0, 0.999753058, 0)

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Frame_3.Parent = ScrollingFrame
Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BackgroundTransparency = 1.000
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 290, 0, 14)
Frame_3.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_4.Parent = Frame_3
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0, 90, 0, 18)
TextLabel_4.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_4.Font = Enum.Font.Gotham
TextLabel_4.Text = "Join the discord"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

UITextSizeConstraint.Parent = TextLabel_4
UITextSizeConstraint.MaxTextSize = 40
UITextSizeConstraint.MinTextSize = 8

TextLabel_5.Parent = Frame_3
TextLabel_5.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0, 90, 0, 45)
TextLabel_5.Size = UDim2.new(0.311531842, 0, -0.257776052, 0)
TextLabel_5.Font = Enum.Font.Gotham
TextLabel_5.Text = "Automatically copies the discord link"
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextWrapped = true

UITextSizeConstraint_2.Parent = TextLabel_5
UITextSizeConstraint_2.MaxTextSize = 40
UITextSizeConstraint_2.MinTextSize = 8

TextButton_7.Parent = Frame_3
TextButton_7.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.BackgroundTransparency = 1.000
TextButton_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0, 478, 0, 27)
TextButton_7.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_7.Font = Enum.Font.Gotham
TextButton_7.Text = "Do it"
TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14.000
TextButton_7.TextWrapped = true

UITextSizeConstraint_3.Parent = TextButton_7
UITextSizeConstraint_3.MaxTextSize = 40
UITextSizeConstraint_3.MinTextSize = 8

Frame_4.Parent = ScrollingFrame
Frame_4.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_4.BackgroundTransparency = 1.000
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0, 290, 0, 14)
Frame_4.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_6.Parent = Frame_4
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0, 90, 0, 18)
TextLabel_6.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_6.Font = Enum.Font.Gotham
TextLabel_6.Text = "Get game information"
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextWrapped = true

UITextSizeConstraint_4.Parent = TextLabel_6
UITextSizeConstraint_4.MaxTextSize = 40
UITextSizeConstraint_4.MinTextSize = 8

TextLabel_7.Parent = Frame_4
TextLabel_7.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0, 90, 0, 47)
TextLabel_7.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_7.Font = Enum.Font.Gotham
TextLabel_7.Text = "Gets the informaton from the current roblox game. [FPS, ping, player count, etc]"
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

UITextSizeConstraint_5.Parent = TextLabel_7
UITextSizeConstraint_5.MaxTextSize = 40
UITextSizeConstraint_5.MinTextSize = 8

TextButton_8.Parent = Frame_4
TextButton_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.BackgroundTransparency = 1.000
TextButton_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_8.BorderSizePixel = 0
TextButton_8.Position = UDim2.new(0, 478, 0, 27)
TextButton_8.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_8.Font = Enum.Font.Gotham
TextButton_8.Text = "Do it"
TextButton_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_8.TextScaled = true
TextButton_8.TextSize = 14.000
TextButton_8.TextWrapped = true

UITextSizeConstraint_6.Parent = TextButton_8
UITextSizeConstraint_6.MaxTextSize = 40
UITextSizeConstraint_6.MinTextSize = 8

Frame_5.Parent = ScrollingFrame
Frame_5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_5.BackgroundTransparency = 1.000
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Position = UDim2.new(0, 290, 0, 14)
Frame_5.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_8.Parent = Frame_5
TextLabel_8.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0, 90, 0, 18)
TextLabel_8.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_8.Font = Enum.Font.Gotham
TextLabel_8.Text = "Serverhop"
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 14.000
TextLabel_8.TextWrapped = true

UITextSizeConstraint_7.Parent = TextLabel_8
UITextSizeConstraint_7.MaxTextSize = 40
UITextSizeConstraint_7.MinTextSize = 8

TextLabel_9.Parent = Frame_5
TextLabel_9.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.BackgroundTransparency = 1.000
TextLabel_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_9.BorderSizePixel = 0
TextLabel_9.Position = UDim2.new(0, 90, 0, 47)
TextLabel_9.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_9.Font = Enum.Font.Gotham
TextLabel_9.Text = "Automatically serverhops for you"
TextLabel_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_9.TextScaled = true
TextLabel_9.TextSize = 14.000
TextLabel_9.TextWrapped = true

UITextSizeConstraint_8.Parent = TextLabel_9
UITextSizeConstraint_8.MaxTextSize = 40
UITextSizeConstraint_8.MinTextSize = 8

TextButton_9.Parent = Frame_5
TextButton_9.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.BackgroundTransparency = 1.000
TextButton_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_9.BorderSizePixel = 0
TextButton_9.Position = UDim2.new(0, 478, 0, 27)
TextButton_9.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_9.Font = Enum.Font.Gotham
TextButton_9.Text = "Do it"
TextButton_9.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_9.TextScaled = true
TextButton_9.TextSize = 14.000
TextButton_9.TextWrapped = true

UITextSizeConstraint_9.Parent = TextButton_9
UITextSizeConstraint_9.MaxTextSize = 40
UITextSizeConstraint_9.MinTextSize = 8

Frame_6.Parent = ScrollingFrame
Frame_6.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_6.BackgroundTransparency = 1.000
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Position = UDim2.new(0, 290, 0, 14)
Frame_6.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_10.Parent = Frame_6
TextLabel_10.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.BackgroundTransparency = 1.000
TextLabel_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_10.BorderSizePixel = 0
TextLabel_10.Position = UDim2.new(0, 90, 0, 18)
TextLabel_10.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_10.Font = Enum.Font.Gotham
TextLabel_10.Text = "Anti Lag"
TextLabel_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_10.TextScaled = true
TextLabel_10.TextSize = 14.000
TextLabel_10.TextWrapped = true

UITextSizeConstraint_10.Parent = TextLabel_10
UITextSizeConstraint_10.MaxTextSize = 40
UITextSizeConstraint_10.MinTextSize = 8

TextLabel_11.Parent = Frame_6
TextLabel_11.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.BackgroundTransparency = 1.000
TextLabel_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_11.BorderSizePixel = 0
TextLabel_11.Position = UDim2.new(0, 90, 0, 47)
TextLabel_11.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_11.Font = Enum.Font.Gotham
TextLabel_11.Text = "Disables all textures, attempting to fix lag."
TextLabel_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_11.TextScaled = true
TextLabel_11.TextSize = 14.000
TextLabel_11.TextWrapped = true

UITextSizeConstraint_11.Parent = TextLabel_11
UITextSizeConstraint_11.MaxTextSize = 40
UITextSizeConstraint_11.MinTextSize = 8

TextButton_10.Parent = Frame_6
TextButton_10.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_10.BackgroundTransparency = 1.000
TextButton_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_10.BorderSizePixel = 0
TextButton_10.Position = UDim2.new(0, 478, 0, 27)
TextButton_10.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_10.Font = Enum.Font.Gotham
TextButton_10.Text = "Anti Lag: Off"
TextButton_10.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_10.TextScaled = true
TextButton_10.TextSize = 14.000
TextButton_10.TextWrapped = true

UITextSizeConstraint_12.Parent = TextButton_10
UITextSizeConstraint_12.MaxTextSize = 40
UITextSizeConstraint_12.MinTextSize = 8

Frame_7.Parent = ScrollingFrame
Frame_7.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_7.BackgroundTransparency = 1.000
Frame_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_7.BorderSizePixel = 0
Frame_7.Position = UDim2.new(0, 290, 0, 14)
Frame_7.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_12.Parent = Frame_7
TextLabel_12.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.BackgroundTransparency = 1.000
TextLabel_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_12.BorderSizePixel = 0
TextLabel_12.Position = UDim2.new(0, 90, 0, 18)
TextLabel_12.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_12.Font = Enum.Font.Gotham
TextLabel_12.Text = "Anti Kick"
TextLabel_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_12.TextScaled = true
TextLabel_12.TextSize = 14.000
TextLabel_12.TextWrapped = true

UITextSizeConstraint_13.Parent = TextLabel_12
UITextSizeConstraint_13.MaxTextSize = 40
UITextSizeConstraint_13.MinTextSize = 8

TextLabel_13.Parent = Frame_7
TextLabel_13.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.BackgroundTransparency = 1.000
TextLabel_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_13.BorderSizePixel = 0
TextLabel_13.Position = UDim2.new(0, 90, 0, 47)
TextLabel_13.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_13.Font = Enum.Font.Gotham
TextLabel_13.Text = "Attempts to prevent you from being kicked for standing still for too long."
TextLabel_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_13.TextScaled = true
TextLabel_13.TextSize = 14.000
TextLabel_13.TextWrapped = true

UITextSizeConstraint_14.Parent = TextLabel_13
UITextSizeConstraint_14.MaxTextSize = 40
UITextSizeConstraint_14.MinTextSize = 8

TextButton_11.Parent = Frame_7
TextButton_11.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_11.BackgroundTransparency = 1.000
TextButton_11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_11.BorderSizePixel = 0
TextButton_11.Position = UDim2.new(0, 478, 0, 27)
TextButton_11.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_11.Font = Enum.Font.Gotham
TextButton_11.Text = "Anti Kick: Off"
TextButton_11.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_11.TextScaled = true
TextButton_11.TextSize = 14.000
TextButton_11.TextWrapped = true

UITextSizeConstraint_15.Parent = TextButton_11
UITextSizeConstraint_15.MaxTextSize = 40
UITextSizeConstraint_15.MinTextSize = 8

Frame_8.Parent = ScrollingFrame
Frame_8.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_8.BackgroundTransparency = 1.000
Frame_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_8.BorderSizePixel = 0
Frame_8.Position = UDim2.new(0, 290, 0, 14)
Frame_8.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_14.Parent = Frame_8
TextLabel_14.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.BackgroundTransparency = 1.000
TextLabel_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_14.BorderSizePixel = 0
TextLabel_14.Position = UDim2.new(0, 90, 0, 18)
TextLabel_14.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_14.Font = Enum.Font.Gotham
TextLabel_14.Text = "Drag Interface"
TextLabel_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_14.TextScaled = true
TextLabel_14.TextSize = 14.000
TextLabel_14.TextWrapped = true

UITextSizeConstraint_16.Parent = TextLabel_14
UITextSizeConstraint_16.MaxTextSize = 40
UITextSizeConstraint_16.MinTextSize = 8

TextLabel_15.Parent = Frame_8
TextLabel_15.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.BackgroundTransparency = 1.000
TextLabel_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_15.BorderSizePixel = 0
TextLabel_15.Position = UDim2.new(0, 90, 0, 47)
TextLabel_15.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_15.Font = Enum.Font.Gotham
TextLabel_15.Text = "Toggle for dragging the interface"
TextLabel_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_15.TextScaled = true
TextLabel_15.TextSize = 14.000
TextLabel_15.TextWrapped = true

UITextSizeConstraint_17.Parent = TextLabel_15
UITextSizeConstraint_17.MaxTextSize = 40
UITextSizeConstraint_17.MinTextSize = 8

TextButton_12.Parent = Frame_8
TextButton_12.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_12.BackgroundTransparency = 1.000
TextButton_12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_12.BorderSizePixel = 0
TextButton_12.Position = UDim2.new(0, 478, 0, 27)
TextButton_12.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_12.Font = Enum.Font.Gotham
TextButton_12.Text = "On"
TextButton_12.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_12.TextScaled = true
TextButton_12.TextSize = 14.000
TextButton_12.TextWrapped = true

UITextSizeConstraint_18.Parent = TextButton_12
UITextSizeConstraint_18.MaxTextSize = 40
UITextSizeConstraint_18.MinTextSize = 8

Frame_9.Parent = ScrollingFrame
Frame_9.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_9.BackgroundTransparency = 1.000
Frame_9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_9.BorderSizePixel = 0
Frame_9.Position = UDim2.new(0, 290, 0, 14)
Frame_9.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_16.Parent = Frame_9
TextLabel_16.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.BackgroundTransparency = 1.000
TextLabel_16.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_16.BorderSizePixel = 0
TextLabel_16.Position = UDim2.new(0, 90, 0, 18)
TextLabel_16.Size = UDim2.new(0.311531842, 0, 0.510237992, 0)
TextLabel_16.Font = Enum.Font.Gotham
TextLabel_16.Text = "Drag Button"
TextLabel_16.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_16.TextScaled = true
TextLabel_16.TextSize = 14.000
TextLabel_16.TextWrapped = true

UITextSizeConstraint_19.Parent = TextLabel_16
UITextSizeConstraint_19.MaxTextSize = 40
UITextSizeConstraint_19.MinTextSize = 8

TextLabel_17.Parent = Frame_9
TextLabel_17.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.BackgroundTransparency = 1.000
TextLabel_17.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_17.BorderSizePixel = 0
TextLabel_17.Position = UDim2.new(0, 90, 0, 47)
TextLabel_17.Size = UDim2.new(0.311531842, 0, -0.327475667, 0)
TextLabel_17.Font = Enum.Font.Gotham
TextLabel_17.Text = "Toggle for dragging the interface"
TextLabel_17.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_17.TextScaled = true
TextLabel_17.TextSize = 14.000
TextLabel_17.TextWrapped = true

UITextSizeConstraint_20.Parent = TextLabel_17
UITextSizeConstraint_20.MaxTextSize = 40
UITextSizeConstraint_20.MinTextSize = 8

TextButton_13.Parent = Frame_9
TextButton_13.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_13.BackgroundTransparency = 1.000
TextButton_13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_13.BorderSizePixel = 0
TextButton_13.Position = UDim2.new(0, 478, 0, 27)
TextButton_13.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_13.Font = Enum.Font.Gotham
TextButton_13.Text = "On"
TextButton_13.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_13.TextScaled = true
TextButton_13.TextSize = 14.000
TextButton_13.TextWrapped = true

UITextSizeConstraint_21.Parent = TextButton_13
UITextSizeConstraint_21.MaxTextSize = 40
UITextSizeConstraint_21.MinTextSize = 8

Frame_10.Parent = ScrollingFrame
Frame_10.AnchorPoint = Vector2.new(0.5, 0.5)
Frame_10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_10.BackgroundTransparency = 1.000
Frame_10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_10.BorderSizePixel = 0
Frame_10.Position = UDim2.new(0, 290, 0, 14)
Frame_10.Size = UDim2.new(0.978351235, 0, 0.0565688461, 0)

TextLabel_18.Parent = Frame_10
TextLabel_18.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.BackgroundTransparency = 1.000
TextLabel_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_18.BorderSizePixel = 0
TextLabel_18.Position = UDim2.new(0, 140, 0, 18)
TextLabel_18.Size = UDim2.new(0.482908666, 0, 0.510237992, 0)
TextLabel_18.Font = Enum.Font.Gotham
TextLabel_18.Text = "Replace Button and Interface"
TextLabel_18.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_18.TextScaled = true
TextLabel_18.TextSize = 14.000
TextLabel_18.TextWrapped = true

UITextSizeConstraint_22.Parent = TextLabel_18
UITextSizeConstraint_22.MaxTextSize = 40
UITextSizeConstraint_22.MinTextSize = 8

TextLabel_19.Parent = Frame_10
TextLabel_19.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.BackgroundTransparency = 1.000
TextLabel_19.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_19.BorderSizePixel = 0
TextLabel_19.Position = UDim2.new(0, 137, 0, 47)
TextLabel_19.Size = UDim2.new(0.472430378, 0, -0.327475667, 0)
TextLabel_19.Font = Enum.Font.Gotham
TextLabel_19.Text = "Puts both elements into their original spots."
TextLabel_19.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_19.TextScaled = true
TextLabel_19.TextSize = 14.000
TextLabel_19.TextWrapped = true

UITextSizeConstraint_23.Parent = TextLabel_19
UITextSizeConstraint_23.MaxTextSize = 40
UITextSizeConstraint_23.MinTextSize = 8

TextButton_14.Parent = Frame_10
TextButton_14.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_14.BackgroundTransparency = 1.000
TextButton_14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_14.BorderSizePixel = 0
TextButton_14.Position = UDim2.new(0, 478, 0, 27)
TextButton_14.Size = UDim2.new(0.340791732, 0, 0.879792571, 0)
TextButton_14.Font = Enum.Font.Gotham
TextButton_14.Text = "Do it"
TextButton_14.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_14.TextScaled = true
TextButton_14.TextSize = 14.000
TextButton_14.TextWrapped = true

UITextSizeConstraint_24.Parent = TextButton_14
UITextSizeConstraint_24.MaxTextSize = 40
UITextSizeConstraint_24.MinTextSize = 8

TextLabel_20.Parent = Frame
TextLabel_20.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_20.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_20.BackgroundTransparency = 1.000
TextLabel_20.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_20.BorderSizePixel = 0
TextLabel_20.Position = UDim2.new(0.575385153, 0, 0.158818066, 0)
TextLabel_20.Size = UDim2.new(0.739576995, 0, 0.0904893577, 0)
TextLabel_20.Font = Enum.Font.Gotham
TextLabel_20.Text = "Start by clicking any of the buttons on the side!"
TextLabel_20.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_20.TextScaled = true
TextLabel_20.TextSize = 14.000
TextLabel_20.TextWrapped = true

TextLabel_21.Parent = Frame
TextLabel_21.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_21.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_21.BackgroundTransparency = 1.000
TextLabel_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_21.BorderSizePixel = 0
TextLabel_21.Position = UDim2.new(0.552541077, 0, 0.966758668, 0)
TextLabel_21.Size = UDim2.new(0.693888843, 0, 0.0627885386, 0)
TextLabel_21.Font = Enum.Font.Gotham
TextLabel_21.Text = "discord: f4t4l1ty_err404\\n"
TextLabel_21.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_21.TextScaled = true
TextLabel_21.TextSize = 14.000
TextLabel_21.TextWrapped = true

TextLabel_22.Parent = Frame
TextLabel_22.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_22.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_22.BackgroundTransparency = 1.000
TextLabel_22.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_22.BorderSizePixel = 0
TextLabel_22.Position = UDim2.new(0.552541077, 0, 0.916897178, 0)
TextLabel_22.Size = UDim2.new(0.693888843, 0, 0.0369344316, 0)
TextLabel_22.Font = Enum.Font.Gotham
TextLabel_22.Text = "youtube: @fatality404err0r"
TextLabel_22.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_22.TextScaled = true
TextLabel_22.TextSize = 14.000
TextLabel_22.TextWrapped = true

TextLabel_23.Parent = Frame
TextLabel_23.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel_23.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextLabel_23.BackgroundTransparency = 1.000
TextLabel_23.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_23.BorderSizePixel = 0
TextLabel_23.Position = UDim2.new(0.575385094, 0, 0.278393298, 0)
TextLabel_23.Size = UDim2.new(0.739577055, 0, 0.148661092, 0)
TextLabel_23.Font = Enum.Font.Gotham
TextLabel_23.Text = "Warning! You are playing in a very beta version. Things have a high chance of not working or breaking. If there are bugs report them to me. There is also not a lot yet."
TextLabel_23.TextColor3 = Color3.fromRGB(255, 255, 0)
TextLabel_23.TextScaled = true
TextLabel_23.TextSize = 14.000
TextLabel_23.TextWrapped = true

TextButton_15.Parent = ScreenGui
TextButton_15.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton_15.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TextButton_15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_15.BorderSizePixel = 0
TextButton_15.Position = UDim2.new(0.492519438, 30, 0.0378310233, 29)
TextButton_15.Size = UDim2.new(0.0425230339, 0, 0.0756620392, 0)
TextButton_15.Font = Enum.Font.Gotham
TextButton_15.Text = "p"
TextButton_15.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton_15.TextScaled = true
TextButton_15.TextSize = 50.000
TextButton_15.TextWrapped = true

UICorner_2.Parent = TextButton_15

UITextSizeConstraint_25.Parent = TextButton_15
UITextSizeConstraint_25.MaxTextSize = 40
UITextSizeConstraint_25.MinTextSize = 8

-- Scripts:

local function JVGIR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local button = script.Parent
	-- This goes up two levels to find the target frame
	local frame = button.Parent.Parent.Main
	
	button.MouseButton1Click:Connect(function()
		-- Toggles between visible (true) and hidden (false)
		frame.Visible = not frame.Visible
	end)
	
	
end
coroutine.wrap(JVGIR_fake_script)()
local function MKEALQ_fake_script() -- TextLabel_3.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_3)

	local textLabel = script.Parent
	local Players = game:GetService("Players")
	
	-- Get the player running the script
	local localPlayer = Players.LocalPlayer
	
	-- Wait for the player's name to load, then update the text
	if localPlayer then
		textLabel.Text = "Welcome, " .. localPlayer.Name
	end
	
	
end
coroutine.wrap(MKEALQ_fake_script)()
local function EUGBBT_fake_script() -- TextButton_7.LocalScript 
	local script = Instance.new('LocalScript', TextButton_7)

	local button = script.Parent
	
	-- Your specific Discord invite link
	local discordLink = "https://discord.gg/Sj4Z6jMfA"
	
	button.MouseButton1Click:Connect(function()
		-- 1. Check if running in a third-party executor that supports clipboard access
		if setclipboard then
			setclipboard(discordLink)
	
			-- 2. Visual feedback so the player knows it worked
			local originalText = button.Text
			button.Text = "Copied to Clipboard!"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Optional: Turn text green briefly
	
			task.wait(1.5)
	
			button.Text = originalText
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text color back to white
		else
			-- Fallback notice if running inside Roblox Studio play-test mode
			warn("setclipboard() is only supported when running via your executor.")
			button.Text = "Failed!"
			task.wait(1)
			button.Text = "Get it"
		end
	end)
	
	
end
coroutine.wrap(EUGBBT_fake_script)()
local function ROKZWIC_fake_script() -- TextButton_8.LocalScript 
	local script = Instance.new('LocalScript', TextButton_8)

	local button = script.Parent
	local Workspace = game:GetService("Workspace")
	local Players = game:GetService("Players")
	local Stats = game:GetService("Stats")
	local MarketplaceService = game:GetService("MarketplaceService")
	
	-- 1. Function to calculate current FPS
	local function getFPS()
		local currentFPS = 60 -- Default fallback
		local success, err = pcall(function()
			currentFPS = math.round(1 / Workspace:GetRealPhysicsFPS())
		end)
		return currentFPS
	end
	
	-- 2. Function to get current Network Ping
	local function getPing()
		local currentPing = 0
		local success, err = pcall(function()
			-- Pulls the round-trip latency network performance metric
			currentPing = math.round(Stats.Network.ServerToClientPing:GetValue())
		end)
		return currentPing
	end
	
	-- 3. Function to get the Game Title safely
	local function getGameTitle()
		local gameName = "Unknown Game"
		local success, err = pcall(function()
			local productInfo = MarketplaceService:GetProductInfoAsync(game.PlaceId)
			if productInfo and productInfo.Name then
				gameName = productInfo.Name
			end
		end)
		return gameName
	end
	
	-- When the button is clicked:
	button.MouseButton1Click:Connect(function()
		-- Gather data fields
		local fpsText = tostring(getFPS())
		local pingText = tostring(getPing()) .. "ms"
		local gameText = getGameTitle()
		local playersCount = tostring(#Players:GetPlayers())
	
		-- Format the payload text exactly to your layout requirements
		local clipboardPayload = string.format(
			"FPS : %s\nPing : %s\nGame: %s\nPlayers: %s",
			fpsText,
			pingText,
			gameText,
			playersCount
		)
	
		-- Execute the copy command
		if setclipboard then
			setclipboard(clipboardPayload)
	
			-- Visual success confirmation feedback
			local originalText = button.Text
			button.Text = "Stats Copied!"
			task.wait(1.5)
			button.Text = originalText
		else
			warn("setclipboard() is only available when executed via your software injector.")
			print("\n--- Clipboard Output Simulation ---\n" .. clipboardPayload)
		end
	end)
	
	
end
coroutine.wrap(ROKZWIC_fake_script)()
local function HITEDN_fake_script() -- TextButton_9.LocalScript 
	local script = Instance.new('LocalScript', TextButton_9)

	local button = script.Parent
	local TeleportService = game:GetService("TeleportService")
	local Players = game:GetService("Players")
	
	local localPlayer = Players.LocalPlayer
	
	button.MouseButton1Click:Connect(function()
		-- 1. Visual feedback showing the process is starting
		button.Text = "Finding Server..."
		button.Active = false -- Disables the button to prevent spam-clicking
	
		-- 2. Attempt to find and jump into a different server instance
		local success, err = pcall(function()
			-- TeleportAsync handles fetching a fresh server instance automatically
			TeleportService:TeleportAsync(game.PlaceId, {localPlayer})
		end)
	
		-- 3. If the request fails (e.g., Roblox servers are lagging), reset the button
		if not success then
			warn("Server hop failed: " .. tostring(err))
			button.Text = "Failed!"
			button.Active = true
	
			task.wait(2)
			button.Text = "Do it"
		end
	end)
	
	
	
end
coroutine.wrap(HITEDN_fake_script)()
local function QLKIGMY_fake_script() -- TextButton_10.LocalScript 
	local script = Instance.new('LocalScript', TextButton_10)

	local button = script.Parent
	local Workspace = game:GetService("Workspace")
	
	local antiLagEnabled = false
	local textureCache = {} -- Keeps a secure log of original texture IDs to restore them later
	local connections = {} -- Tracks active listeners for newly spawned objects
	
	-- A comprehensive list of texture assets we want to modify to reduce rendering overhead
	local textureClasses = {
		"Texture", "Decal", "RoofFastener", "FloorFastener", 
		"WallFastener", "Beam", "Trail", "ParticleEmitter", "Smoke", "Sparkles"
	}
	
	-- Checks if an object belongs to our texture target list
	local function isTexture(obj)
		for _, className in ipairs(textureClasses) do
			if obj:IsA(className) then
				return true
			end
		end
		return false
	end
	
	-- Disables a texture and logs its original asset ID
	local function clearTexture(obj)
		if isTexture(obj) and not textureCache[obj] then
			if obj:IsA("Texture") or obj:IsA("Decal") then
				textureCache[obj] = obj.Texture
				obj.Texture = ""
			elseif obj:IsA("ParticleEmitter") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
				textureCache[obj] = obj.Enabled
				obj.Enabled = false
			elseif obj:IsA("Beam") or obj:IsA("Trail") then
				textureCache[obj] = obj.Enabled
				obj.Enabled = false
			end
		end
	end
	
	-- Toggles the entire game environment state
	local function toggleAntiLag()
		antiLagEnabled = not antiLagEnabled
	
		if antiLagEnabled then
			button.Text = "Anti-Lag: ON"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green text feedback
	
			-- 1. Wipe existing textures in the world
			for _, descendant in ipairs(Workspace:GetDescendants()) do
				clearTexture(descendant)
			end
	
			-- 2. Catch future objects that stream into your rendering zone
			connections.ItemAdded = Workspace.DescendantAdded:Connect(function(descendant)
				clearTexture(descendant)
			end)
		else
			button.Text = "Anti-Lag: OFF"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text color back to white
	
			-- 1. Safely disconnect background monitoring listeners
			if connections.ItemAdded then
				connections.ItemAdded:Disconnect()
				connections.ItemAdded = nil
			end
	
			-- 2. Restore all original texture IDs from our secure log cache
			for obj, originalAsset in pairs(textureCache) do
				if obj and obj.Parent then
					pcall(function()
						if obj:IsA("Texture") or obj:IsA("Decal") then
							obj.Texture = originalAsset
						else
							obj.Enabled = originalAsset
						end
					end)
				end
			end
	
			-- 3. Clear our memory cache tracking ledger completely
			table.clear(textureCache)
		end
	end
	
	button.MouseButton1Click:Connect(toggleAntiLag)
	
	
end
coroutine.wrap(QLKIGMY_fake_script)()
local function EQNWE_fake_script() -- TextButton_11.LocalScript 
	local script = Instance.new('LocalScript', TextButton_11)

	local button = script.Parent
	local Players = game:GetService("Players")
	local VirtualUser = game:GetService("VirtualUser")
	
	local localPlayer = Players.LocalPlayer
	local antiAfkEnabled = false
	local idleConnection = nil
	
	-- The function that tricks the engine when you go idle
	local function preventKick()
		if antiAfkEnabled then
			-- Captures control of the input layer and simulates a right-click
			VirtualUser:CaptureController()
			VirtualUser:ClickButton2(Vector2.new(0, 0))
	
			-- Optional: Output feedback to your executor console
			print("Anti-AFK: Keystroke simulated to prevent disconnection!")
		end
	end
	
	-- Toggles the state of the button
	local function toggleAntiAfk()
		antiAfkEnabled = not antiAfkEnabled
	
		if antiAfkEnabled then
			button.Text = "Anti-AFK: On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Turn text green
	
			-- Connect to Roblox's idle tracking event
			idleConnection = localPlayer.Idled:Connect(preventKick)
		else
			button.Text = "Anti-AFK: Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- Revert text white
	
			-- Disconnect the listener safely
			if idleConnection then
				idleConnection:Disconnect()
				idleConnection = nil
			end
		end
	end
	
	button.MouseButton1Click:Connect(toggleAntiAfk)
	
	
end
coroutine.wrap(EQNWE_fake_script)()
local function UCYL_fake_script() -- TextButton_12.LocalScript 
	local script = Instance.new('LocalScript', TextButton_12)

	local UserInputService = game:GetService("UserInputService")
	local button = script.Parent
	
	-- Uses your exact absolute path layout directly
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame
	
	-- Configurations: Set to true by default
	local dragEnabled = true 
	local dragging, dragInput, dragStart, startPos
	
	-- 1. Manage the toggle states and button text ("On" and "Off")
	local function toggleDragging()
		dragEnabled = not dragEnabled
	
		if dragEnabled then
			button.Text = "On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green feedback text
		else
			button.Text = "Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White feedback text
			dragging = false -- Resets status if locked mid-drag
		end
	end
	
	-- Initialize the button's starting look to match the default "On" status
	button.Text = "Window Drag: On"
	button.TextColor3 = Color3.fromRGB(50, 220, 100)
	button.MouseButton1Click:Connect(toggleDragging)
	
	-- 2. Handle the core drag-and-drop mechanics
	local function updateDrag(input)
		local delta = input.Position - dragStart
		if mainFrame then
			mainFrame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X, 
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end
	
	if mainFrame then
		mainFrame.InputBegan:Connect(function(input)
			-- Instantly block dragging interactions if toggled to "Off"
			if not dragEnabled then return end
	
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = mainFrame.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		mainFrame.InputChanged:Connect(function(input)
			if not dragEnabled then return end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and dragEnabled then
				updateDrag(input)
			end
		end)
	else
		warn("Loader Alert: Could not find the main window Frame object using the specified layout paths.")
	end
	
	
end
coroutine.wrap(UCYL_fake_script)()
local function SIIMUF_fake_script() -- TextButton_13.LocalScript 
	local script = Instance.new('LocalScript', TextButton_13)

	local UserInputService = game:GetService("UserInputService")
	local button = script.Parent
	
	-- Uses your exact absolute path layout directly
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.TextButton
	
	-- Configurations: Set to true by default
	local dragEnabled = true 
	local dragging, dragInput, dragStart, startPos
	
	-- 1. Manage the toggle states and button text ("On" and "Off")
	local function toggleDragging()
		dragEnabled = not dragEnabled
	
		if dragEnabled then
			button.Text = "On"
			button.TextColor3 = Color3.fromRGB(50, 220, 100) -- Green feedback text
		else
			button.Text = "Off"
			button.TextColor3 = Color3.fromRGB(255, 255, 255) -- White feedback text
			dragging = false -- Resets status if locked mid-drag
		end
	end
	
	-- Initialize the button's starting look to match the default "On" status
	button.Text = "Window Drag: On"
	button.TextColor3 = Color3.fromRGB(50, 220, 100)
	button.MouseButton1Click:Connect(toggleDragging)
	
	-- 2. Handle the core drag-and-drop mechanics
	local function updateDrag(input)
		local delta = input.Position - dragStart
		if mainFrame then
			mainFrame.Position = UDim2.new(
				startPos.X.Scale, startPos.X.Offset + delta.X, 
				startPos.Y.Scale, startPos.Y.Offset + delta.Y
			)
		end
	end
	
	if mainFrame then
		mainFrame.InputBegan:Connect(function(input)
			-- Instantly block dragging interactions if toggled to "Off"
			if not dragEnabled then return end
	
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = mainFrame.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		mainFrame.InputChanged:Connect(function(input)
			if not dragEnabled then return end
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging and dragEnabled then
				updateDrag(input)
			end
		end)
	else
		warn("Loader Alert: Could not find the main window Frame object using the specified layout paths.")
	end
	
	
end
coroutine.wrap(SIIMUF_fake_script)()
local function PIJLZJ_fake_script() -- TextButton_14.LocalScript 
	local script = Instance.new('LocalScript', TextButton_14)

	local button = script.Parent
	
	-- 1. Paths to your elements (Adjust these to match your exact hierarchy)
	-- Change this path to point exactly to your main background Frame object
	local mainFrame = script.Parent.Parent.Parent.Parent.Parent.Parent.Frame
	-- Change this path to point exactly to your cool opening TextButton object
	local openButton = script.Parent.Parent.Parent.Parent.Parent.Parent.TextButton -- Change "OpenButton" to its real name
	
	-- 2. Save the original positions into memory immediately when the script executes
	local originalFramePosition = mainFrame.Position
	local originalButtonPosition = openButton.Position
	
	-- When the reset button is clicked:
	button.MouseButton1Click:Connect(function()
		if mainFrame then
			-- Instantly snap the main window back to its true centered position
			mainFrame.Position = originalFramePosition
		end
	
		if openButton then
			-- Instantly snap the draggable opening button back to its starting spot
			openButton.Position = originalButtonPosition
		end
	
		-- Quick visual confirmation on the reset button text
		local originalText = button.Text
		button.Text = "Positions Reset!"
		task.wait(1.5)
		button.Text = originalText
	end)
	
end
coroutine.wrap(PIJLZJ_fake_script)()
local function UNAZRPJ_fake_script() -- TextButton_15.LocalScript 
	local script = Instance.new('LocalScript', TextButton_15)

	local button = script.Parent
	
	-- Save your default color and your custom hover color
	local normalColor = Color3.fromRGB(30, 30, 30)
	local hoverColor = Color3.fromRGB(45, 45, 45) -- Slightly brighter when hovered
	
	-- Change color when mouse enters the button area
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = hoverColor
	end)
	
	-- Revert color when mouse leaves the button area
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = normalColor
	end)
	
	
end
coroutine.wrap(UNAZRPJ_fake_script)()
local function YABEW_fake_script() -- TextButton_15.LocalScript 
	local script = Instance.new('LocalScript', TextButton_15)

	local button = script.Parent
	-- local sound = button:WaitForChild("Sound") avoids the infinite yield.
	
	-- Find your main hidden window frame
	local screenGui = button.Parent
	local mainFrame = screenGui:WaitForChild("Frame") -- Change "Frame" if you renamed it
	
	-- When the button is clicked:
	button.MouseButton1Click:Connect(function()
		-- Only play the sound if the frame is currently invisible (closed)
		if not mainFrame.Visible then
			-- sound:Play() this causes problems
		end
	
		-- Toggle the visibility of the frame
		mainFrame.Visible = not mainFrame.Visible
	end)
	
end
coroutine.wrap(YABEW_fake_script)()
-- New rewrite

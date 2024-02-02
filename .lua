local uinotifyscript = {}
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UICorner = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")

ScreenGui.Parent = game:GetService("CoreGui");
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Enabled = false
ScreenGui.Name = "Vortex UI Notify"

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(19, 24, 52)
Frame.Position = UDim2.new(0.5, 0, .5, 0)
Frame.Size = UDim2.new(.55, 0, .6, 0)
Frame.AnchorPoint = Vector2.new(.5,.5)

UIAspectRatioConstraint.Parent = Frame
UIAspectRatioConstraint.AspectRatio = 2.000

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Frame

UIListLayout.Parent = Frame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Center
UIListLayout.Padding = UDim.new(.05, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.5, 0, 0.1, 0)
TextLabel.Size = UDim2.new(1, 0, .5, 0)
TextLabel.Font = Enum.Font.GothamBlack
TextLabel.Text = "WARNING!\nWe found Anti-cheat which is owned by adonis admin\n( Do you want to bypass all anti-cheats? )"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextButton.Size = UDim2.new(.5, 0, .15, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Yes"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 41.000
TextButton.TextWrapped = true
            
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.Size = UDim2.new(.5, 0, .15, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "No"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 41.000
TextButton_2.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(.1, 0)
UICorner_2.Parent = TextButton
UICorner_3.CornerRadius = UDim.new(.1, 0)
UICorner_3.Parent = TextButton_2
local cstm = false

TextButton.MouseButton1Click:Once(function()
		ScreenGui.Enabled = false
end)

TextButton_2.MouseButton1Click:Once(function()
		ScreenGui.Enabled = false
end)
  
function uinotifyscript:PromptNotify(title,params)
  TextLabel.Text = title
  TextButton.Text = params["ButtonText"][1]
  TextButton_2.Text = params["ButtonText"][2]
  ScreenGui.Enabled = true
end

function uinotifyscript:PromptButton(funct)
TextButton.MouseButton1Click:Once(function()
		ScreenGui.Enabled = false
    funct()
end)
end

return uinotifyscript

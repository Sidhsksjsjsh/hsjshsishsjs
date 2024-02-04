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
local HTMLcolors = { 
    ["Red"] = "rgb(255, 0, 0)",
    ["Yellow"] = "rgb(255, 255, 0)",
    ["Orange"] = "rgb(255, 165, 0)",
    ["Pink"] = "rgb(255, 192, 203)",
    ["Light Green"] = "rgb(50, 205, 50)",
    ["Sky Blue"] = "rgb(135, 206, 235)",
    ["Black"] = "rgb(0, 0, 0)",
    ["Dark Red"] = "rgb(139, 0, 0)",
    ["Dark Green"] = "rgb(0, 100, 0)",
    ["Dark Blue"] = "rgb(0, 0, 139)",
    ["Gray"] = "rgb(128, 128, 128)",
    ["Dark Purple"] = "rgb(128, 0, 128)",
    ["Dark Brown"] = "rgb(101, 67, 33)",
    ["Dark Purple"] = "rgb(128, 0, 128)",
    ["Dark Blue"] = "rgb(0, 0, 128)",
    ["Brown"] = "rgb(139, 69, 19)",
    ["Purple"] = "rgb(128, 0, 128)",
    ["Blue"] = "rgb(0, 0, 255)",
    ["White"] = "rgb(255, 255, 255)",
    ["Green"] = "rgb(0, 255, 0)",
    ["Bright Blue"] = "rgb(173, 216, 230)",
    ["Lavender"] = "rgb(230, 230, 250)",
    ["Peach"] = "rgb(255, 218, 185)",
    ["Teal"] = "rgb(0, 128, 128)",
    ["Salmon"] = "rgb(250, 128, 114)",
    ["Gold"] = "rgb(255, 215, 0)",
    ["Dark Slate Gray"] = "rgb(47, 79, 79)",
    ["Slate Blue"] = "rgb(106, 90, 205)",
    ["Cadet Blue"] = "rgb(95, 158, 160)",
    ["Chocolate"] = "rgb(210, 105, 30)",
    ["Forest Green"] = "rgb(34, 139, 34)",
    ["Steel Blue"] = "rgb(70, 130, 180)",
    ["Olive"] = "rgb(128, 128, 0)",
    ["Tomato"] = "rgb(255, 99, 71)",
    ["Khaki"] = "rgb(240, 230, 140)",
    ["Peru"] = "rgb(205, 133, 63)",
    ["Royal Blue"] = "rgb(65, 105, 225)",
    ["Medium Purple"] = "rgb(147, 112, 219)",
    ["Blue Violet"] = "rgb(138, 43, 226)",
    ["Cornflower Blue"] = "rgb(100, 149, 237)",
    ["Indian Red"] = "rgb(205, 92, 92)",
    ["Medium Violet Red"] = "rgb(199, 21, 133)",
    ["Pale Violet Red"] = "rgb(219, 112, 147)",
    ["Medium Sea Green"] = "rgb(60, 179, 113)",
    ["Yellow Green"] = "rgb(154, 205, 50)",
    ["Sky Blue"] = "rgb(135, 206, 235)",
    ["Medium Slate Blue"] = "rgb(123, 104, 238)",
    ["Medium Turquoise"] = "rgb(72, 209, 204)",
    ["Light Sea Green"] = "rgb(32, 178, 170)",
    ["Dark Olive Green"] = "rgb(85, 107, 47)",
    ["Medium Orchid"] = "rgb(186, 85, 211)",
    ["Slate Gray"] = "rgb(112, 128, 144)",
    ["Deep Sky Blue"] = "rgb(0, 191, 255)"
}

function uinotifyscript:colorfonts(str,color)
      return "<font color='" .. HTMLcolors[color] .. "'>" .. str .. "</font>"
end

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
TextLabel.Text = "Error"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000
TextLabel.TextWrapped = true
TextLabel.RichText = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
TextButton.Size = UDim2.new(.5, 0, .15, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "(...)" -- Yes
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 41.000
TextButton.TextWrapped = true
TextButton.RichText = true
            
TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
TextButton_2.Size = UDim2.new(.5, 0, .15, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "(...)" -- No
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextSize = 41.000
TextButton_2.TextWrapped = true
TextButton_2.RichText = true

UICorner_2.CornerRadius = UDim.new(.1, 0)
UICorner_2.Parent = TextButton
UICorner_3.CornerRadius = UDim.new(.1, 0)
UICorner_3.Parent = TextButton_2
local cstm = false

--[[TextButton.MouseButton1Click:Once(function()
		ScreenGui.Enabled = false
end)

TextButton_2.MouseButton1Click:Once(function()
		ScreenGui.Enabled = false
end)]]

TextButton.MouseButton1Click:Connect(function()
		ScreenGui.Enabled = false
end)

TextButton_2.MouseButton1Click:Connect(function()
		ScreenGui.Enabled = false
end)
  
function uinotifyscript:PromptNotify(title,params)
  TextLabel.Text = title
  TextButton.Text = params["ButtonText"][1]
  TextButton_2.Text = params["ButtonText"][2]
  ScreenGui.Enabled = true
if params["ButtonText"][1] == "" then
	TextButton.Visible = false
elseif params["ButtonText"][2] == "" then
	TextButton_2.Visible = false
elseif params["ButtonText"][1] ~= "" then
	TextButton.Visible = true
elseif params["ButtonText"][2] ~= "" then
	TextButton_2.Visible = true
elseif params["ButtonText"][1] == "" and params["ButtonText"][2] == "" then
	TextButton.Visible = false
	TextButton_2.Visible = false
elseif params["ButtonText"][1] ~= "" and params["ButtonText"][2] ~= "" then
	TextButton.Visible = true
	TextButton_2.Visible = true
end
end

function uinotifyscript:PromptButton(funct)
TextButton.MouseButton1Click:Connect(function()
    ScreenGui.Enabled = false
    funct()
end)
end

return uinotifyscript

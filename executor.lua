-- Gui to Lua
-- Version: 3.2

-- Variables:

local HiddenUI = get_hidden_gui or gethui
local visible = true

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ImageButton = Instance.new("ImageButton")

--Properties:

ScreenGui.Parent = HiddenUI()
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(46, 46, 46)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.478932589, 0, 0.555555582, 0)
Frame.Size = UDim2.new(0.394662917, 0, 0.358237535, 0)

TextLabel.Parent = Frame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.355871886, 0, -0.0641711205, 0)
TextLabel.Size = UDim2.new(0.711743772, 0, 0.122994654, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Sirhurt v6 🤯"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

TextBox.Parent = Frame
TextBox.AnchorPoint = Vector2.new(0.5, 0.5)
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.498220623, 0, 0.497326195, 0)
TextBox.Size = UDim2.new(0.928825617, 0, 0.903743327, 0)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSans
TextBox.MultiLine = true
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top

ImageButton.Parent = Frame
ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.750889659, 0, -0.0641711205, 0)
ImageButton.Size = UDim2.new(0.0818505362, 0, 0.122994654, 0)
ImageButton.Image = "rbxassetid://283666551"

ImageButton.MouseButton1Up:Connect(function()
	loadstring(TextBox.ContentText)
end)

game.UserInputService.InputBegan:Connect(function(input, gameProc)
	if input.KeyCode == Enum.KeyCode.Insert then
		if visible then
			ScreenGui.Enabled = false
			visible = false
		else
			ScreenGui.Enabled = true
			visible = true
		end
	end
end)

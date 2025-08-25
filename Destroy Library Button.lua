local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local gui = Instance.new("ScreenGui")
gui.Parent = playerGui
local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0, 25, 0, 25)
btn.Position = UDim2.new(0.5, -12, 0.5, -12)
btn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
btn.Text = ""
btn.Parent = gui
local dragging = false
local dragStart
local startPos
local function onDrag(input)
	local delta = input.Position - dragStart
	btn.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end
btn.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = btn.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
btn.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		UserInputService.InputChanged:Connect(function(move)
			if dragging and move == input then
				onDrag(move)
			end
		end)
	end
end)
btn.MouseButton1Click:Connect(function()
	if not dragging then
		local libGui = game:GetService("CoreGui"):FindFirstChild("Library")
		if libGui then
			libGui:Destroy()
		end
	end
end)

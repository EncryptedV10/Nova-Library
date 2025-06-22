-- Booting Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/EncryptedV10/Nova-Library/refs/heads/main/Library.lua", true))()

```lua
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/yourusername/repo/main/path/to/Library.lua", true))()'''

-- Window Creation
local window = Library:AddWindow("Library Name")

-- Tab Creation
local tab = window:CreateTab("tab")

-- Toggle Creation
local Toggle = tab:AddToggle("Toggle", function(state)
	print("Toggle is now:", state)
end)

-- Label Creation
local Label = tab:AddLabel("Label")

-- TextBox Creation
local TextBox = tab:AddTextbox("TextBox", function(text)
	print("You typed:", text)
end)

-- Button Creation
local button = tab:AddButton("Button", function()
	print("Button was clicked!")
end)

-- Slider Creation
local Slider = tab:AddSlider("slider", 0, 100, function(val)
	print("Slider value:", val)
end)

-- Dropdown Creation
local Dropdown tab:AddDropdown("Dropdown", {"Option1", "Option2", "Option3"}, function(selected)
	print("You selected:", selected)
end)

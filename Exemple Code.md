# Booting Library
```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/EncryptedV10/Nova-Library/refs/heads/main/Library.lua", true))()
```

# Window Creation
```lua
local window = Library:AddWindow("Library Name")
```
# Tab Creation
```lua
local tab = window:CreateTab("tab")
```

# Toggle Creation
```lua
local Toggle = tab:AddToggle("Toggle", function(state)
	print("Toggle is now:", state)
end)
```

# Label Creation
```lua
local Label = tab:AddLabel("Label")
```

# TextBox Creation
```lua
local TextBox = tab:AddTextbox("TextBox", function(text)
	print("You typed:", text)
end)
```

#-- Button Creation
```lua
local button = tab:AddButton("Button", function()
	print("Button was clicked!")
end)
```

# Slider Creation
```lua
local Slider = tab:AddSlider("slider", 0, 100, function(val)
	print("Slider value:", val)
end)
```

# Dropdown Creation
```lua
local Dropdown tab:AddDropdown("Dropdown", {"Option1", "Option2", "Option3"}, function(selected)
	print("You selected:", selected)
end)
```

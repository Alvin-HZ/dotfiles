-- This file sources other files in `hyprland` and `custom` folders
-- You wanna add your stuff in files in `custom`

hl.on("hyprland.start", function()
  hl.exec_cmd("noctalia")
  -- hl.exec_cmd("hypridle")
end)
require("noctalia.general")
require("noctalia.env")
require("noctalia.exec")
require("noctalia.keybinds")
require("noctalia.workspaces")
require("noctalia.rules")
require("noctalia.custom")


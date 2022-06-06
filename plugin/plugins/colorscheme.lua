require "user.themes.tokyonight_settings"
require "user.themes.onedark_settings"
require "user.themes.enfocado_settings"
require "user.themes.vscode_settings"

-- local colorscheme = "tokyonight"
-- local colorscheme = "onedarker"
-- local colorscheme = "darkplus"
-- local colorscheme = "onedark"
-- local colorscheme = "enfocado"
local colorscheme = "vscode"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

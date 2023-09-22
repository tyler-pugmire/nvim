--[[
local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return {}
end

local tree_cb = nvim_tree_config.nvim_tree_callback
]]--
return {
  "kyazdani42/nvim-tree.lua",
  lazy = false,
  config = function()
    require('nvim-tree').setup {
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
    }
  end
}

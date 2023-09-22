return {
  'zaldih/themery.nvim',
  config = function()
    require('themery').setup({
      themes = { "tokyonight", "vscode", "mytheme" }, -- Your list of installed colorschemes
      themeConfigFile = vim.fn.stdpath("config") .. "/lua/theme.lua", -- Described below
      livePreview = true, -- Apply theme while browsing. Default to true.
    })
  end
}

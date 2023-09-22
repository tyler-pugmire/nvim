return {
  { -- color scheme
    'folke/tokyonight.nvim',
    lazy = false,
    config = function()
      require('tokyonight').setup({
        -- use the night style
        style = 'night',
        light_style = 'moon',
        sidebars = { 'qf', 'packer', 'help' },
      })
      --vim.cmd('color tokyonight')
    end,
    enabled = true,
  },
}

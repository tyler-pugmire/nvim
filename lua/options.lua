-- :help options
--[[
local options = {
  backup = false,                          -- create a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,
  fileencoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  mouse = "a",
  pumheight = 10,
  showmode = false,
  showtabline = 2,
  smartcase = true,
  smartindent = true,
  splitbelow = true,
  splitright = true,
  swapfile = false,
  timeoutlen = 1000,
  undofile = true,
  updatetime = 300,
  writebackup = false,
  expandtab = true,
  shiftwidth = 2,
  tabstop = 2,
  cursorline = false,
  number = true,
  relativenumber = false,
  numberwidth = 4,
  signcolumn = "yes",
  wrap = false,
  scrolloff = 8,
  sidescrolloff = 8,
  guifont = "monospace:h17",
}

--]]

vim.opt.backup           = false
vim.opt.clipboard        = "unnamedplus"
vim.opt.completeopt      = { 'menu', 'menuone', 'noselect' }
vim.opt.ignorecase       = true
vim.opt.hlsearch         = true
vim.opt.mouse            = 'a'
vim.opt.showmode         = false
vim.opt.showtabline      = 2
vim.opt.smartcase        = true
vim.opt.smartindent      = true
vim.opt.splitright       = true
vim.opt.splitbelow       = true
vim.opt.swapfile         = false
vim.opt.timeoutlen       = 500
vim.opt.undofile         = true
vim.opt.writebackup      = false
vim.opt.expandtab        = true
vim.opt.shiftwidth       = 4
vim.opt.tabstop          = 4
vim.opt.cursorline       = true
vim.opt.number           = true
vim.opt.relativenumber   = false
vim.opt.signcolumn       = 'yes:1'
vim.opt.wrapmargin       = 0
vim.opt.termguicolors    = true
vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.shortmess:append { c = true, S = true }

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODOL this doesn't seem to work

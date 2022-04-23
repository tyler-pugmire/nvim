local configs = require("nvim-treesitter.configs")

--local os_name = vim.loop.os_uname().sysname
--if os_name == "Windows_NT" then
  --local fn = vim.fn
  --fn.system("\"C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Auxiliary\\Build\\vcvars64.bat\"")
  --os.execute[["C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Community\\VC\\Auxiliary\\Build\\vcvars64.bat"]]
--end

configs.setup {
  ensure_installed = "all",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true,
  },
  indent = {enable = true, disable = { "" } },
}

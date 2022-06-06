local status_ok, formatter = pcall(require, "formatter")
if not status_ok then
  return
end


local util = require "formatter.util"

formatter.setup {
  -- All formatter configurations are opt-in
  filetype = {
    lua = {
      -- Pick from defaults:
      require('formatter.filetypes.lua').stylua,

      -- ,or define your own:
      -- function()
      --   return {
      --     exe = "stylua",
      --     args = {
      --       "--search-parent-directories",
      --       "--stdin-filepath",
      --       util.escape_path(util.get_current_buffer_file_path()),
      --       "--",
      --       "-",
      --     },
      --     stdin = true,
      --   }
      -- end
    },
    cpp = {
      -- require("formatter.filetypes.cpp").astyle,
      function ()
        return {
          exe = "clang-format",
          args = {
            "-assume-filename",
            util.escape_path(util.get_current_buffer_file_name()),
            "-style",
            "Microsoft",
          },
          stdin = true,
          try_node_modules = true,
        }
      end
    }
  }
}

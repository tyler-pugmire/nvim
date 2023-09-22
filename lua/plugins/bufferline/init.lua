local config = {
    options = {
        numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        --close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        --right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
        --left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        --middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator_icon = "▎",
        buffer_close_icon = "",
        -- buffer_close_icon = '',
        modified_icon = "●",
        close_icon = "",
        -- close_icon = '',
        left_trunc_marker = "",
        offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    }
}

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = true,
    --event = "User FileOpened",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = function()
        require("bufferline").setup(config)
    end
}

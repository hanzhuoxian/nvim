-- define your colorscheme here
local colorscheme = 'onedark'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

-- Lua
require('onedark').setup {
    style = 'darker',
    colors = {
        comment_color = '#579a14'
    },
    highlights = {
        ["@comment"] = { fg = "$comment_color" },
        ["@specialcomment"] = { fg = "$comment_color" },
        ["@keyword"] = { fg = '$comment_color' },
    }
}
require('onedark').load()

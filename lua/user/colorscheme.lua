-- define your colorscheme here
local colorscheme = 'onedark'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end

-- Lua
require('onedark').setup {
    --style = 'deep', -- dark | darker | cool | deep | warm |warmer
    colors = {
        comment_green = '#579a14',
    },
    highlights = {
        ["@comment"] = {fg = '#00ff00'},
        TSComment = {fg = '#579a14'}
    }
}
require('onedark').load()

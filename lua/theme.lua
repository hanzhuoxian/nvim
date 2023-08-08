-- define your colorscheme here
local theme = 'onedark'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. theme)
if not is_ok then
    vim.notify('colorscheme ' .. theme .. ' not found!')
    return
end

-- Lua
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()
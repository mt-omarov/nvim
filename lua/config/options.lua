local global = vim.g
local o = vim.opt

global.mapleader = " "
global.autoformat = false

o.encoding = "utf-8"
o.fileencoding = "utf-8"

o.number = true
o.relativenumber = true
o.colorcolumn = "80"

o.title = true
o.hlsearch = true
o.ignorecase = true

o.shiftwidth = 4
o.smarttab = true
o.expandtab = true
o.tabstop = 4
o.softtabstop = 4

o.mouse = "a"

global.clipboard = {
    name = 'OSC 52',
    copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*')
    },
    paste = {
        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
        ['*'] = require('vim.ui.clipboard.osc52').paste('*')
    }
}

if vim.env.TMUX ~= nil then
    local copy = {'tmux', 'load-buffer', '-w', '-'}
    local paste = {'bash', '-c', 'tmux refresh-client -l && sleep 0.05 && tmux save-buffer -'}
    vim.g.clipboard = {
        name = 'tmux',
        copy = {
            ['+'] = copy,
            ['*'] = copy,
        },
        paste = {
            ['+'] = paste,
            ['*'] = paste,
        },
        cache_enabled = 0,
    }
end

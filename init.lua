-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('langmapper').automapping({ global = true, buffer = true })

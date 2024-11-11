local wezterm = require 'wezterm'
local config = {}

-- launch Zsh with login option for rvm
config.default_prog = { '/bin/zsh', '-l' }

return config

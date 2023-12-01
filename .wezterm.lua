-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
--config.font = wezterm.font 'JetBrainsMono Nerd Font'
config.color_scheme = 'iTerm2 Default'
config.initial_cols = 164
config.initial_rows = 38

-- and finally, return the configuration to wezterm
return config

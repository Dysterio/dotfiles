local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe", "-NoLogo" }
config.enable_tab_bar = false

config.font = wezterm.font("CaskaydiaMono Nerd Font Mono", { weight = "DemiLight", stretch = "Normal", style = "Normal" })
config.color_scheme = "Gruvbox Material (Gogh)"

config.enable_kitty_graphics = true

return config

-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config = {
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	window_background_opacity = 0.9,
	macos_window_background_blur = 30,
	-- font = wezterm.font("MesloLGS Nerd Font Mono"),
	font_size = 19,
	color_scheme = "Catppuccin Mocha",
	window_background_gradient = {
		colors = { "#292a36", "#182237", "#1e1e2e" },
		-- Specifies a Linear gradient starting in the top left corner.
		orientation = { Linear = { angle = -45.0 } },
	},
}

-- and finally, return the configuration to wezterm
return config

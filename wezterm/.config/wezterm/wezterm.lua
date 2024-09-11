-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 10.0
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_tab_index_in_tab_bar = false

config.window_frame = {
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "CaskaydiaCove Nerd Font", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10.0 on Windows but 12.0 on other systems
	font_size = 10.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#181825",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#181825",
}

config.colors = {
	tab_bar = {
		background = "#181825",
		active_tab = {
			bg_color = "#b4befe",
			fg_color = "#181825",
		},
		new_tab = {
			bg_color = "#1e1e2e",
			fg_color = "#cdd6f4",
		},
	},
}

config.background = {
	{
		source = {
			File = "/home/chesca/Pictures/Wallpapers/pixel.png",
		},
		width = "100%",
		repeat_y = "Mirror",
		hsb = {
			brightness = 0.3,
		},
	},
}

-- and the keyboard shortcuts!
local act = wezterm.action

config.keys = {
	{ key = "W", mods = "CTRL|SHIFT", action = act.CloseCurrentPane({ confirm = true }) },
	{ key = "W", mods = "SHIFT|ALT|CTRL", action = act.CloseCurrentTab({ confirm = true }) },
}

return config

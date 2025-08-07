local wezterm = require("wezterm")

local background_image = "/home/btw/wall2.webp"

local config = wezterm.config_builder()
config.color_scheme = 'Dracula (base16)'
config.enable_tab_bar = false
config.enable_wayland = false
config.font = wezterm.font("JetBrainsMono NF")
config.font_size = 12
config.background = {
	{
		source = { File = { path = background_image, speed = 0.25 } },
		hsb = {
			brightness = 0.05,
			saturation = 0.3,
			hue = 0.1,
		},
	},
--	{},
}
-- config.window_background_image = background_image
-- config.window_background_image_hsb = {
-- 	brightness = .04,
-- --  saturation = 0.4,
-- --	hue = 0.8,
-- }
-- config.window_background_opacity = 1.0
config.keys = {
	{ key = "c", mods = "CTRL|ALT", action = wezterm.action({ CopyTo = "Clipboard" }) },
	{ key = "v", mods = "CTRL|ALT", action = wezterm.action({ PasteFrom = "Clipboard" }) },
	{ key = "Backspace", mods = "CTRL|ALT", action = "ResetFontSize" },
	{ key = "=", mods = "CTRL|ALT", action = "IncreaseFontSize", params = 2 },
	{ key = "-", mods = "CTRL|ALT", action = "DecreaseFontSize", params = 2 },
}
return config

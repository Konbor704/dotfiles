-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "rose-pine"

config.hide_tab_bar_if_only_one_tab = true

config.window_background_image = "/home/konbor/Pictures/Wallpapers/plama.jpg"

config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.4,

	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 1.0,
}

config.window_background_opacity = 0.6

config.text_background_opacity = 0.3

config.window_decorations = "NONE"

config.window_close_confirmation = "NeverPrompt"

local mux = wezterm.mux

wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():toggle_fullscreen()
end)

config.font = wezterm.font("DejaVu Sans Mono")
-- and finally, return the configuration to wezterm
return config

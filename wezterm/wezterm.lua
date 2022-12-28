local wezterm = require("wezterm")

return {
	color_scheme = "Catppuccin Mocha",
	color_schemes = {
		kanagawa = require("colors.kanagawa"),
	},
	font = wezterm.font_with_fallback({
		{ family = "MonoLisa", weight = "Medium", italic = false },
		{ family = "JetBrains Mono", weight = "Medium", italic = false },
		"Monaco",
	}),
	font_size = 16.0,
	cell_width = 0.905,
	line_height = 1.2,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
}

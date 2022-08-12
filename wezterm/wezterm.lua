local wezterm = require 'wezterm'

return {
	color_scheme = "nord",
	font = wezterm.font_with_fallback {
		'JetBrains Mono',
	},
	font = wezterm.font('JetBrains Mono', { weight = 'Medium', italic = false }),
	font_size = 15.0,
	line_height = 1.2,
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_decorations = "RESIZE",
}

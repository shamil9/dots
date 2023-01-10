local wezterm = require("wezterm")

return {
  color_scheme = "Catppuccin Mocha",
  color_schemes = {
    kanagawa = require("colors.kanagawa"),
  },
  font = wezterm.font_with_fallback({
    { family = "JetBrains Mono", weight = "Medium", italic = false },
    { family = "MonoLisa", weight = "Medium", italic = false },
    "Monaco",
  }),
  font_size = 17.0,
  cell_width = 0.95,
  freetype_load_target = "Light",
  line_height = 1.2,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE",
}

local wezterm = require("wezterm")

return {
	-- Set JetBrainsMono Nerd Font as the primary font
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font", -- Primary font
		"Noto Color Emoji", -- Fallback for emojis
		"Symbols Nerd Font Mono", -- Additional fallback for icons
	}),
	font_size = 12.0, -- Adjust the font size as needed

	-- Optional: Color scheme
	color_scheme = "Poimandres", -- Replace with your preferred color scheme

	-- Optional: Padding for better spacing
	window_padding = {
		left = 5,
		right = 5,
		top = 5,
		bottom = 5,
	},
}

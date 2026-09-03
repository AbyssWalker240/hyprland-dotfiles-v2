require("startenv")
require("style")

hl.config({
  general = {
    resize_on_border = false,
    allow_tearing = false,

    layout = "scrolling",
  },

  dwindle = {
    preserve_split = true,
    smart_split = true,
  },

  scrolling = {
    explicit_column_widths = "0.333, 0.5, 0.667, 1.0"
  },

  misc = {
    disable_hyprland_logo = true,
  },

  input = {
    kb_layout = "us",
    follow_mouse = 1,
  },
})

require("binds")
require("rules")

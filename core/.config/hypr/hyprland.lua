require("startenv")
require("style")

hl.config({
  general = {
    resize_on_border = false,
    allow_tearing = false,

    layout = "dwindle",
  },

  dwindle = {
    preserve_split = true,
    smart_split = true,
  },

  scrolling = {
    fullscreen_on_one_column = false,
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

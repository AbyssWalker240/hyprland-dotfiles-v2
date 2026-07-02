hl.config({
    general = {
      gaps_in = 2,
      gaps_out = 5,

      border_size = 2,

      col = {
        active_border = "#374145", --bg2
        inactive_border = "#272e33", --bg0
      },
    },

    decoration = {
      rounding = 0,
      rounding_power = 0,

      active_opacity = 1.0,
      inactive_opacity = 1.0,

      shadow = {enabled = false},
      blur = {enabled = false},
    },

    animations = {enabled = true},
})

hl.curve("quick", {type = "bezier", points = {{0.15,0},{0.1,1}}})

hl.animation({leaf = "global", enabled = true, speed = 2, bezier = "quick"})
hl.animation({leaf = "workspaces", enabled = true, speed = 2, bezier = "quick", style = "fade"})


-- POPUPS

hl.window_rule({match = {class = "(Rofi)"},
    stay_focused = true,
})

hl.window_rule({match = {class = "(clipse)"},
    float = true,
    size = "1200 1000",
    center = true,
    stay_focused = true,
})

hl.window_rule({match = {class = "(impala)"},
    float = true,
    size = "1000 800",
    stay_focused = true,
})


-- PIP

hl.window_rule({match = {class = "(firefox)", title = "(Picture-in-Picture)"},
    float = true,
    pin = true,
})


-- GAMES TO WORKSPACE 2

hl.window_rule({match = {class = "(CurseForge)"},
    workspace = "2",
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})

hl.window_rule({match = {class = "(.*Minecraft.*)"},
    workspace = "2",
    fullscreen = true,
})

-- Steam
hl.window_rule({match = {class = "(steam)"},
    workspace = "2",
    float = true,
})

-- Set to float or center unless its the client intself, in which case it
hl.window_rule({match = {class = "(steam)", title = ".+"},
    center = true,
})

--                             Resets to tile
hl.window_rule({match = {title = "(^Steam$)"},
    float = false,
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})

-- Games
hl.window_rule({match = {class = "(^steam_app.*$)", title = "(^No Man's Sky$)"},
    workspace = "2",
    fullscreen = true,
})

hl.window_rule({match = {class = "(^steam_app.*$)", title = "(^Stardew Valley$)"},
    workspace = "2",
    fullscreen = true,
})

hl.window_rule({match = {class = "(heroic)"},
    workspace = "2",
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})

hl.window_rule({match = {class = "(rsi launcher.exe)"},
    workspace = "2",
})

hl.window_rule({match = {class = "(starcitizen.exe)"},
    workspace = "2",
})

-- Ignore wine weirdness
hl.window_rule({match = {class = "(explorer.exe)"},
    workspace = "special:magic silent",
})


-- WORKSPACE 3

hl.window_rule({match = {class = "(discord)", initial_title = "(^Discord$)"},
    workspace = "3",
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})

hl.window_rule({match = {class = "(discord)", initial_title = "(^Discord Updater$)"},
    workspace = "3 silent",
    float = true,
    size = "300 350",
    center = true,
})

hl.window_rule({match = {class = "(discord)", initial_title = "(^Discord Popout$)"},
    float = true,
})

hl.window_rule({match = {class = "(Spotify)"},
    workspace = "3",
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})

hl.window_rule({match = {class = "(spotifyplayer)"},
    workspace = "3",
    pseudo = true,
    size = "(monitor_w*0.5) (monitor_h*1)",
})


-- MISC

hl.window_rule({match = {class = "(^blender$)", title = "(^Blender File View$)"},
    float = true,
    center = true,
    size = "(monitor_w*0.25) (monitor_h*0.25)",
})

-- Layer Rules
hl.layer_rule({match = {namespace = "rofi"}, blur = true, ignore_alpha = 0})
hl.layer_rule({match = {namespace = "waybar"}, blur = true, ignore_alpha = 0})
hl.layer_rule({match = {namespace = "notifications"}, blur = true, ignore_alpha = 0})

-- Workspace Rules
hl.workspace_rule({workspace = "1", persistent = true})
hl.workspace_rule({workspace = "2", persistent = true})
hl.workspace_rule({workspace = "3", persistent = true})

-- Ignore maximize requests from apps. You'll probably like this.
hl.window_rule({match = {class = ".*"}, suppress_event = "maximize"})

-- Fix some dragging issues with XWayland
hl.window_rule({
    match = {
        class = "^$",
        title = "^$",
        xwayland = 1,
        float = 1,
        fullscreen = 0,
        pin = 0,
    },
    no_focus = true,
})

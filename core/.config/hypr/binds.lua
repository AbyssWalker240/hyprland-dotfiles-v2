require("variables")


-- MAIN BINDS

hl.bind("SUPER + return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + t", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + c", hl.dsp.window.close("activewindow"))
hl.bind("SUPER + e", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + x", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + v", hl.dsp.exec_cmd(clipboard))
hl.bind("SUPER + CONTROL + r", hl.dsp.exec_cmd(reload))
hl.bind("SUPER + b", hl.dsp.exec_cmd("pkill -SIGUSR1 waybar"))


-- LAUNCHER MODE

hl.define_submap("launchpad", function()
    hl.bind("f", hl.dsp.exec_cmd("firefox"), {auto_consuming = true})
    hl.bind("SHIFT + f", hl.dsp.exec_cmd("firefox --private-window"), {auto_consuming = true})
    hl.bind("s", hl.dsp.exec_cmd("spotify_launcher"), {auto_consuming = true})
    hl.bind("SHIFT + s", hl.dsp.exec_cmd("steam"), {auto_consuming = true})
    hl.bind("d", hl.dsp.exec_cmd("discord"), {auto_consuming = true})
    hl.bind("o", hl.dsp.exec_cmd("com.obsproject.Studio"), {auto_consuming = true})
    hl.bind("v", hl.dsp.exec_cmd("virt-manager"), {auto_consuming = true})
    hl.bind("b", hl.dsp.exec_cmd("bambu-studio"), {auto_consuming = true})
    hl.bind("escape", hl.dsp.submap("reset"), {auto_consuming = false})
end)

hl.bind("SUPER + CONTROL + d", hl.dsp.submap("launchpad"))


-- SCREENSHOTTING

hl.bind("SUPER + ALT + s", hl.dsp.exec_cmd(screenshotclip))
hl.bind("SUPER + CONTROL + s", hl.dsp.exec_cmd(screenshotMENU))


-- TOP RIGHT KEYBOARD CLUSTER

hl.bind("print", hl.dsp.exec_cmd(screenshotMENU))
hl.bind("pause", hl.dsp.exec_cmd(kmenu))
hl.bind("scroll_lock", hl.dsp.exec_cmd(utilmenu))


-- LAYOUT

hl.bind("SUPER + CONTROL + space", hl.dsp.window.float({action = "toggle", window = "activewindow"}))
hl.bind("SUPER + f", hl.dsp.window.fullscreen({mode = "fullscreen", action = "toggle", window = "activewindow"}))
hl.bind("SUPER + m", hl.dsp.window.fullscreen({mode = "maximized", action = "toggle", window = "activewindow"}))
hl.bind("SUPER + ALT + c", hl.dsp.window.center({window = "activewindow"}))
hl.bind("SUPER + p", hl.dsp.window.pseudo("active"))


-- ROFI

hl.bind("SUPER + d", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + r", hl.dsp.exec_cmd(rmenu))
hl.bind("SUPER + tab", hl.dsp.exec_cmd(wmenu))
hl.bind("SUPER + q", hl.dsp.exec_cmd(powermenu))
hl.bind("CONTROL + ALT + delete", hl.dsp.exec_cmd(powermenu))
hl.bind("SUPER + space", hl.dsp.exec_cmd(websearch))
hl.bind("SUPER + CONTROL + e", hl.dsp.exec_cmd(romoji))
hl.bind("SUPER + u", hl.dsp.exec_cmd(utilmenu))
hl.bind("SUPER + CONTROL + p", hl.dsp.exec_cmd(calculrofi))


-- WORKSPACE SWITCHING

for i = 1, 10 do
  local key = i % 10 -- Modulo so 10 is mapped to 0
  
  hl.bind("SUPER + " .. key, hl.dsp.focus({workspace = i})) -- Switch to workspace
  
  hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({workspace = i, follow = false})) -- Move window to workspace silently
  
  hl.bind("SUPER + ALT + " .. key, hl.dsp.window.move({workspace = i, follow = true})) -- Move window and follow to workspace

end

-- Special Workspace
hl.bind("SUPER + s", hl.dsp.workspace.toggle_special("special"))
hl.bind("SUPER + SHIFT + s", hl.dsp.window.move({workspace = "special:special", follow = false}))


-- WINDOW SWITCHING AND MOVING

hl.bind("SUPER + left", hl.dsp.focus({direction = "l"}))
hl.bind("SUPER + right", hl.dsp.focus({direction = "r"}))
hl.bind("SUPER + up", hl.dsp.focus({direction = "u"}))
hl.bind("SUPER + down", hl.dsp.focus({direction = "d"}))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap({direction = "l"}))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({direction = "r"}))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap({direction = "u"}))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap({direction = "d"}))


-- WINDOW MOVE AND RESIZE WITH MOUSE

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- MULTIMEDIA CONTROLS

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("$HOME/.local/bin/scripts/hyprland-utils/volume.sh up"), {locked = true, repeating = true})
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("$HOME/.local/bin/scripts/hyprland-utils/volume.sh down"),  {locked = true, repeating = true})
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("pavucontrol"), {locked = true, repeating = true})

-- Playerctl
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl -p spotify,spotify_player next"), {locked = true})
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl -p spotify,spotify_player play-pause"), {locked = true})
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl -p spotify,spotify_player play-pause"), {locked = true})
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl -p spotify,spotify_player previous"), {locked = true})

------------------
---- MONITORS ----
------------------

hl.monitor({
    output = "DP-3",
    mode = "3440x1440@144",
    position = "0x0",
    scale = "1",
})


--------------------
---- AUTO START ----
--------------------

hl.on("hyprland.start", function ()
    hl.exec_cmd("/usr/lib/polkit-kde-authentication-agent-1")
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("clipse -listen")
    hl.exec_cmd("$HOME/.local/bin/scripts/waybar-utils/wl-sunset.sh init")
    hl.exec_cmd("$HOME/.local/bin/scripts/hyprland-utils/clearTempHyprshots.sh")
    
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme BreezeX-RosePine-Linux")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
)


-----------------------------
--- ENVIRONMENT VARIABLES ---
-----------------------------

hl.env("HYPRCURSOR_THEME","rose-pine-hyprcursor")
hl.env("XCURSOR_THEME","BreezeX-RosePine-Linux")
hl.env("XCURSOR_SIZE","24")
hl.env("HYPRCURSOR_SIZE","24")
hl.env("QT_QPA_PLATFORMTHEME","qt6ct")

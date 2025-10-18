{
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      "$terminal" = "kitty";
      "$fileManager" = "$terminal yazi";
      "$menu" = "rofi -show drun -show-icons -icon-theme Papirus";
      "$browser" = "firefox";

      monitor = ",preferred,auto,auto";

      general = {
        gaps_in = 5;
        gaps_out = 20;
        border_size = 2;

        "col.active_border" = "rgba(33ccffee) rgba(00ff99ee) 4deg";
        "col.inactive_border" = "rgba(595959aa)";

        resize_on_border = false;
        allow_tearing = false;

        layout = "dwindle";
      };

      decoration = {
        rounding = 10;
        rounding_power = 2;

        active_opacity = 1;
        inactive_opacity = 1;

        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 6;
          passes = 4;
          ignore_opacity = true;
          xray = false;
          new_optimizations = true;
        };
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "master";
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };

      gesture = [
        "3, horizontal, workspace"
      ];

      env = [
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_SIZE,24"
        "QT_QPA_PLATFORMTHEME,gtk2"
        "GSK_RENDERER,ngl"
        "NIXOS_OZONE_WL,1"
      ];

      exec-once = [
        "hyprctl setcursor Bibata-Modern-Classic 24"
        "swww-daemon"
        "waybar & nm-applet & blueman-applet"
        "wl-paste --type text --watch cliphist store"
        "wl-paste --type image --watch cliphist store"
        "fcitx5 -d -r"
      ];

      animations = {
        bezier = [
          "myBezier, 0.05, 0.9, 0.1, 1.05"
        ];

        animation = [
          "windows, 1, 7, myBezier"
          "windowsOut, 1, 7, default, popin 80%"
          "border, 1, 10, default"
          "borderangle, 1, 8, default"
          "fade, 1, 7, default"
          "workspaces, 1, 6, default"
        ];
      };

      input = {
        # kb_layout = "us,es,ru";
        # kb_options = "grp:win_space_toggle,caps:escape";

        follow_mouse = 1;

        sensitivity = 0; # -1.0 - 1.0, 0 means no modification.

        touchpad = {
          natural_scroll = true;
        };
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Q, exec, $terminal"
        "$mainMod, return, exec, $terminal"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, E, exec, $fileManager"
        "$mainMod, V, togglefloating,"
        "$mainMod, R, exec, $menu"
        "$mainMod, P, pseudo,"
        "$mainMod, J, togglesplit,"
        "$mainMod, B, exec, $browser"
        "$mainMod, L, exec, hyprlock"
        "$mainMod, H, exec, hyprlock & sleep 0.5 && systemctl suspend"
        "$mainMod, T, exec, nwg-look"
        "$mainMod, I, exec, rofi -show emoji -modi emoji"
        "$mainMod, K, exec, rofi -show calc -modi calc"
        "$mainMod, G, exec, cat ~/Documents/gh.txt | wl-copy"

        # Hyprshot)))
        ", Print, exec, echo 'aHlwcnNob3QgLW0gJChwcmludGYgIm91dHB1dFxud2luZG93XG5yZWdpb24iIHwgd29maSAtLXNob3cgZG1lbnUpCg==' | base64 -d | bash"

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"

        "$mainMod, S, togglespecialworkspace, magic"
        "$mainMod SHIFT, S, movetoworkspace, special:magic"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        "$mainMod ALT, left, workspace, -1"
        "$mainMod ALT, right, workspace, +1"

        # Resize windows
        "$mainMod SHIFT, right, resizeactive, 10 0"
        "$mainMod SHIFT, left, resizeactive, -10 0"
        "$mainMod SHIFT, up, resizeactive, 0 -10"
        "$mainMod SHIFT, down, resizeactive, 0 10"

        # Move windows
        "$mainMod CTRL, right, movewindow, r"
        "$mainMod CTRL, left, movewindow, l"
        "$mainMod CTRL, up, movewindow, u"
        "$mainMod CTRL, down, movewindow, d"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];

      bindl = [
        ",XF86AudioRaiseVolume, exec, wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
        ",XF86AudioMicMute, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
        ",XF86MonBrightnessUp, exec, brightnessctl -e4 -n2 set 5%+"
        ",XF86MonBrightnessDown, exec, brightnessctl -e4 -n2 set 5%-"

        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPrev, exec, playerctl previous"
      ];

      windowrule = [
        "suppressevent maximize, class:.*"
        "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
        # Pavucontrol
        "float,class:(org.pulseaudio.pavucontrol)"
        "center,class:(org.pulseaudio.pavucontrol)"
        "opacity 0.7,class:(org.pulseaudio.pavucontrol)"
        "pin,class:(org.pulseaudio.pavucontrol)"
        "minsize 800 300,class:(org.pulseaudio.pavucontrol)"
        # Rofi
        "pin,class:(Rofi)"
        "dimaround,class:(Rofi)"
      ];
    };
  };
}

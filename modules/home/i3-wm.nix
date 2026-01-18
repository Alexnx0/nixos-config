{ pkgs, ... }:
let
  mod = "Mod4";
  bg = "#1e1e2e";
  fg = "#cdd6f4";
  accent = "#b4befe";
  red = "#f38ba8";
in 
{
  xsession = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      config = {
      modifier = mod;

        # fonts = {
          #  names = [ "JetBrainsMono Nerd Font" ]; 
          # size = 8.0;
          #   };

      gaps = {
        inner = 10;
        outer = 5;
        smartGaps = false;
      };

        # colors = {
        #  background = bg;
        #  focused = {
        #    border = accent;
        #    background = accent;
        #    text = fg;
        #    indicator = accent;
        #    childBorder = accent;
        #  };
        #  focusedInactive = {
        #    border = bg;
        #    background = bg;
        #    text = fg;
        #    indicator = fg;
        #    childBorder = bg;
        #  };
        #  unfocused = {
        #    border = bg;
        #    background = bg;
        #    text = fg;
        #    indicator = bg;
        #    childBorder = bg;
        #  };
        #  urgent = {
        #    border = accent;
        #    background = bg;
        #    text = fg;
        #    indicator = accent;
        #    childBorder = bg;
        #  };
        # };
      window = {
        border = 1;
        titlebar = false;
      };
      keybindings = {
        "${mod}+space" = "exec dmenu_run";
        "${mod}+Return" = "exec alacritty"; 
        "${mod}+Shift+w" = "exec ~/nixos/scripts/wg"; 
        "${mod}+Shift+l" = "exec ~/nixos/scripts/Dmenu/power";
        "F3" = "exec ~/nixos/scripts/Modules/volume+";
        "F2" = "exec ~/nixos/scripts/Modules/volume-";
        "${mod}+a" = "exec ~/nixos/scripts/Dmenu/flatpak"; 
        "${mod}+c" = "exec ~/nixos/scripts/Dmenu/emojis";
        "Print" = "exec scrot";
        "${mod}+q" = "kill";

        "${mod}+f" = "fullscreen toggle";
        "${mod}+v" = "floating toggle";
        "${mod}+Shift+space" = "focus mode_toggle";
        
        "${mod}+h" = "split h";
        "${mod}+l" = "split v";

        "${mod}+s" = "layout stacking";
        "${mod}+w" = "layout tabbed";
        "${mod}+e" = "layout toggle split";

        # Focus
        "${mod}+Left" = "focus left";
        "${mod}+Down" = "focus down";
        "${mod}+Up" = "focus up";
        "${mod}+Right" = "focus right";

        # Move
        "${mod}+Shift+Left" = "move left";
        "${mod}+Shift+Down" = "move down";
        "${mod}+Shift+Up" = "move up";
        "${mod}+Shift+Right" = "move right";

        "${mod}+1" = "workspace number 1";
        "${mod}+2" = "workspace number 2";
        "${mod}+3" = "workspace number 3";
        "${mod}+4" = "workspace number 4";
        "${mod}+5" = "workspace number 5";
        "${mod}+6" = "workspace number 6";
        "${mod}+7" = "workspace number 7";
        "${mod}+8" = "workspace number 8";
        "${mod}+9" = "workspace number 9";
        "${mod}+0" = "workspace number 10";

        # Move focused container to workspace
        "${mod}+Shift+1" = "move container to workspace number 1";
        "${mod}+Shift+2" = "move container to workspace number 2";
        "${mod}+Shift+3" = "move container to workspace number 3";
        "${mod}+Shift+4" = "move container to workspace number 4";
        "${mod}+Shift+5" = "move container to workspace number 5";
        "${mod}+Shift+6" = "move container to workspace number 6";
        "${mod}+Shift+7" = "move container to workspace number 7";
        "${mod}+Shift+8" = "move container to workspace number 8";
        "${mod}+Shift+9" = "move container to workspace number 9";
        "${mod}+Shift+0" = "move container to workspace number 10";
      };

         bars = [
         {
          position = "bottom";
          mode = "invisible";
         statusCommand = "${pkgs.i3blocks}/bin/i3blocks -c ~/.config/i3blocks/config";
      
          colors = {
            background = bg;
            statusline = fg;
             separator  = fg;
      
           focusedWorkspace = {
             border     = bg; # $bg
             background = accent; # $accent
             text       = bg; # $fg
         };
        
          activeWorkspace = {
             border     = bg;
             background = bg;
           text       = fg;
        };
      
         inactiveWorkspace = {
             border     = bg;
             background = bg;
             text       = fg;
         };
        
          urgentWorkspace = {
             border     = bg;
             background = red; # $red (urgentred)
             text       = fg;
         };
         };
         }
       ];
    };
   };
  };
}

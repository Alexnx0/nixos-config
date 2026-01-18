{ config, lib, ... }:
let
  colors = config.lib.stylix.colors;
in
{
  services.polybar = {
    enable = true;
  # config = ./config.ini;
    script = "polybar mainBar &";
    settings = {
      "bar/mainBar" = {
        monitor = "HDMI-1";
        width = "100%";
        height = "14pt";

        background = "#${colors.base00}";
        foreground = "#${colors.base05}";

        separator = "|";
        separator-foreground = "#${colors.base03}";

        font-0 = "JetBrainsMono Nerd Font:size=10;2";

        modules-left = "xworkspaces xwindow";
        modules-center = "date";
        modules-right = "memory cpu";
      };

      "module/xworkspaces" = {
        type = "internal/xworkspaces";
        label-active = "%name%";
        label-active-background = "#${colors.base02}";
        label-active-foreground = "#${colors.base00}";
        label-active-underline = "#${colors.base0D}";
        label-active-padding = 1;
        label-occupied = "%name%";
        label-occupied-padding = 1;
        label-urgent = "%name%";
        label-urgent-padding = 1;
        label-empty = "%name%";
        label-empty-foreground = "#${colors.base05}";
        label-empty-padding = 1;
        label-urgent-background = "#${colors.base08}";
      };

      "module/memory" = {
        type = "internal/memory";
        format-prefix = "RAM";
        format-prefix-foreground = "#${colors.base0D}";
        label = "%percentage_used:2%%";
      };

      "module/cpu" = {
        type = "internal/cpu";
        format-prefix = "CPU";
        format-prefix-foreground = "#${colors.base0D}";
        label = "%percentage:2%%";
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%H:%M";
        date-alt = "%Y-%m-%d %H:%M:%S";
        label = "%date%";
        label-foreground = "#${colors.base0D}";
      };
    };
  };
}

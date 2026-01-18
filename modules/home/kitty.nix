{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;

    font = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    settings = {
      bold_font = "auto";
      italic_font = "auto";
      bold_italic_font = "auto";
      background_opacity = 0.9;
      background_blur = 12;
      enable_audio_bell = false;
      confirm_os_windows_close = false;
      copy_on_select = true;
      cursor_trail = 1;
      cursor_trail_decay = "0.3 0.6";
      cursor_trail_start_threshold = 2;
    };

    extraConfig = ''
      foreground            #cdd6f4
      background            #181825
      selection_foreground  #313244
      selection_background  #b4befe
      url_color             #a6e3a1

      # black
      color0   #11111b
      color8   #11111b

      # red
      color1   #f38ba8
      color9   #f38ba8

      # green
      color2   #a6e3a1
      color10  #a6e3a1

      # yellow
      color3   #f9e2af
      color11  #f9e2af

      # blue
      color4   #89b4fa
      color12  #89b4fa

      # magenta
      color5   #b4befe
      color13  #b4befe

      # cyan
      color6   #74c7ec
      color14  #74c7ec

      # white
      color7   #cdd6f4
      color15  #cdd6f4
    '';
  };
}

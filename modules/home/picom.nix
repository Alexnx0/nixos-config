{ ... }:
{
  services.picom = {
    enable = true;
    activeOpacity = 1.0;
    inactiveOpacity = 0.8;
    backend = "glx";
    vSync = false;
    settings = {
      blur = { 
        method = "dual_kawase";
        size = 40;
        background = true;
        background-frame = true;
        kern = "3x3box";
        opacityRules = [
          "85:class_g = 'alacritty'"
          "85:class_g = 'Thunar'"
          "85:class_g = 'steam'"
          "85:class_g = 'polybar'"
          "85:class_g = 'discord'"
          "85:class_g = 'telegram'"
        ];
        background-exclude = [
          "window_type = 'dock'"
          "window_type = 'dock'"
          "_GTK_FRAME_EXTENTS@:c"
          "class_g = 'slop'"
        ];
      };
    };
  };
}

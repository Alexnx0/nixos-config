{ pkgs, ... }:

{
 home.packages = with pkgs; [
    pkg-config
    xorg.libX11
    xorg.libXft
    xclip
    xorg.xrdb
    xorg.libXcursor
    xorg.libXinerama
    xorg.xinit
    fontconfig
    freetype
    harfbuzz
    gcc
    gnumake
  ];
}

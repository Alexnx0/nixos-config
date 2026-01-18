{ pkgs, ... }:
{

services.xserver.windowManager.dwm.package = pkgs.dwm.overrideAttrs {
  src = ./path/to/dwm/source/tree; 
  };
}

{ pkgs, ... }:
{
  programs.zathura = {
    enable = true;
    package = pkgs.zathura;
    options = {
      #   default-bg = "#181825";
      # default-fg = "#cdd6f4";
    };
  };
}

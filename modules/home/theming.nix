{ pkgs, ... }:
let
  variant = "mocha";
  accent = "lavender";
  catppuccin-kvantum-pkg = pkgs.catppuccin-kvantum.override { inherit variant accent; };
  catppuccin = "catppuccin-${variant}-${accent}";
in
{
  home.packages = with pkgs; [
  libsForQt5.qt5ct
  libsForQt5.qtstyleplugin-kvantum
  catppuccin-qt5ct
  ];
    gtk = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 11;
    };

    theme = {
      name = "${catppuccin}-compact";
      package = pkgs.catppuccin-gtk.override {
        accents = [ accent ];
        size = "compact";
        variant = variant;
      };
    };

    iconTheme = {
      name = "Papirus-Dark";
      package = pkgs.papirus-icon-theme.override { color = "blue"; };
    };

    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    gtk.enable = true;
    x11.enable = false;
    size = 24;
  };

    qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "kvantum";
  };
    xdg.configFile = {
    "Kvantum/${catppuccin}".source = "${catppuccin-kvantum-pkg}/share/Kvantum/${catppuccin}";
    "Kvantum/kvantum.kvconfig".source = (pkgs.formats.ini { }).generate "kvantum.kvconfig" {
    General.theme = catppuccin;
      };
    };
  }

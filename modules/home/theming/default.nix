{ inputs, pkgs, ... }:
{
  imports = [ 
    inputs.stylix.homeModules.stylix 
  ];
  
  stylix = {
    enable = true;

  polarity = "dark";
  image = ./../../../wallpapers/leaves3.jpg;
  base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
    #base16Scheme = import ./schemes/catppuccin-mocha.nix;

  opacity = {
    terminal = 0.8;
    desktop = 0.8;
  };

  targets = { 
    starship.enable = true;
    starship.colors.enable = true;
    nixos-icons.enable = true;
    qt.enable = true;
    kde.enable = true;
    librewolf.colorTheme.enable = true;
    nixcord.colors.enable = true;
  };

  fonts = {
    serif = {
      package = pkgs.nerd-fonts.iosevka;
      name = "Iosevka Nerd Font";
      };
    sansSerif = {
      package = pkgs.nerd-fonts.iosevka;
      name = "Iosevka Nerd Font";
      };
    monospace = {
      package = pkgs.jetbrains-mono;
      name = "JetBrainsMono Nerd Font";
      };
    sizes = {
      applications = 10;
      desktop = 10;
      popups = 12;
      terminal = 12;
      };
    };

    cursor =  {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
      size = 24;
    };
    iconTheme = {
      package = pkgs.papirus-icon-theme.override { color = "yellow"; };
      dark = "Papirus-Dark";
      light = "Papirus-Light";
    };
  };
}

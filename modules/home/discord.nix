{ inputs, ... }:
{
  imports = [
    inputs.nixcord.homeModules.nixcord
  ];
  programs.nixcord = {
    enable = true;
    vesktop.enable = true;
      config = {
        frameless = true;                   # Set some Vencord/Equicord options
          plugins = {
            ignoreActivities = {              # Enable a plugin and set some options
            enable = true;
            ignorePlaying = true;
            ignoreWatching = true;
        };
      };
    };
  };
}


{ inputs, ... }:
{
  imports = [ inputs.nix-flatpak.nixosModules.nix-flatpak ];

  services.flatpak = {
    enable = true;
    update.onActivation = true;
    packages = [
    "com.github.tchx84.Flatseal"
    "org.vinegarhq.Sober" ];
    overrides = {
      global = {
        # Force Wayland by default
        Context.sockets = [
          "wayland"
          "x11"
          "fallback-x11"
        ];
      };
    };
  };
}

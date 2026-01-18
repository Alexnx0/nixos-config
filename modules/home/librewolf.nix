{ pkgs, ... }:
{
  programs.librewolf = {
  enable = true;
    # Enable WebGL, cookies and history
    settings = {
      "webgl.disabled" = false;
      "privacy.resistFingerprinting" = false;
      "privacy.clearOnShutdown.history" = false;
      "privacy.clearOnShutdown.cookies" = false;
      "network.cookie.lifetimePolicy" = 0;
   };
    languagePacks = [
      "pt-BR"
      "pt"
    ];
    policies = {
      BlockAboutConfig = true;
      DefaultDownloadDirectory = "\${home}/Downloads";
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
    Preferences = {
      "cookiebanners.service.mode.privateBrowsing" = 2; # Block cookie banners in private browsing
      "cookiebanners.service.mode" = 2; # Block cookie banners
      "privacy.donottrackheader.enabled" = true;
      "privacy.fingerprintingProtection" = true;
      "privacy.resistFingerprinting" = true;
      "privacy.trackingprotection.emailtracking.enabled" = true;
      "privacy.trackingprotection.enabled" = true;
      "privacy.trackingprotection.fingerprinting.enabled" = true;
      "privacy.trackingprotection.socialtracking.enabled" = true;
    };
      ExtensionSettings = {
      "uBlock0@raymondhill.net" = {
      default_area = "menupanel";
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
      installation_mode = "force_installed";
       };
      private_browsing = true;
      };
    };
  };
}

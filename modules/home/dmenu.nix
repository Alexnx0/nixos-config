{ pkgs, config, ... }:
let
  colors = config.lib.stylix.colors;
in
{
 home.packages = with pkgs; [

  (pkgs.dmenu.overrideAttrs (old: {
    src = ./dmenu;
    patches = old.patches or [];
    buildPhase = ''
    cp ${pkgs.writeText "config.h" ''
      static int topbar = 1;
      static const char *fonts[] = { "Iosevka Nerd Font:size=10" };
      static const char *prompt      = NULL;

      static const char *colors[SchemeLast][2] = {
        [SchemeNorm] = { "#${colors.base05}", "#${colors.base00}" },
        [SchemeSel]  = { "#${colors.base00}", "#${colors.base02}" },
        [SchemeOut]  = { "#${colors.base00}", "#${colors.base0D}" },
      };
      static unsigned int lines      = 0;
      static const char worddelimiters[] = " ";
    ''} config.def.h

    ${old.buildPhase or ""}
  '';
  }))
  ];
}

{ ... }:

{
  programs.freetube = {
    enable = true;

    settings = {
      # Qualidade padrão
      defaultQuality = "1080";

      # Tema Catppuccin (sabores: Latte, Frappe, Macchiato, Mocha)
      baseTheme = "catppuccinMocha";
      mainColor = "CatppuccinFrappeLavender";

      # Outras preferências
      checkForUpdates = false;
      allowDashAv1Formats = true;
    };
  };
}

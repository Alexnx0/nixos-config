{ ... }: 
{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
    enableNushellIntegration = true;

    settings = {
      # right_format = "$cmd_duration";
      
      directory = {
        format = "[ ](bold blue)[ $path ]($style)";
        style = "bold blue";
      };

      character = {
        success_symbol = "[ ](bold blue)[ ➜](bold green)";
        error_symbol = "[ ](bold blue)[ ➜](bold red)";
        # error_symbol = "[ ](bold #89dceb)[ ✗](bold red)";
      };

      cmd_duration = {
        format = "[󰔛 $duration]($style)";
        disabled = false;
        style = "bg:none fg:white";
        show_notifications = false;
        min_time_to_notify = 60000;
      };        
    };
  };
}

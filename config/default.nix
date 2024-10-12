{ pkgs, ... }: {
  imports = [ ./globals.nix ./keymaps ./plugins ./theme.nix ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];

  autoCmd = [
    {
      event = "BufWritePost";
      pattern = "*.php";
      command = "silent ! vendor/bin/php-cs-fixer fix %";
    }
    {
      event = "BufWritePost";
      pattern = "*.nix";
      command = "silent ! nixfmt %";
    }
  ];
}

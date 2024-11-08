{ pkgs, ... }: {
  imports = [ ./globals.nix ./keymaps ./theme.nix ./autocmd.nix ./plugins ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];
}

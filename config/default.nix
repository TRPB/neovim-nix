{ pkgs, ... }:
{
  imports = [
    ./globals.nix
    ./keymaps
    ./plugins
    ./theme.nix
    ./autocmd.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];
}

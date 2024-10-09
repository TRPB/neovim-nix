{ pkgs, ... }:
{
  imports = [
    ./globals.nix
    ./keymaps
    ./plugins
    ./theme.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];
}

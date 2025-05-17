{ pkgs, ... }:
{
  imports = [
    ./globals.nix
    ./keymaps
    ./autocmd.nix
    ./plugins
    ./neovide-terminal.nix
    ./theme.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];
}

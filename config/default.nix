{ pkgs, ... }:
{
  imports = [
    ./globals.nix
    ./keymaps
    ./theme.nix
    ./autocmd.nix
    ./plugins
    ./neovide-terminal.nix
  ];

  extraPlugins = with pkgs.vimPlugins; [ vim-nix ];
}

{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-nix
  ];
}

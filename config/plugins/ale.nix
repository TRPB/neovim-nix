{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    ale
  ];
}

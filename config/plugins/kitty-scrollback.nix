{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.kitty-scrollback-nvim ];
  extraConfigLua = ''
    require('kitty-scrollback').setup()
  '';
}

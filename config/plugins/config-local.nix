{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.nvim-config-local ];
  extraConfigLua = ''
    require('config-local').setup {
      config_files = { ".nvim.lua" },
    }
  '';
}

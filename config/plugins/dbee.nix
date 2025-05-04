{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.nvim-dbee ];
  keymaps = [
    {
      mode = [ "n" ];
      key = "<F12>";
      action = "<CMD>:Dbee<CR>";
      options.silent = true;
    }
  ];
}

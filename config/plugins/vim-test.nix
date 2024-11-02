{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [ vim-test ];

  extraConfigLua = ''
    vim.g["test#strategy"] = "neovim"
    vim.g["test#php#behat#bootstrap_directory"] = "."
  '';

  keymaps = [
    {
      mode = [
        "n"
        "v"
        "i"
        "t"
        "c"
      ];
      key = "<C-1>";
      action = "<Cmd>:TestNearest<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "i"
        "t"
        "c"
      ];
      key = "<C-2>";
      action = "<Cmd>:TestLast<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "i"
        "t"
        "c"
      ];
      key = "<C-3>";
      action = "<Cmd>:TestFile<CR>";
      options.silent = true;
    }
    {
      mode = [ "t" ];
      key = "<C-o>";
      action = "<C-\\><C-n>";
    }
  ];
}

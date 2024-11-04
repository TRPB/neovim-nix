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
      ];
      key = "tn";
      action = "<Cmd>:TestNearest<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "tl";
      action = "<Cmd>:TestLast<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "tf";
      action = "<Cmd>:TestFile<CR><CR>";
      options.silent = true;
    }
    {
      mode = [ "t" ];
      key = "<C-o>";
      action = "<C-\\><C-n>";
    }
  ];
}

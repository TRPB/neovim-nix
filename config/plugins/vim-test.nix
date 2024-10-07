{ pkgs, ...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    vim-test
  ];
  
  extraConfigLua = ''
    vim.g["test#strategy"] = "neovim"
  '';

  keymaps = [
    {
      mode = ["n" "v" "i" "t" "c"];
      key = "<C-1>";
      action = "<Cmd>:TestNearest<CR>";
    }
    {
      mode = ["n" "v" "i" "t" "c"];
      key = "<C-2>";
      action = "<Cmd>:TestLast<CR>";
    }
    {
      mode = ["n" "v" "i" "t" "c"];
      key = "<C-3>";
      action = "<Cmd>:TestFile<CR>";
    }
    {
      mode = ["t"];
      key = "<C-o>";
      action = "<C-\\><C-n>";
    }
  ];
}

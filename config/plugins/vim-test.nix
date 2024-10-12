{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [ vim-test ];

  extraConfigLua = ''
    vim.g["test#strategy"] = "neovim"
    vim.g["test#php#phpunit#executable"] = "docker exec -it lendable-platform-backend.unsecured-1 vendor/bin/phpunit"
    vim.g["test#php#behat#executable"] = "docker exec -it lendable-platform-backend.unsecured-1 vendor/bin/behat"
    vim.g["test#php#behat#bootstrap_directory"] = "."
  '';

  keymaps = [
    {
      mode = [ "n" "v" "i" "t" "c" ];
      key = "<C-1>";
      action = "<Cmd>:TestNearest<CR>";
    }
    {
      mode = [ "n" "v" "i" "t" "c" ];
      key = "<C-2>";
      action = "<Cmd>:TestLast<CR>";
    }
    {
      mode = [ "n" "v" "i" "t" "c" ];
      key = "<C-3>";
      action = "<Cmd>:TestFile<CR>";
    }
    {
      mode = [ "t" ];
      key = "<C-o>";
      action = "<C-\\><C-n>";
    }
  ];
}

{
  autoCmd = [
    {
      event = "BufWritePost";
      pattern = "*.php";
      callback = {
        __raw = ''
          function()
            vim.cmd('silent ! ' .. vim.g.php_cs_fixer_path .. ' fix %')
          end
        '';
      };
    }
    {
      event = "BufWritePost";
      pattern = "*.nix";
      command = "silent ! nixfmt %";
    }
  ];
}

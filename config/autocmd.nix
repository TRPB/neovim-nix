{
  autoCmd = [
    {
      event = "BufWritePost";
      pattern = "*.php";
      callback = {
        __raw = ''
          function()
            if vim.g.php_cs_fixer_path ~= nil then
              vim.cmd('silent ! ' .. vim.g.php_cs_fixer_path .. ' fix %:.')
            end
          end
        '';
      };
    }
    {
      event = "BufEnter";
      pattern = "*.html.php";
      callback = {
        __raw = ''
          function ()
            vim.opt_local.indentexpr = ""
            vim.opt_local.autoindent = true
            vim.opt_local.smartindent = false
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

let
  disableGui = "setlocal nonumber norelativenumber laststatus=0 mouse-=a scl=no ft=term stl=%{repeat('─',winwidth('.'))}";
in
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
      event = "TermOpen";
      pattern = "term://*";
      command = "startinsert";
    }
    {
      event = "TermEnter";
      pattern = "*";
      command = "startinsert";
    }
    {
      event = "TermOpen";
      pattern = "*";
      command = disableGui;
    }
    {
      event = "TermEnter";
      pattern = "*";
      command = disableGui;
    }
    {
      event = "VimEnter";
      pattern = "*";
      command = disableGui;
    }
    {
      event = "VimEnter";
      pattern = "*";
      command = "startinsert";
    }
    # {
    #   event = "VimEnter";
    #   pattern = "*";
    #   command = "silent! execute 'term'";
    # }
    {
      event = "TermLeave";
      pattern = "*";
      command = "set mouse=a";
    }
    # {
    #   event = "TermEnter";
    #   pattern = "*";
    #   command = "set mouse-=a";
    # }
    {
      event = "VimEnter";
      pattern = "*";
      command = "set mouse-=a";
    }
  ];

  keymaps = [
    {
      mode = [ "t" ];
      key = "<LeftMouse>";
      action = "";
    }
    {
      mode = [ "t" ];
      key = "<C-o>";
      action = "<cmd>setlocal number relativenumber laststatus=2 mouse=a scl=yes ft=<cr><C-\\><C-n>";
    }
  ];

  # If this is done as a nix/lua autocmd it breaks alpha, likely an ordering problem?
  extraConfigVim = ''
    autocmd VimEnter * silent! execute 'term'
  '';
  # This was buggy in neovide using nixvim, don't know why
  # extraConfigVim = ''
  #   autocmd TermOpen * startinsert
  #   autocmd TermOpen * setlocal nonumber
  #   autocmd VimEnter * silent! execute 'term'
  #   autocmd VimEnter * silent! startinsert
  #   autocmd VimEnter,TermEnter * setlocal nonumber norelativenumber laststatus=0
  #   autocmd TermLeave * setlocal number relativenumber laststatus=2
  # '';
}

let
  disableGui = "setlocal nonumber norelativenumber mouse-=a scl=no ft=term";
  enableGui = "setlocal number relativenumber mouse=a scl=yes ft=";
in
{
  autoCmd = [
    {
      event = "BufEnter";
      pattern = "term://*";
      command = "startinsert";
    }
    {
      event = "WinEnter";
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
      event = "TermOpen";
      pattern = "*";
      command = "startinsert";
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
  ];

  keymaps = [
    {
      mode = [ "t" ];
      key = "<LeftMouse>";
      action = "";
    }
    {
      mode = [ "t" ];
      key = "<S-Esc>";
      action = "<cmd>setlocal number relativenumber laststatus=2 mouse=a scl=yes<cr><C-\\><C-n>";
    }
  ];

  # If this is done as a nix/lua autocmd it breaks alpha.nvim, likely an ordering problem?
  extraConfigVim = ''
    autocmd VimEnter * silent! execute 'term'
  '';
}

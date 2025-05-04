let
  disableGui = "setlocal nonumber norelativenumber laststatus=0 mouse-=a scl=no ft=term stl=%{repeat('─',winwidth('.'))}";
in
{
  autoCmd = [
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
      action = "<cmd>setlocal number relativenumber laststatus=2 mouse=a scl=yes<cr><C-\\><C-n>";
    }
  ];

  # If this is done as a nix/lua autocmd it breaks alpha.nvim, likely an ordering problem?
  extraConfigVim = ''
    autocmd VimEnter * silent! execute 'term'
  '';
}

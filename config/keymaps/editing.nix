{
  keymaps = [
    {
      mode = [
        "n"
        "v"
      ];
      key = "<C-Del>";
      action = ":dl<CR><CR>";
      options.silent = true;
    }
    {
      mode = [ "i" ];
      key = "<C-Del>";
      action = "<Esc>:dl<CR>i";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<C-d>";
      action = ":t.<CR>";
    }
    {
      mode = [ "i" ];
      key = "<C-d>";
      action = "<Esc>:t.<CR>i";
    }
    {
      mode = [ "n" ];
      key = "<Esc>";
      action = "i";
    }
    {
      mode = [
        "i"
        "c"
        "n"
        "v"
      ];
      key = "<C-z>";
      action = "<Cmd>u<CR>";
    }
  ];
}

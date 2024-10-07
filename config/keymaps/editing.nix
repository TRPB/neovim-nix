{
  keymaps = [
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "<C-Del>";
      action = ":dl<CR>";
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
        "t"
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
        "t"
      ];
      key = "<C-z>";
      action = "<Cmd>u<CR>";
    }
  ];
}

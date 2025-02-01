{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-s>";
      action = ":w<CR>";
      options.silent = true;
    }
    {
      mode = [
        "v"
        "i"
        "t"
      ];
      key = "<C-s>";
      action = "<Esc>:w<CR>";
      options.silent = true;
    }
  ];
}

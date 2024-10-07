{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-s>";
      action = ":w<CR>";
    }
    {
      mode = [
        "v"
        "i"
        "t"
      ];
      key = "<C-s>";
      action = "<Esc>:w<CR>";
    }
  ];
}

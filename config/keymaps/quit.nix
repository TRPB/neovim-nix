{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-q>";
      action = ":q<CR>";
    }
    {
      mode = [
        "v"
        "i"
        "t"
      ];
      key = "<C-q>";
      action = "<Esc>:q<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-s-q>";
      action = ":q!<CR>";
    }
    {
      mode = [
        "v"
        "i"
        "t"
      ];
      key = "<C-s-q>";
      action = "<Esc>:q!<CR>";
    }
  ];
}

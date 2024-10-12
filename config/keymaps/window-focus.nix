{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-Left>";
      action = "<C-w><Left>";
    }
    {
      mode = [ "n" ];
      key = "<C-Right>";
      action = "<C-w><Right>";
    }
    {
      mode = [ "n" ];
      key = "<C-Up>";
      action = "<C-w><Up>";
    }
    {
      mode = [ "n" ];
      key = "<C-Down>";
      action = "<C-w><Down>";
    }

    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<C-Left>";
      action = "<Esc><C-w><Left>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<C-Right>";
      action = "<Esc><C-w><Right>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<C-Up>";
      action = "<Esc><C-w><Up>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<C-Down>";
      action = "<Esc><C-w><Down>";
    }
  ];
}

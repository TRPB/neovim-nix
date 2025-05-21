{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-q>";
      action = ":q<CR>";
      options.silent = true;
    }

    {
      mode = [ "t" ];
      key = "<C-q>";
      action = "<C-\\><C-n>:q<CR>";
      options.silent = true;
    }

    {
      mode = [
        "v"
        "i"
      ];
      key = "<C-q>";
      action = "<Esc>:q<CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<C-s-q>";
      action = ":q!<CR>";
      options.silent = true;
    }
    {
      mode = [
        "v"
        "i"
        "t"
      ];
      key = "<C-s-q>";
      action = "<Esc>:q!<CR>";
      options.silent = true;
    }
  ];
}

{
  keymaps = [
    {
      mode = [
        "i"
        "v"
      ];
      key = "<F6>";
      action = "<Esc>:lua Snacks.explorer()<CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<F6>";
      action = ":lua Snacks.explorer()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "i"
        "v"
      ];
      key = "<C-F6>";
      action = "<Esc>:lua Snacks.explorer.reveal()<CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<C-F6>";
      action = ":lua Snacks.explorer.reveal()<CR>";
      options.silent = true;
    }
  ];
}

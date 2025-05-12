{
  plugins = {
    nvim-tree = {
      enable = true;
      git = {
        ignore = false;
      };
      syncRootWithCwd = true;
    };
  };

  keymaps = [
    {
      mode = [
        "i"
        "v"
      ];
      key = "<F6>";
      action = "<Esc>:NvimTreeToggle<CR>";
    }
    {
      mode = [ "n" ];
      key = "<F6>";
      action = ":NvimTreeToggle<CR>";
    }
    {
      mode = [
        "i"
        "v"
      ];
      key = "<C-F6>";
      action = "<Esc>:NvimTreeFindFile<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-F6>";
      action = ":NvimTreeFindFile<CR>";
    }
  ];
}

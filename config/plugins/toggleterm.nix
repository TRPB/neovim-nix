{
  plugins.toggleterm.enable = true;

  keymaps = [
    {
      mode = [
        "n"
        "c"
        "v"
        "i"
      ];
      key = "<C-`>";
      action = "<cmd>ToggleTerm<CR>";
    }
  ];
}

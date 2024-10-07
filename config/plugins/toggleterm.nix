{
  plugins.toggleterm.enable = true;

  keymaps = [
    {
      mode = [
        "n"
        "c"
        "t"
        "v"
        "i"
      ];
      key = "<C-`>";
      action = "<cmd>ToggleTerm<CR>";
    }
  ];
}

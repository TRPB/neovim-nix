{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>gb";
      action = ":Git blame<CR><CR>";
      options.silent = true;
    }
  ];
}

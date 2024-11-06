{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>gs";
      action = "<CMD>:Git<CR>";
      options.silent = true;
    }

    {
      mode = [ "n" ];
      key = "<leader>gb";
      action = "<CMD>:Git blame<CR><CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<leader>o";
      action = "<CMD>:Octo actions<CR>";
      options.silent = true;
    }
  ];
}

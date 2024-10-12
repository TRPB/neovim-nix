{
  keymaps = [
    {
      mode = [ "i" ];
      key = "<C-v>";
      action = ''<Esc>"+p'';
      options = {
        silent = true;
      };
    }
    {
      mode = [
        "c"
        "v"
        "n"
      ];
      key = "<C-v>";
      action = ''"+p'';
      options = {
        silent = true;
      };
    }
    {
      mode = [ "v" ];
      key = "<Return>";
      action = "y";
    }
  ];
}

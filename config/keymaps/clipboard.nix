{
  keymaps = [
   {
      mode = [
        "c"
        "v"
        "n"
      ];
      key = "<C-s-c>";
      action = "<CMD>:PhpactorCopyClassName<CR>";
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
      key = "<C-a-c>";
      action = "<CMD>:let @+ = expand('%')<CR>";
      options = {
        silent = true;
      };
    }
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

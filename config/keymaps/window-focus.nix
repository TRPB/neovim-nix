{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>v";
      action = "<cmd>:vsplit<CR>";
    }
    {
      mode = [ "n" ];
      key = "<leader>h";
      action = "<cmd>:split<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-Left>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateLeft<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-J>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateDown<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-K>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateUp<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-H>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateLeft<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-L>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateRight<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-Right>";
      #action = "<C-w><Right>";
      action = "<CMD>:KittyNavigateRight<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-Up>";
      #action = "<C-w><Up>";
      action = "<CMD>:KittyNavigateUp<CR>";
    }
    {
      mode = [ "n" ];
      key = "<C-Down>";
      #action = "<C-w><Down>";
      action = "<CMD>:KittyNavigateDown<CR>";
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
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<A-Left>";
      action = "<CMD>:tabnext<CR>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<A-Right>";
      action = "<CMD>:tabprev<CR>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<A-Space>";
      action = "<CMD>:tabnew<CR>";
    }
    {
      mode = [
        "t"
        "v"
        "i"
        "c"
      ];
      key = "<A-q>";
      action = "<CMD>:tabclose<CR>";
    }
  ];
}

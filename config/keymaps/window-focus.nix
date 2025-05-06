{
  # This was buggy in neovide using nixvim, don't know why
  keymaps = [
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-q>";
      action = "<cmd>:tabclose<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-Right>";
      action = "<cmd>:tabnext<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-Left>";
      action = "<cmd>:tabprev<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-Space>";
      action = "<cmd>:split +term +startinsert<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-Return>";
      action = "<cmd>:tabnew +term<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<A-v>";
      action = "<cmd>:vsplit +term<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<C-S-Up>";
      action = "<cmd>:lua require('smart-splits').resize_up()<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<C-S-Down>";
      action = "<cmd>:lua require('smart-splits').resize_down()<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<C-S-Left>";
      action = "<cmd>:lua require('smart-splits').resize_left()<cr>";
    }
    {
      mode = [
        "n"
        "t"
        "i"
        "c"
        "s"
        "l"
        "v"
      ];
      key = "<C-S-Right>";
      action = "<cmd>:lua require('smart-splits').resize_right()<cr>";
    }

    {
      mode = [ "n" ];
      key = "<leader>v";
      action = "<cmd>:vsplit<CR>";
    }
    # {
    #   mode = [
    #     "n"
    #     "t"
    #     "c"
    #   ];
    #   key = "<A-Space>";
    #   action = "<Cmd>:split +term +startinsert<CR>";
    # }
    #
    # {
    #   mode = [
    #     "n"
    #     "t"
    #     "c"
    #   ];
    #   key = "<A-Return>";
    #   action = "<Cmd>:tabnew +term<CR>";
    # }
    #
    {
      mode = [ "n" ];
      key = "<leader>h";
      action = "<cmd>:split<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-Left>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateLeft<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-J>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateDown<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-K>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateUp<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-H>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateLeft<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-L>";
      #action = "<C-w><Left>";
      action = "<CMD>:KittyNavigateRight<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-Right>";
      #action = "<C-w><Right>";
      action = "<CMD>:KittyNavigateRight<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-Up>";
      #action = "<C-w><Up>";
      action = "<CMD>:KittyNavigateUp<CR>";
    }
    {
      mode = [
        "n"
        "t"
      ];
      key = "<C-Down>";
      #action = "<C-w><Down>";
      action = "<CMD>:KittyNavigateDown<CR>";
    }
    {
      mode = [
        "t"
      ];
      key = "<C-Left>";
      action = "<C-\\><C-n><C-w><Left>";
    }
    {
      mode = [
        "t"
      ];
      key = "<C-Right>";
      action = "<C-\\><C-n><C-w><Right>";
    }
    {
      mode = [
        "t"
      ];
      key = "<C-Up>";
      action = "<C-\\><C-n><C-w><Up>";
    }
    {
      mode = [
        "t"
      ];
      key = "<C-Down>";
      action = "<C-\\><C-n><C-w><Down>";
    }

    {
      mode = [
        "v"
        "i"
        "c"
      ];
      key = "<C-Left>";
      action = "<Esc><C-w><Left>";
    }
    {
      mode = [
        "v"
        "i"
        "c"
      ];
      key = "<C-Right>";
      action = "<Esc><C-w><Right>";
    }
    {
      mode = [
        "v"
        "i"
        "c"
      ];
      key = "<C-Up>";
      action = "<Esc><C-w><Up>";
    }
    {
      mode = [
        "v"
        "i"
        "c"
      ];
      key = "<C-Down>";
      action = "<Esc><C-w><Down>";
    }
    # {
    #   mode = [
    #     "t"
    #     "v"
    #     "i"
    #     "c"
    #   ];
    #   key = "<A-Left>";
    #   action = "<CMD>:tabprev<CR>";
    # }
    # {
    #   mode = [
    #     "t"
    #     "v"
    #     "i"
    #     "c"
    #   ];
    #   key = "<A-Right>";
    #   action = "<CMD>:tabnext<CR>";
    # }
    # {
    #   mode = [
    #     "t"
    #     "v"
    #     "i"
    #     "c"
    #   ];
    #   key = "<A-Space>";
    #   action = "<CMD>:tabnew<CR>";
    # }

  ];
}

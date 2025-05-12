{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
      live-grep-args.enable = true;
    };
  };

  plugins.web-devicons.enable = true;

  extraConfigLua = ''
     actions = require("telescope.actions")
     require("telescope").setup({
       defaults = {
         hidden = true;
    	 mappings = {
           i = { 
             ["<C-v>"] = { "<C-r>+", type="command" },
             ["<C-d>"] = actions.delete_buffer,
           },
     	 },
       }
     });
  '';

  keymaps = [
    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<C-g>";
      mode = [
        "n"
        "v"
        "i"
        "c"
      ];
    }
    {
      action = "<cmd>Telescope find_files find_command=rg,--files,--no-ignore<CR>";
      key = "<C-p>";
      mode = [
        "n"
        "v"
        "i"
        "c"
      ];
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<C-/>";
      mode = [
        "n"
        "v"
        "i"
        "c"
      ];
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<C-b>";
      mode = [
        "n"
        "v"
        "i"
        "c"
      ];
    }

  ];
}

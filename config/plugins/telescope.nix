{
  plugins.telescope = {
    enable = true;
    extensions = { fzf-native.enable = true; };
  };

  plugins.web-devicons.enable = true;

  extraConfigLua = ''
    require("telescope").setup({
    	defaults = {
    		mappings = {
    			i = { ["<C-v>"] = { "<C-r>+", type="command" } },
    		},
    	}
    });
  '';

  keymaps = [
    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<C-p>";
      mode = [ "n" "v" "i" "c" "t" ];
    }
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<C-/>";
      mode = [ "n" "v" "i" "c" "t" ];
    }
    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<C-b>";
      mode = [ "n" "v" "i" "c" "t" ];
    }

  ];
}

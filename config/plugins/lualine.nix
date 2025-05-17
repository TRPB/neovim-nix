{
  # sections = {
  #   lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
  #   lualine_b = { 'filename', 'branch' },
  #   lualine_c = {
  #     '%=', --[[ add your center components here in place of this comment ]]
  #   },
  #   lualine_x = {},
  #   lualine_y = { 'filetype', 'progress' },
  #   lualine_z = {
  #     { 'location', separator = { right = '' }, left_padding = 2 },
  #   },
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        disabled_filetypes = {
          statusline = [
            "NvimTree"
            "alpha"
            "terminal"
            "term"
            "term://*"
            "fish"
            "snacks*"
            "snacks_picker"
            "snacks_explorer"
            "snacks_sidebar"
          ];
        };
        section_separators = {
          right = "";
          left = "";
        };
        component_separators = {
          left = "";
          right = "";
        };
      };
      sections = {
        lualine_a = [
          {
            __unkeyed = "mode";

            separator = {
              left = "";
              right = "";
            };
          }
        ];
        lualine_z = [
          {
            __unkeyed = "location";

            separator = {
              left = "";
              right = "";
            };
          }
        ];

      };
    };
  };
}

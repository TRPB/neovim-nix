{
  plugins.lualine = {
    enable = true;
    settings.options = {
      disabled_filetypes = {
        statusline = [
          "NvimTree"
          "alpha"
          "terminal"
          "term"
          "term://*"
          "fish"
        ];
      };
      section_separators = {
        right = "";
        left = "";
      };
      component_separators = {
        left = "";
        right = "";
      };
    };
  };
}

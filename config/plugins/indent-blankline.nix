{
  plugins.indent-blankline = {
    enable = true;
    settings = {
      indent = {
        char = "▏";
      };

      scope = {
        char = "▏";
        highlight = "IblIndent";
        show_start = false;
        show_end = false;
      };
      exclude = {
        filetypes = [ "dashboard" ];
      };
    };
  };
}

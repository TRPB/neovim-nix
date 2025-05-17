{
  plugins.mini = {
    enable = true;
    modules.ai = {
      n_lines = 50;
      search_method = "cover_or_next";
    };
    modules.indentscope = {
      symbol = "▏";
    };
    modules.icons = { };
  };

  plugins.indent-blankline = {
    enable = true;
    settings.indent = {

      char = "▏";
    };
    settings.scope = {
      char = "▏";
      highlight = "IblIndent";
      show_start = false;
      show_end = false;
    };
  };
}

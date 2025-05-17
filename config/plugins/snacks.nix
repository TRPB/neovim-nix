{
  plugins.snacks = {
    enable = true;
    settings = {
      # doesn't work for setting backdrop colour
      win = {
        backdrop = {
          bg = "#4c566a";
          blend = 70;
        };
      };
      explorer = {
        layout = {
          preset = "sidebar";
        };
        config = {
          replace_netrw = true;
        };
      };
      picker = {
        sources = {
          explorer = {
            layout = {
              preset = "sidebar";
            };
          };
        };
        layout = "tom";
        layouts = {
          tom = {
            reverse = true;
            layout = {
              wo = {
                winblend = 100;
              };
              box = "horizontal";
              backdrop = false;
              width = 0.8;
              height = 0.9;
              border = "none";
              __unkeyed = {
                box = "vertical";
                __unkeyed-1 = {
                  win = "list";
                  title = " Results ";
                  title_pos = "center";
                  border = "none";
                };
                __unkeyed-2 = {
                  win = "input";
                  height = 1;
                  border = "none";
                  title = "{title} {live} {flags}";
                  title_pos = "center";
                };
              };
              __unkeyed-2 = {
                win = "preview";
                title = "{preview:Preview}";
                width = 0.45;
                border = "none";
                title_pos = "center";
              };
            };
          };
        };
      };
    };
  };
}

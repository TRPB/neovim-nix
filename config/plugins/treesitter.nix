{ pkgs, ... }: {
  plugins.autoclose.enable = true;
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      # For testing: :so $VIMRUNTIME/syntax/hitest.vim
      # Then use :Inspect on item you want to change
      # grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      #   php
      # ];
      highlight = {
        enable = true;
        custom_captures = {
          # Not working :'( don't know the intended syntax here so lua below for now
        };
      };
    };
  };

  # Treesitter is useful but it makes highlighting colours somewhat arbitrary
  # Specify some nord colours to make syntax look nicer
  # TODO: Release as it's own treesitter plugin
  extraConfigLua = ''
    local polar1 = "#2e3440";
    local polar2 = "#3b4252";
    local polar3 = "#434c5e";
    local polar4 = "#4c566a";

    local snow1 = "#d8dee9";
    local snow1 = "#e5e9f0";
    local snow1 = "#eceff4";

    local frost1 = "#8fbcbb";
    local frost2 = "#88c0d0";
    local frost3 = "#81a1c1";
    local frost4 = "#5e81ac";

    local red = "#bf616a";
    local orange = "#d08770";
    local yellow = "#ebcb8b";
    local green = "#a3be8c";
    local purple = "#b48ead";

    vim.api.nvim_set_hl(0, "@variable", { fg = frost3 })
    vim.api.nvim_set_hl(0, "@property", { fg = frost3 })
    vim.api.nvim_set_hl(0, "@variable.builtin", { fg = frost1 })
    vim.api.nvim_set_hl(0, "@keyword.function", { fg = frost4 })
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = frost4 })
    vim.api.nvim_set_hl(0, "@keyword", { fg = frost4 })
    vim.api.nvim_set_hl(0, "@punctuation", { fg = snow1 })
    vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = snow1 })
    vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = snow1 })
    vim.api.nvim_set_hl(0, "@type", { fg = frost1 })
    vim.api.nvim_set_hl(0, "@constructor", { fg = frost1 })
    vim.api.nvim_set_hl(0, "@operator", { fg = snow1 })    
  '';
}

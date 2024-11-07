{
  colorschemes.nord = {
    enable = true;
    settings = {
      bold = false;
      italic = false;
      disable_background = true;
    };
  };

  # Treesitter is good but it makes highlighting colours somewhat arbitrary
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
    if vim.g.neovide then
      vim.g.nord_disable_background = false
      vim.cmd[[colorscheme nord]]

      vim.g.neovide_transparency = 0.5
    end

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
    vim.api.nvim_set_hl(0, "@constant", { fg = orange })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = polar2, bg = "NONE" })
    vim.api.nvim_set_hl(0, "@tag", { fg = frost4 })
    vim.api.nvim_set_hl(0, "@tag.attribute", { fg = frost3 })
    vim.api.nvim_set_hl(0, "@tag.attribute", { fg = frost3 })
    vim.api.nvim_set_hl(0, "WinBarNC", { bg = polar2 })
    vim.api.nvim_set_hl(0, "WinBar", { bg = polar2 })
    vim.api.nvim_set_hl(0, "DapUIPlayPause", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIPlayPauseNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepInto", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepIntoNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepBack", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepBackNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIRestart", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIRestartNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStop", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStopNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepOver", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepOverNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIUnavailableNC", { bg = polar2, fg = polar1 })
    vim.api.nvim_set_hl(0, "DapUIStepOut", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "DapUIStepOutNC", { bg = polar2, fg = green })
    vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = polar4 })
  '';
}

{
  config.opts = {
    autoindent = true;
    clipboard = "unnamedplus";
    conceallevel = 0;
    cmdheight = 0;
    cursorline = true;
    expandtab = true;
    fileencoding = "utf-8";
    hlsearch = true;
    ignorecase = true;
    linebreak = true;
    number = true;
    pumheight = 10;
    scrolloff = 4;
    shiftwidth = 4;
    sidescrolloff = 8;
    signcolumn = "yes";
    smartindent = false;
    softtabstop = 4;
    splitbelow = true;
    splitright = true;
    tabstop = 4;
    termguicolors = true;
    timeoutlen = 300;
    undofile = true;
    updatetime = 300;
    wrap = false;
    writebackup = false;
  };

  config.extraConfigLua = ''
    vim.g.neovide_text_gamma = 0.0
    -- vim.g.neovide_text_contrast = 0.1
  '';
}

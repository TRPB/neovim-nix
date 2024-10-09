{
  config.opts = {
    expandtab = true;
    tabstop = 4;
    softtabstop = 4;
    shiftwidth = 4;
    clipboard = "unnamedplus";
    # completeopt = [ "menuone" "noselect" ];
    conceallevel = 0;
    fileencoding = "utf-8";
    hlsearch = true;
    ignorecase = true;
    smartindent = false;
    autoindent = true;
    splitbelow = true;
    splitright = true;
    pumheight = 10;
    termguicolors = true;
    timeoutlen = 300;
    undofile = true;
    updatetime = 300;
    writebackup = false;
    cursorline = true;
    number = true;
    signcolumn = "yes";
    wrap = false;
    linebreak = true;
    scrolloff = 4;
    sidescrolloff = 8;
  };

  config.extraConfigLua = ''
    vim.g.neovide_text_gamma = 0.0
    -- vim.g.neovide_text_contrast = 0.1
  '';
}

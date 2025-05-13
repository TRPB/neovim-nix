{ pkgs, ... }:
{
  extraPlugins = [
    pkgs.vimPlugins.nvim-dbee

    (pkgs.fetchFromGitHub {
      owner = "MattiasMTS";
      repo = "cmp-dbee";
      rev = "1650f67b9bf43c029fc37570665ca895a33cdf5a";
      sha256 = "sha256-XxB4jQu9xAi/7XDcwsd0hGLSs74ysjg0N/uaTHjqByI=";
    })
  ];
  keymaps = [
    {
      mode = [ "n" ];
      key = "<F12>";
      action = "<CMD>:Dbee<CR>";
      options.silent = true;
    }
  ];

  extraConfigLua = ''
    local auGroup = vim.api.nvim_create_augroup("nvim-dbee-custom", {clear = true})
    vim.api.nvim_create_autocmd("FileType", {
      group = auGroup,
      pattern = "sql",
      callback = function()
        require('cmp').setup.filetype({"sql", "mysql", "plsql"}, {
            sources = require('cmp').config.sources{
                { name = 'cmp-dbee' }
            }
        })
        require("cmp-dbee").setup({})
      end
    })
  '';
}

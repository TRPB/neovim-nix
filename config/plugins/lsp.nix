{
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      html.enable = true;
      phpactor.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
    };
    keymaps = {
      lspBuf = {
        "<C-g>" = {
          action = "definition";
        };
        "<C-s-g>" = {
          action = "references";
        };
        k = {
          action = "hover";
        };
      };
    };
  };

  extraConfigLua = ''
    require'lspconfig'.phpactor.setup{
      on_attach = on_attach,
      init_options = {
          ["language_server_phpstan.enabled"] = true,
          ["language_server_psalm.enabled"] = false,
          
        }
    }
  '';
}

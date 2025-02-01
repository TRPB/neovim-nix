{ pkgs, ... }:
{
  plugins.luasnip.enable = true;
  #  plugins.ultisnips.enable = true;
  plugins.cmp = {
    enable = true;
    settings = {
      autoEnableSources = true;
      experimental = {
        ghost_text = false;
      };
      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
      ];
    };
  };
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
        "gd" = {
          action = "definition";
        };
        "<leader>k" = {
          action = "hover";
        };
      };
    };
  };

  keymaps = [
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "grr";
      action = "<cmd>:Telescope lsp_references<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gdd";
      action = "<cmd>:vsplit<CR>:lua vim.lsp.buf.definition()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gri";
      action = ":lua vim.lsp.buf.implementation()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "grn";
      action = "<cmd>:lua vim.lsp.buf.rename()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gra";
      action = "<cmd>:lua vim.lsp.buf.code_action()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gO";
      action = "<cmd>:lua vim.lsp.buf.document_symbol()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "grs";
      action = "<cmd>:lua vim.lsp.buf.signature_help()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "<leader>n";
      action = "<cmd>:PhpactorClassNew<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "<leader>c";
      action = "<cmd>:PhpactorCopyClassName<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gi";
      action = "<cmd>:PhpactorImportClass<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "gt";
      action = "<cmd>:PhpactorTransform<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
        "t"
      ];
      key = "<leader>f";
      action = "<cmd>:let @+ = expand('%')<CR><CR>";
      options.silent = true;
    }

  ];

  extraPlugins = [ pkgs.vimPlugins.phpactor ];

  extraConfigLua = ''
      require'lspconfig'.phpactor.setup{
        on_attach = on_attach,
        init_options = {
            ["language_server_phpstan.enabled"] = true,
            ["language_server_php_cs_fixer.enabled"] = true,
            ["language_server_psalm.enabled"] = false,
            
          }
      }

      local cmp = require('cmp')
      local luasnip = require('luasnip');
      cmp.setup {
        mapping = cmp.mapping.preset.insert({
          ['<C-u>'] = cmp.mapping.scroll_docs(-4), -- Up
          ['<C-d>'] = cmp.mapping.scroll_docs(4), -- Down
          -- C-b (back) C-f (forward) for snippet placeholder navigation.
          ['<C-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.mapping.complete()
            else
              fallback();
            end 
          end, {'i', 's'}),
          ['<Tab>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
          ['j']  = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<Down>']  = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['k'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<Up>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
    }),
      }
  '';
}

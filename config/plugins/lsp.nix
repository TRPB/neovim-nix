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

  extraPlugins = [ pkgs.vimPlugins.phpactor ];

  extraConfigLua = ''
      require'lspconfig'.phpactor.setup{
        on_attach = on_attach,
        init_options = {
            ["language_server_phpstan.enabled"] = true,
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
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.mapping.complete()
            else
              fallback();
            end 
          end, {'i', 's'}),
          ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          },
          ['<Down>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
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

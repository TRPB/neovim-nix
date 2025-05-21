{ pkgs, ... }:
{
  plugins.luasnip.enable = true;
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

  extraConfigVim = ''
    let g:PhpactorRootDirectoryStrategy = {-> getcwd() }
  '';

  diagnostic.settings.virtual_text = true;
  plugins.lsp = {
    enable = true;
    inlayHints = true;
    servers = {
      html.enable = true;
      jsonls.enable = true;
      yamlls.enable = true;
      phpactor.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
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
      ];
      key = "grr";
      action = "Snacks.picker.lsp_references";
      lua = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "gdd";
      action = "<cmd>:vsplit<CR>:lua vim.lsp.buf.definition()<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "gri";
      action = "Snacks.picker.lsp_implementations";
      options.silent = true;
      lua = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "grn";
      action = "vim.lsp.buf.rename";
      options.silent = true;
      lua = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "gra";
      action = "vim.lsp.buf.code_action";
      options.silent = true;
      lua = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "gO";
      action = "Snacks.picker.lsp_symbols";
      options.silent = true;
      lua = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "grs";
      action = "vim.lsp.buf.signature_help";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>n";
      action = "<cmd>:PhpactorClassNew<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>c";
      action = "<cmd>:PhpactorCopyClassName<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>i";
      action = "<cmd>:PhpactorImportClass<CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "gt";
      action = "<cmd>:PhpactorTransform<CR><CR>";
      options.silent = true;
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<leader>f";
      action = "<cmd>:let @+ = expand('%')<CR><CR>";
      options.silent = true;
    }

  ];

  # Required for :PhpactorCopyClassName etc
  # These don't seem available via LSP yet
  extraPlugins = [ pkgs.vimPlugins.phpactor ];

  extraConfigLua = ''
      require'lspconfig'.phpactor.setup{
         on_attach = on_attach,
         filetypes = {'php'},
         root_dir = function(pattern)
           local util = require('lspconfig.util')
           return util.root_pattern('composer.json', '.git')(pattern)
         end,
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
          ['<C-j>']  = cmp.mapping(function(fallback)
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
          ['<C-k>'] = cmp.mapping(function(fallback)
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

{ pkgs, ... }:
{
  extraPlugins = [ pkgs.vimPlugins.tabby-nvim ];
  extraConfigLua = ''
    local theme = {
      fill = 'TabLineFill',
      -- Also you can do this: fill = { fg='#f2e9de', bg='#907aa9', style='italic' }
      head = 'TabLine',
      current_tab = 'TabLineSel',
      tab = 'TabLine',
      win = 'TabLine',
      tail = 'TabLine',
    }
            require('tabby').setup({
            line = function(line)
            return {
              line.tabs().foreach(function(tab)
                local hl = tab.is_current() and theme.current_tab or theme.tab
                return {
                  line.sep('', hl, theme.fill),
                  tab.number(),
                  line.sep('', hl, theme.fill),
                  hl = hl,
                  margin = ' ',
                }
              end),
              line.spacer(),
              hl = theme.fill,
            }, { pos = 'bottom' }
          end,
          option = {
        pos = 'bottom'
      }             -- option = {}, -- setup modules' option,
        })  '';
}

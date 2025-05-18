{
  # TODO: Convert to nix and reduce repetition
  extraConfigLua = ''

    vim.keymap.set("i", "<C-,>", function()
      vim.ui.input({ prompt = " Calculator: " }, function(input)
        local calc = load("return " .. (input or ""))()
        if (calc) then
          vim.api.nvim_feedkeys(tostring(calc), "i", true)
        end
      end)
    end)

    vim.keymap.set("n", "<C-,>", function()
      vim.ui.input({ prompt = " Calculator: " }, function(input)
        local calc = load("return " .. (input or ""))()
        if (calc) then
             print(tostring(calc))
        end
      end)
    end)

    vim.keymap.set("t", "<C-,>", function()
      vim.ui.input({ prompt = " Calculator: " }, function(input)
        local calc = load("return " .. (input or ""))()
        if (calc) then
            print(tostring(calc))
            vim.cmd('let @+ = "' .. calc .. '"')
        end
      end)
    end)


    vim.keymap.set("t", "<C-s-,>", function()
      vim.ui.input({ prompt = " Calculator: " }, function(input)
        local calc = load("return " .. (input or ""))()
        if (calc) then
           vim.api.nvim_feedkeys(tostring(calc), "i", true)
        end
      end)
    end)
  '';
}

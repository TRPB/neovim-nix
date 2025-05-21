{ pkgs, ... }:
{
  plugins.dap-virtual-text.enable = true;
  plugins.dap-ui.enable = true;
  plugins.dap = {
    enable = true;
    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
    };
    configurations.php = [
      {
        type = "php";
        request = "launch";
        name = "Listen for Xdebug";
        port = 9003;
        log = true;
      }
    ];

    adapters = {
      executables.php = {
        command = "node";
        args = [
          "${pkgs.vscode-extensions.xdebug.php-debug}/share/vscode/extensions/xdebug.php-debug/out/phpDebug.js"
        ];
      };
    };

  };

  keymaps = [
    {
      mode = [
        "n"
        "i"
        "v"
        "c"
      ];
      key = "<F1>";
      action.__raw = "function() require('dap').continue() end";
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "c"
      ];
      key = "<F3>";
      action.__raw = "function() require('dapui').toggle() end";
    }
    {
      mode = [
        "n"
        "i"
        "v"
        "c"
      ];
      key = "<F2>";
      action.__raw = "function() require('dap').toggle_breakpoint() end";
    }
  ];

  # Open dapui when a breakpoint is triggered
  # TODO: Why isn't this working? Works as intended outside of nixvim
  extraConfigLua = ''
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end
  '';
}

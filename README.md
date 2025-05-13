# Tom's nixvim configuration

Desiged to run using neovide as a terminal 

- Nord theme (customised)
- Designed for PHP development:
    - Xdebug config
    - phpactor LSP
    - vim-test for testing (it's the only one I could find supporting behat and phpunit)

## Usage:

In nix using flakes

`flake.nix`:

```nix
{
    inputs = {
        # ...
        neovim.url = "github:TRPB/neovim-nix";
    }

    outputs = {
        # ...
        neovim,
        ...
    }@inputs: {
        ./neovim.nix
        _modlule.args = { inherit inputs };
    }
}
```

`neovim.nix`:

```nix
{ inputs, ...}:
{
    #for single users
    users.users.yourusername.pacakges = [
        # neovim 
        inputs.neovim."x86_64-linux".default

        # neovide
        inputs.neovim."x86_64-linux".neovide
    ];

    # or system wide
    environment.systemPacakges = [
        # neovim 
        inputs.neovim."x86_64-linux".default

        # neovide
        inputs.neovim."x86_64-linux".neovide
    ];

}
```


nix-run:

```bash
# Terminal
nix run github:TRPB/neovim-nix

# Run Neovim in Neovide
nix run github:TRPB/neovim-nix#neovide

# If you're using nix on a different distro and you get an opengl error launch with the nixGL wrapper
nix run github:TRPB/neovim-nix#nixgl-neovide

```

## Keybinds

### Tests


- `<leader>tn` run nearest test
- `<leadeR>tn` rerun last test
- `<leader>tf` test file

### Debugging

F1-F4

- `<F1>` Listen for Xdebug/continue after breakpoint
- `<F2>` Toggle breakpoint
- `<F3>` Toggle dapui

### Terminal

- Desiged for running with neovide as a terminal

### LSP

- `gd` Goto definition
- `grr` find references
- `gri` find implementations
- `grn` rename
- `<leader>c` copy class name from current buffer (php only)
- `<leader>f` copy file name of current buffer

### Telescope

- `<C-p>` Find files (Can you tell I spent some years on sublime text?)
- `<C-/>` Live grep
- `<C-g>` Git branches
- `<C-b>` Buffers


### Tools

- `gg` Open fugitive git ui
- `<C-o>` open octo options
- `<leader>rr` Rest run (.http files only)
- `<F12>` Open Dbee (configure with `.nvim.lua` per project)

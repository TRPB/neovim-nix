# Tom's nixvim configuration

I'm one week into vim so using familar keybinds (Ctrl-C, Ctrl-V, Ctrl-S, etc). They're not optimised!

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

Ctrl + number keys

- `<C-1>` run nearest test
- `<C-2>` rerun last test
- `<C-3>` test file

### Debugging

F1-F4

- `<F1>` Listen for Xdebug/continue after breakpoint
- `<F2>` Toggle breakpoint
- `<F3>` Toggle dapui

### Terminal

- `<C-\`>` Toggle terminal

### LSP

- `<C-g>` Goto definition
- `<C-s-g>` find references

### Telescope

- `<C-p>` Find files (Can you tell I spent some years on sublime text?)
- `<C-/>` Live grep


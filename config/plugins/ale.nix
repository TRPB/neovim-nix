{ pkgs, ...}:
{
  extraPlugins = with pkgs.vimPlugins; [
    ale
    vim-lsp-ale
  ];
}

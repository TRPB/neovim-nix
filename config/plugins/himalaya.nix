{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    (himalaya-vim.overrideAttrs (old: {
      src = pkgs.fetchFromGitHub {
        owner = "pimalaya";
        repo = "himalaya-vim";
        rev = "bb8d0ebbe82b1ba1d487354fab86d81f12a82c4d";
        sha256 = "sha256-YW4qoCDLg/LSUKkptvecoa4n1niwZLeiSBCFLCY30j4=";
      };
      nvimSkipModule = [
        "himalaya.folder.pickers.telescope"
        "himalaya.folder.pickers.fzflua"
      ];
    }))
  ];
}

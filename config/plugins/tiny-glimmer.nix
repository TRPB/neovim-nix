{ pkgs, lib, ... }:
let
  fromGitHub =
    rev: ref: repo:
    pkgs.vimUtils.buildVimPlugin {
      pname = "${lib.strings.sanitizeDerivationName repo}";
      version = ref;
      src = builtins.fetchGit {
        url = "https://github.com/${repo}.git";
        ref = ref;
        rev = rev;
      };
    };
in
{
  extraPlugins = [
    (fromGitHub "f92815723c5c3367c4cd11bf365490cb520f8bf3" "HEAD" "rachartier/tiny-glimmer.nvim")
  ];
  extraConfigLua = ''
    require("tiny-glimmer").setup({
      transparency_color = '#3b4252'
    })
  '';
}

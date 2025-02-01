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
    (fromGitHub "0d4453364dafac6bd8efee5268727d25c208e804" "HEAD" "rachartier/tiny-glimmer.nvim")
  ];
  extraConfigLua = ''
    require("tiny-glimmer").setup({
      transparency_color = '#3b4252'
    })
  '';
}

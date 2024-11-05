{ lib, pkgs, ... }:
let 
  fromGitHub = rev: ref: repo: pkgs.vimUtils.buildVimPluginFrom2Nix {
    pname = "${lib.strings.sanitizeDerivationName repo}";
    version = ref;
    src = builtins.fetchGit {
      url = "https://github.com/${repo}.git";
      ref = ref;
      rev = rev;
    };
  };
in {
  extraPlugins = [
    pkgs.vimPlugins.litee-nvim
    (fromGitHub "HEAD" "ebbaac254ef7dd6f85b439825fbce82d0dc84515" "ldelossa/gh.nvim")
  ];
  extraConfigLua = ''
     require("litee.lib").setup()
     require("litee.gh").setup()
  '';
}

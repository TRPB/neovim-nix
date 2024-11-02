{
  autoCmd = [
    {
      event = "BufWritePost";
      pattern = "*.php";
      command = "silent ! <vim.g.php_cs_fixer_path> fix %";
    }
    {
      event = "BufWritePost";
      pattern = "*.nix";
      command = "silent ! nixfmt %";
    }
  ];
}

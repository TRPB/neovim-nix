{
  autoCmd = [
    {
      event = "BufWritePost";
      pattern = "*.php";
      command = "silent ! vendor/bin/php-cs-fixer fix %";
    }
    {
      event = "BufWritePost";
      pattern = "*.nix";
      command = "silent ! nixfmt %";
    }
  ];
}

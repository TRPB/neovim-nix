{
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>ic";
      action = "<CMD>:PhpactorImportClass<CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<leader>im";
      action = "<CMD>:PhpactorImportMissingClasses<CR>";
      options.silent = true;
    }
    {
      mode = [ "n" ];
      key = "<leader>fn";
      action = "<CMD>:PhpactorTransform<CR> f<CR>";
      options.silent = true;
    }
  ];
}


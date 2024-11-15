{
  plugins.rest = {
    enable = true;
    settings.result.behavior.formatters = {

      json = "jq";
    };
  };
}

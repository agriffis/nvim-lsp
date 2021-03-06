local configs = require 'nvim_lsp/configs'
local util = require 'nvim_lsp/util'
local lsp = vim.lsp

configs.terraformls = {
  default_config = {
    cmd = {"terraform-lsp"};
    filetypes = {"terraform"};
    root_dir = util.root_pattern(".git");
    log_level = lsp.protocol.MessageType.Warning;
  };
  docs = {
    vscode = "mauve.terraform";
    description = [[
https://github.com/juliosueiras/terraform-lsp

Terraform language server
You can use [released binary](https://github.com/juliosueiras/terraform-lsp/releases) or [build](https://github.com/juliosueiras/terraform-lsp#building) your own.
]];
    default_config = {
      root_dir = [[root_pattern(".git")]];
    };
  };
}
-- vim:et ts=2 sw=2

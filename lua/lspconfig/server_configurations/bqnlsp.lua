local util = require('lspconfig.util')

return {
    default_config = {
      cmd = { 'bqnlsp' },
      cmd_env = {},
      filetypes = { 'bqn' },
      root_dir = util.find_git_ancestor,
      single_file_support = false,
    },
    docs = {
      description = [[
      BQN Language Server
  ]],
      default_config = {
        root_dir = [[util.find_git_ancestor]],
      },
    },
  }

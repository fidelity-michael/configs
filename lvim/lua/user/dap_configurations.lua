-- local dap = require('dap')
--[[ dap.configuration.cpp = {
  type = 'cpp',
  request = 'launch',

} ]]
--[[ dap.configuration.cpp = {
  type = 'executable',
  attach = {
    pidProperty = "pid",
    pidSelect = "ask"
  },
  command = 'lldb-vscode-11',  -- my binary was called 'lldb-vscode-11
  env = {
    LLDB_LAUNCH_FLAG_LAUNCH_IN_TTY = "YES"
  },
  name = "lldb"
} ]]

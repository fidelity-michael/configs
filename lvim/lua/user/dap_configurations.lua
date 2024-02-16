local dap = require('dap')

dap.configurations.cpp = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input({ prompt="Path to executable: ", default=vim.fn.getcwd() .. "/", completion="file" })
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = true,
    },
}

dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
        command = "codelldb",
        args = { "--port", "${port}" },
    }
}

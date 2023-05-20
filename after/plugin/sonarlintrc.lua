local status, sonarlint = pcall(require, "sonarlint")
if (not status) then
    print("Sonarlint not found")
    return
end

sonarlint.setup {
    server = {
        cmd = {
            'sonarlint-language-server',
            -- Ensure that sonarlint-language-server uses stdio channel
            '-stdio', '-analyzers',
            -- paths to the analyzers you need, using those for python and java in this example
            vim.fn.expand("$MASON/share/sonarlint-analyzers/sonarjava.jar")
        }
    },
    filetypes = {
        -- Requires nvim-jdtls, otherwise an error message will be printed
        'java'
    }

}

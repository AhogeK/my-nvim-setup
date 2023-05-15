local status, guess_indent = pcall(require, 'guess-indent')
if (not status) then
    print('guess-indent is not installed')
    return
end

guess_indent.setup {
    auto_cmd = true, -- Set to false to disable automatic execution
    override_editorconfig = true -- Set to true to override settings set by .editorconfig
}

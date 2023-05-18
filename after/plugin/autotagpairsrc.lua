local autotag_status, autotag = pcall(require, 'nvim-ts-autotag')
if (not autotag_status) then
    print('nvim-ts-autotag is not installed')
    return
end

local autopairs_status, autopairs = pcall(require, 'nvim-autopairs')
if (not autopairs_status) then
    print('nvim-autopairs is not installed')
    return
end

autotag.setup {}
autopairs.setup {}

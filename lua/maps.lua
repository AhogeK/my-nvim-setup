local keymap = vim.keymap

-- 在 normal 模式下，将 x 映射为删除光标所在位置的字符并把该字符放入无名寄存器
keymap.set('n', 'x', '"_x')

-- 在 normal 模式下，将 <C-a> 映射为选中整个文件内容
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- 在 normal 模式下，将 te 映射为打开一个新的标签页并进入编辑器
keymap.set('n', 'te', ':tabedit<Return>', {silent = true})

-- 在 normal 模式下，将 ss 映射为打开一个新的水平分屏窗口并切换到该窗口
keymap.set('n', 'ss', ':split<Return><C-w>w', {silent = true})

-- 在 normal 模式下，将 sv 映射为打开一个新的垂直分屏窗口并切换到该窗口
keymap.set('n', 'sv', ':vsplit<Return><C-w>w', {silent = true})

-- 在 normal 模式下，将空格键映射为切换到下一个窗口
keymap.set('n', '<Space>', '<C-w>w')

-- 在所有模式下，将 s+向左箭头键映射为将焦点切换到左侧的窗口
keymap.set('', 's<left>', '<C-w>h')

-- 在所有模式下，将 s+向右箭头键映射为将焦点切换到右侧的窗口
keymap.set('', 's<right>', '<C-w>l')

-- 在所有模式下，将 s+向上箭头键映射为将焦点切换到上方的窗口
keymap.set('', 's<up>', '<C-w>k')

-- 在所有模式下，将 s+向下箭头键映射为将焦点切换到下方的窗口
keymap.set('', 's<down>', '<C-w>j')

-- 在所有模式下，将 s+h 映射为将焦点切换到左侧的窗口
keymap.set('', 'sh', '<C-w>h')

-- 在所有模式下，将 s+k 映射为将焦点切换到上方的窗口
keymap.set('', 'sk', '<C-w>k')

-- 在所有模式下，将 s+j 映射为将焦点切换到下方的窗口
keymap.set('', 'sj', '<C-w>j')

-- 在所有模式下，将 s+l 映射为将焦点切换到右侧的窗口
keymap.set('', 'sl', '<C-w>l')

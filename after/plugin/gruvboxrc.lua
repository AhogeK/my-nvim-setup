local status, gruvbox = pcall(require, 'gruvbox')

if (not status) then
  print('gruvbox is not installed')
  return
end

gruvbox.setup()

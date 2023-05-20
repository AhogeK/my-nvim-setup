-- 检查是否安装了 neosolarized 插件，如果未安装，则直接返回
local status, n = pcall(require, "neosolarized")
if not status then
	return
end

-- 调用 neosolarized 插件的 setup 函数并传入参数表
n.setup({ comment_italics = true })

-- 导入 colorbuddy 库并创建颜色、组和样式
local colorbuddy = require("colorbuddy.init")
local Color = colorbuddy.Color
local colors = colorbuddy.colors
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles = colorbuddy.styles

-- 创建新颜色 black 并设置其值为 #000000
Color.new("black", "#000000")
-- 创建新组 CursorLine，并设置其前景色为 none，背景色为 base03，无样式，特效颜色为 base1
Group.new("CursorLine", colors.none, colors.base03, styles.NONE, colors.base1)
-- 创建新组 CursorLineNr，并设置其前景色为 white，背景色为 base03，无样式，特效颜色为 base1
Group.new("CursorLineNr", colors.white, colors.base03, styles.NONE, colors.base1)
-- 创建新组 LineNr，并设置其前景色为 none，背景色为 none，无样式，特效颜色为 base1
Group.new("LineNr", colors.none, colors.none, styles.NONE, colors.base1)
-- 创建新组 Comment，并设置其前景色为 none，背景色为 none，无样式，特效颜色为 base1
Group.new("Comment", colors.none, colors.none, styles.NONE, colors.base1)
-- 创建新组 Visual，并设置其前景色为 none，背景色为 base03，反转样式，特效颜色为 none
Group.new("Visual", colors.none, colors.base03, styles.reverse)

-- 获取 Error、Information、Warning 和 Hint 组的前景色
local cError = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg

-- 创建新组 DiagnosticVirtualTexterror，并设置其前景色为 Error 组的前景色，背景色为 Error 组的特效颜色，无样式
Group.new("DiagnosticVirtualTexterror", cError, cError:dark():dark():dark():dark(), styles.NONE)
-- 创建新组 DiagnosticVirtualTextInfo，并设置其前景色为 Information 组的前景色，背景色为 Information 组的特效颜色，无样式
Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
-- 创建新组 DiagnosticVirtualTextWarn，并设置其前景色为 Warning 组的前景色，背景色为 Warning 组的特效颜色，无样式
Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
-- 创建新组 DiagnosticVirtualTextHint，并设置其前景色为 Hint 组的前景色，背景色为 Hint 组的特效颜色，无样式
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
-- 创建新组 DiagnosticUnderlineError，并设置其前景色为 none，背景色为 none，下划线样式，特效颜色为 Error 组的前景色
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
-- 创建新组 DiagnosticUnderlineWarn，并设置其前景色为 none，背景色为 none，下划线样式，特效颜色为 Warning 组的前景色
Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
-- 创建新组 DiagnosticUnderlineInfo，并设置其前景色为 none，背景色为 none，下划线样式，特效颜色为 Information 组的前景色
Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
-- 创建新组 DiagnosticUnderlineHint，并设置其前景色为 none，背景色为 none，下划线样式，特效颜色为 Hint 组的前景色
Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

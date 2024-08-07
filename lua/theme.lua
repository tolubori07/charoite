local theme = {}
C = require('colors')

theme.highlights =  { 
  --- code highlights
  Keyword = {fg = C.violet},
  Variable = {fg = C.indigo},
  String = {fg = C.green},
  number = {fg= C.pink},
  Boolean = {fg = C.yellow},
  Constant = {fg = C.orange},
  Character = {fg = C.green},
  Float = {fg = C.pink},
  Function = {fg = C.purple},
  ErrorMsg = { fg = C.ctx.error, bg = C.bg, bold = true },
  Conditional = { fg = C.violet},
  Repeat = { fg = C.purple },
  Label = {fg = C.indigo },
  Operator = { fg = C.green},
  Comment = { fg = C.grey, italic = true },
  SpecialComment = {fg = C.violet },
  Type = { fg = C.indigo },
  StorageClass = { fg = C.pink },
  PreProc = { fg = C.purple },
  PreCondit = { fg = C.purple[2] },
  Include = { fg = C.purple[3] },
  Special = { fg = C.pink },
  SpecialChar = {fg = C.orange },
  Exception = { fg = C.green },
  Structure = { fg = C.yellow},
  Typedef = { fg = C.cyan },
  Define = { fg = C.indigo },
  Macro = { fg = C.purple },
  Statement = { fg = C.orange },
  Identifier = { fg = C.violet },
  Underlined = { underline = true },
  Bold = { bold = true },
  Italic = { italic = true },
  Error = { fg = C.ctx.error },
  Title = { fg = C.cyan, bold = true },
  Ignore = { fg = C.grey, bg = C.none, bold = true },
  Delimiter = { fg = C.fg, bg = C.none },
  Debug = { fg = C.orange },
  Todo = { bg = C.green, fg = C.bg },
  Folded = { fg = C.purple, bg = C.violet },
  FoldColumn = { fg = C.purple, bg = C.violet },

  --Buffers 
  BufferCurrent = { bg = C.indigo, fg = C.fg },
  BufferCurrentIndex = { bg = C.indigo, fg = C.cyan },
  BufferCurrentMod = { bg = C.indigo, fg = C.yellow },
  BufferCurrentSign = { bg = C.indigo, fg = C.cyan },
  BufferCurrentTarget = { bg = C.indigo, fg = C.red },
  BufferVisible = { bg = C.indigo, fg = C.fg },
  BufferVisibleIndex = { bg = C.indigo, fg = C.cyan },
  BufferVisibleMod = { bg = C.indigo, fg = C.yellow },
  BufferVisibleSign = { bg = C.indigo, fg = C.cyan },
  BufferVisibleTarget = { bg = C.indigo, fg = C.red },
  BufferInactive = { bg = C.indigo, fg = C.grey },
  BufferInactiveIndex = { bg = C.indigo, fg = C.grey},
  BufferInactiveMod = { bg = C.indigo, fg = C.yellow },
  BufferInactiveSign = { bg = C.indigo, fg = C.cyan },
  BufferInactiveTarget = { bg = C.indigo, fg = C.red },
  BufferTabpages = { bg = C.indigo, fg = C.none },
  BufferTabpage = { bg = C.indigo, fg = C.cyan },

-- treesitter
  ["@annotation"] = {
    default = true,
    link = "PreProc",
  },
  ["@attribute"] = {
    default = true,
    link = "PreProc",
  },
  ["@boolean"] = {
    default = true,
    link = "Boolean",
  },
  ["@character"] = {
    default = true,
    link = "Character",
  },
  ["@character.special"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@comment"] = {
    default = true,
    link = "Comment",
  },
  ["@conditional"] = {
    default = true,
    link = "Conditional",
  },
  ["@constant"] = {
    default = true,
    link = "Constant",
  },
  ["@constant.builtin"] = {
    default = true,
    link = "Special",
  },
  ["@constant.macro"] = {
    default = true,
    link = "Define",
  },
  ["@constructor"] = {
    default = true,
    link = "Special",
  },
  ["@debug"] = {
    default = true,
    link = "Debug",
  },
  ["@define"] = {
    default = true,
    link = "Define",
  },
  ["@exception"] = {
    default = true,
    link = "Exception",
  },
  ["@field"] = {
    default = true,
    link = "Identifier",
  },
  ["@float"] = {
    default = true,
    link = "Float",
  },
  ["@function"] = {
    default = true,
    link = "Function",
  },
  ["@function.builtin"] = {
    default = true,
    link = "Special",
  },
  ["@function.call"] = {
    default = true,
    link = "@function",
  },
  ["@function.macro"] = {
    default = true,
    link = "Macro",
  },
  ["@include"] = {
    default = true,
    link = "Include",
  },
  ["@keyword"] = {
    default = true,
    link = "Keyword",
  },
  ["@keyword.coroutine"] = {
    default = true,
    link = "@keyword",
  },
  ["@keyword.function"] = {
    default = true,
    link = "Keyword",
  },
  ["@keyword.operator"] = {
    default = true,
    link = "@operator",
  },
  ["@keyword.return"] = {
    default = true,
    link = "@keyword",
  },
  ["@label"] = {
    default = true,
    link = "Label",
  },
  ["@method"] = {
    default = true,
    link = "Function",
  },
  ["@method.call"] = {
    default = true,
    link = "@method",
  },
  ["@namespace"] = {
    default = true,
    link = "Include",
  },
  ["@none"] = {
    default = true,
  },
  ["@number"] = {
    default = true,
    link = "Number",
  },
  ["@operator"] = {
    default = true,
    link = "Operator",
  },
  ["@parameter"] = {
    default = true,
    link = "Identifier",
  },
  ["@preproc"] = {
    default = true,
    link = "PreProc",
  },
  ["@property"] = {
    default = true,
    link = "Identifier",
  },
  ["@punctuation.bracket"] = {
    default = true,
    link = "Special",
  },
  ["@punctuation.delimiter"] = {
    default = true,
    link = "Delimiter",
  },
  ["@punctuation.special"] = {
    default = true,
    link = "Special",
  },
  ["@repeat"] = {
    default = true,
    link = "Repeat",
  },
  ["@storageclass"] = {
    default = true,
    link = "StorageClass",
  },
  ["@string"] = {
    default = true,
    link = "String",
  },
  ["@string.escape"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@string.regex"] = {
    default = true,
    link = "String",
  },
  ["@string.special"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@symbol"] = {
    default = true,
    link = "Identifier",
  },
  ["@tag"] = {
    default = true,
    link = "Label",
  },
  ["@tag.attribute"] = {
    default = true,
    link = "@property",
  },
  ["@tag.delimiter"] = {
    default = true,
    link = "Delimiter",
  },
  ["@text"] = {
    default = true,
    link = "@none",
  },
  ["@text.danger"] = {
    default = true,
    link = "WarningMsg",
  },
  ["@text.emphasis"] = {
    default = true,
    italic = true,
  },
  ["@text.environment"] = {
    default = true,
    link = "Macro",
  },
  ["@text.environment.name"] = {
    default = true,
    link = "Type",
  },
  ["@text.literal"] = {
    default = true,
    link = "String",
  },
  ["@text.math"] = {
    default = true,
    link = "Special",
  },
  ["@text.note"] = {
    default = true,
    link = "SpecialComment",
  },
  ["@text.reference"] = {
    default = true,
    link = "Constant",
  },
  ["@text.strike"] = {
    strikethrough = true,
  },
  ["@text.strong"] = {
    bold = true,
    default = true,
  },
  ["@text.title"] = {
    default = true,
    link = "Title",
  },
  ["@text.underline"] = {
    underline = true,
  },
  ["@text.uri"] = {
    default = true,
    link = "Underlined",
  },
  ["@text.warning"] = {
    default = true,
    link = "Todo",
  },
  ["@text.todo"] = {
    default = true,
    link = "Todo",
  },
  ["@type"] = {
    default = true,
    link = "Type",
  },
  ["@type.builtin"] = {
    default = true,
    link = "Type",
  },
  ["@type.definition"] = {
    default = true,
    link = "Typedef",
  },
  ["@type.qualifier"] = {
    default = true,
    link = "@keyword",
  },
  ["@variable.builtin"] = {
    default = true,
    link = "Special",
  },

}

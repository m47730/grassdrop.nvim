--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
-- local theme = lush(function()
-- return {
-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
-- groups, mostly used for styling UI elements.
-- Comment them out and add your own properties to override the defaults.
-- An empty definition `{}` will clear all styling, leaving elements looking
-- like the 'Normal' group.
-- To be able to link to a group, it must already be defined, so you may have
-- to reorder items as you go.
--
-- See :h highlight-groups
--
-- ColorColumn { bg = "#0faaf0" }, -- Columns set with 'colorcolumn'
-- Conceal      { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
-- Cursor       { }, -- Character under the cursor
-- lCursor      { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
-- CursorIM     { }, -- Like Cursor, but used when in IME mode |CursorIM|
-- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
-- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
-- Directory    { }, -- Directory names (and other special names in listings)
-- DiffAdd      { }, -- Diff mode: Added line |diff.txt|
-- DiffChange   { }, -- Diff mode: Changed line |diff.txt|
-- DiffDelete   { }, -- Diff mode: Deleted line |diff.txt|
-- DiffText     { }, -- Diff mode: Changed text within a changed line |diff.txt|
-- EndOfBuffer  { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
-- TermCursor   { }, -- Cursor in a focused terminal
-- TermCursorNC { }, -- Cursor in an unfocused terminal
-- ErrorMsg     { }, -- Error messages on the command line
-- VertSplit    { }, -- Column separating vertically split windows
-- Folded       { }, -- Line used for closed folds
-- FoldColumn   { }, -- 'foldcolumn'
-- SignColumn   { }, -- Column where |signs| are displayed
-- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
-- Substitute   { }, -- |:substitute| replacement text highlighting
-- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
-- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
-- MatchParen   { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
-- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
-- MsgArea      { }, -- Area for messages and cmdline
-- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
-- MoreMsg      { }, -- |more-prompt|
-- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
-- Normal       { }, -- Normal text
-- NormalFloat  { }, -- Normal text in floating windows.
-- NormalNC     { }, -- normal text in non-current windows
-- Pmenu        { }, -- Popup menu: Normal item.
-- PmenuSel     { }, -- Popup menu: Selected item.
-- PmenuSbar    { }, -- Popup menu: Scrollbar.
-- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
-- Question     { }, -- |hit-enter| prompt and yes/no questions
-- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
-- Search       { }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
-- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
-- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
-- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
-- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
-- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
-- StatusLine   { }, -- Status line of current window
-- StatusLineNC { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
-- TabLine      { }, -- Tab pages line, not active tab page label
-- TabLineFill  { }, -- Tab pages line, where there are no labels
-- TabLineSel   { }, -- Tab pages line, active tab page label
-- Title        { }, -- Titles for output from ":set all", ":autocmd" etc.
-- Visual       { }, -- Visual mode selection
-- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
-- WarningMsg   { }, -- Warning messages
-- Whitespace   { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
-- Winseparator { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
-- WildMenu     { }, -- Current match in 'wildmenu' completion

-- Common vim syntax groups used for all kinds of code and markup.
-- Commented-out groups should chain up to their preferred (*) group
-- by default.
--
-- See :h group-name
--
-- Uncomment and edit if you want more specific syntax highlighting.

-- Comment        { }, -- Any comment

-- Constant       { }, -- (*) Any constant
-- String         { }, --   A string constant: "this is a string"
-- Character      { }, --   A character constant: 'c', '\n'
-- Number         { }, --   A number constant: 234, 0xff
-- Boolean        { }, --   A boolean constant: TRUE, false
-- Float          { }, --   A floating point constant: 2.3e10

-- Identifier     { }, -- (*) Any variable name
-- Function       { }, --   Function name (also: methods for classes)

-- Statement      { }, -- (*) Any statement
-- Conditional    { }, --   if, then, else, endif, switch, etc.
-- Repeat         { }, --   for, do, while, etc.
-- Label          { }, --   case, default, etc.
-- Operator       { }, --   "sizeof", "+", "*", etc.
-- Keyword        { }, --   any other keyword
-- Exception      { }, --   try, catch, throw

-- PreProc        { }, -- (*) Generic Preprocessor
-- Include        { }, --   Preprocessor #include
-- Define         { }, --   Preprocessor #define
-- Macro          { }, --   Same as Define
-- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

-- Type           { }, -- (*) int, long, char, etc.
-- StorageClass   { }, --   static, register, volatile, etc.
-- Structure      { }, --   struct, union, enum, etc.
-- Typedef        { }, --   A typedef

-- Special        { }, -- (*) Any special symbol
-- SpecialChar    { }, --   Special character in a constant
-- Tag            { }, --   You can use CTRL-] on this
-- Delimiter      { }, --   Character that needs attention
-- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
-- Debug          { }, --   Debugging statements

-- Underlined     { gui = "underline" }, -- Text that stands out, HTML links
-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
-- Error          { }, -- Any erroneous construct
-- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

-- These groups are for the native LSP client and diagnostic system. Some
-- other LSP clients may use these groups, or use their own. Consult your
-- LSP client's documentation.

-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
--
-- LspReferenceText            { } , -- Used for highlighting "text" references
-- LspReferenceRead            { } , -- Used for highlighting "read" references
-- LspReferenceWrite           { } , -- Used for highlighting "write" references
-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
--
-- DiagnosticError            { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- DiagnosticWarn             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- DiagnosticInfo             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- DiagnosticHint             { } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
-- DiagnosticVirtualTextError { } , -- Used for "Error" diagnostic virtual text.
-- DiagnosticVirtualTextWarn  { } , -- Used for "Warn" diagnostic virtual text.
-- DiagnosticVirtualTextInfo  { } , -- Used for "Info" diagnostic virtual text.
-- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
-- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
-- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
-- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
-- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
-- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
-- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
-- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
-- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
-- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
-- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
-- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
-- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.

-- Tree-Sitter syntax groups. Most link to corresponding
-- vim syntax groups (e.g. TSKeyword => Keyword) by default.
--
-- See :h nvim-treesitter-highlights, some groups may not be listed, submit a PR fix to lush-template!
--
-- TSAttribute          { } , -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
-- TSBoolean            { } , -- Boolean literals: `True` and `False` in Python.
-- TSCharacter          { } , -- Character literals: `'a'` in C.
-- TSCharacterSpecial   { } , -- Special characters.
-- TSComment            { } , -- Line comments and block comments.
-- TSConditional        { } , -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
-- TSConstant           { } , -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
-- TSConstBuiltin       { } , -- Built-in constant values: `nil` in Lua.
-- TSConstMacro         { } , -- Constants defined by macros: `NULL` in C.
-- TSConstructor        { } , -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
-- TSDebug              { } , -- Debugging statements.
-- TSDefine             { } , -- Preprocessor #define statements.
-- TSError              { } , -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
-- TSException          { } , -- Exception related keywords: `try`, `except`, `finally` in Python.
-- TSField              { } , -- Object and struct fields.
-- TSFloat              { } , -- Floating-point number literals.
-- TSFunction           { } , -- Function calls and definitions.
-- TSFuncBuiltin        { } , -- Built-in functions: `print` in Lua.
-- TSFuncMacro          { } , -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
-- TSInclude            { } , -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
-- TSKeyword            { } , -- Keywords that don't fit into other categories.
-- TSKeywordFunction    { } , -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
-- TSKeywordOperator    { } , -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
-- TSKeywordReturn      { } , -- Keywords like `return` and `yield`.
-- TSLabel              { } , -- GOTO labels: `label:` in C, and `::label::` in Lua.
-- TSMethod             { } , -- Method calls and definitions.
-- TSNamespace          { } , -- Identifiers referring to modules and namespaces.
-- TSNone               { } , -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
-- TSNumber             { } , -- Numeric literals that don't fit into other categories.
-- TSOperator           { } , -- Binary or unary operators: `+`, and also `->` and `*` in C.
-- TSParameter          { } , -- Parameters of a function.
-- TSParameterReference { } , -- References to parameters of a function.
-- TSPreProc            { } , -- Preprocessor #if, #else, #endif, etc.
-- TSProperty           { } , -- Same as `TSField`.
-- TSPunctDelimiter     { } , -- Punctuation delimiters: Periods, commas, semicolons, etc.
-- TSPunctBracket       { } , -- Brackets, braces, parentheses, etc.
-- TSPunctSpecial       { } , -- Special punctuation that doesn't fit into the previous categories.
-- TSRepeat             { } , -- Keywords related to loops: `for`, `while`, etc.
-- TSStorageClass       { } , -- Keywords that affect how a variable is stored: `static`, `comptime`, `extern`, etc.
-- TSString             { } , -- String literals.
-- TSStringRegex        { } , -- Regular expression literals.
-- TSStringEscape       { } , -- Escape characters within a string: `\n`, `\t`, etc.
-- TSStringSpecial      { } , -- Strings with special meaning that don't fit into the previous categories.
-- TSSymbol             { } , -- Identifiers referring to symbols or atoms.
-- TSTag                { } , -- Tags like HTML tag names.
-- TSTagAttribute       { } , -- HTML tag attributes.
-- TSTagDelimiter       { } , -- Tag delimiters like `<` `>` `/`.
-- TSText               { } , -- Non-structured text. Like text in a markup language.
-- TSStrong             { } , -- Text to be represented in bold.
-- TSEmphasis           { } , -- Text to be represented with emphasis.
-- TSUnderline          { } , -- Text to be represented with an underline.
-- TSStrike             { } , -- Strikethrough text.
-- TSTitle              { } , -- Text that is part of a title.
-- TSLiteral            { } , -- Literal or verbatim text.
-- TSURI                { } , -- URIs like hyperlinks or email addresses.
-- TSMath               { } , -- Math environments like LaTeX's `$ ... $`
-- TSTextReference      { } , -- Footnotes, text references, citations, etc.
-- TSEnvironment        { } , -- Text environments of markup languages.
-- TSEnvironmentName    { } , -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
-- TSNote               { } , -- Text representation of an informational note.
-- TSWarning            { } , -- Text representation of a warning note.
-- TSDanger             { } , -- Text representation of a danger note.
-- TSType               { } , -- Type (and class) definitions and annotations.
-- TSTypeBuiltin        { } , -- Built-in types: `i32` in Rust.
-- TSVariable           { } , -- Variable names that don't fit into other categories.
-- TSVariableBuiltin    { } , -- Variable names defined by the language: `this` or `self` in Javascript.
-- }





-- autogenerated lush spec on Sun 14 Aug 2022 12:08:45 AM CEST
-- Run :Lushify
-- then /Normal to find the Normal group and edit your fg & bg colors
local lush = require("lush")
local hsl = lush.hsl
local hsluv = lush.hsluv
local theme = lush(function()
  return {
    SpecialKey { fg = "#444444", }, -- SpecialKey     xxx ctermfg=238 guifg=#444444
    TermCursor { gui = "reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
    GitSignsAddInline { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
    GitSignsDeleteInline { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
    GitSignsChangeInline { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
    NonText { fg = "#444444", }, -- NonText        xxx ctermfg=238 guifg=#444444
    EndOfBuffer { NonText }, -- EndOfBuffer    xxx links to NonText
    Whitespace { NonText }, -- Whitespace     xxx links to NonText
    TelescopePreviewHyphen { NonText }, -- TelescopePreviewHyphen xxx links to NonText
    TelescopeResultsDiffUntracked { NonText }, -- TelescopeResultsDiffUntracked xxx links to NonText
    TelescopePromptCounter { NonText }, -- TelescopePromptCounter xxx links to NonText
    GitSignsCurrentLineBlame { NonText }, -- GitSignsCurrentLineBlame xxx links to NonText
    Directory { fg = "#b3deef", }, -- Directory      xxx ctermfg=153 guifg=#b3deef
    NvimTreeOpenedFolderName { Directory }, -- NvimTreeOpenedFolderName xxx links to Directory
    NvimTreeEmptyFolderName { Directory }, -- NvimTreeEmptyFolderName xxx links to Directory
    NvimTreeFolderName { Directory }, -- NvimTreeFolderName xxx links to Directory
    TelescopePreviewDate { Directory }, -- TelescopePreviewDate xxx links to Directory
    TelescopePreviewDirectory { Directory }, -- TelescopePreviewDirectory xxx links to Directory
    ErrorMsg { gui = "reverse", fg = "#f43753", }, -- ErrorMsg       xxx cterm=reverse ctermfg=203 gui=reverse guifg=#f43753
    NvimInvalidSpacing { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
    IncSearch { bg = "#000000", gui = "bold,reverse", fg = "#ffffff", }, -- IncSearch      xxx cterm=bold,reverse ctermfg=15 ctermbg=0 gui=bold,reverse guifg=#ffffff guibg=#000000
    Search { gui = "bold,underline", fg = "#ffffff", }, -- Search         xxx cterm=bold,underline ctermfg=15 gui=bold,underline guifg=#ffffff
    QuickFixLine { Search }, -- QuickFixLine   xxx links to Search
    Substitute { Search }, -- Substitute     xxx links to Search
    TelescopePreviewMatch { Search }, -- TelescopePreviewMatch xxx links to Search
    MoreMsg { gui = "bold", fg = "seagreen", }, -- MoreMsg        xxx ctermfg=121 gui=bold guifg=SeaGreen
    ModeMsg { gui = "bold", }, -- ModeMsg        xxx cterm=bold gui=bold
    LineNr { fg = "#444444", }, -- LineNr         xxx ctermfg=238 guifg=#444444
    LineNrAbove { LineNr }, -- LineNrAbove    xxx links to LineNr
    LineNrBelow { LineNr }, -- LineNrBelow    xxx links to LineNr
    TelescopeResultsLineNr { LineNr }, -- TelescopeResultsLineNr xxx links to LineNr
    CursorLineNr { fg = "#73cef4", }, -- CursorLineNr   xxx ctermfg=81 guifg=#73cef4
    Question { fg = "#c9d05c", }, -- Question       xxx ctermfg=185 guifg=#c9d05c
    StatusLine { bg = "#333333", gui = "bold", fg = "#1d1d1d", }, -- StatusLine     xxx cterm=bold ctermfg=234 ctermbg=242 gui=bold guifg=#1d1d1d guibg=#666666
    MsgSeparator { StatusLine }, -- MsgSeparator   xxx links to StatusLine
    NvimTreeStatusLine { StatusLine }, -- NvimTreeStatusLine xxx links to StatusLine
    StatusLineNC { bg = "#444444", fg = "#999999", }, -- StatusLineNC   xxx ctermfg=246 ctermbg=238 guifg=#999999 guibg=#444444
    NvimTreeStatusLineNC { StatusLineNC }, -- NvimTreeStatusLineNC xxx links to StatusLineNC
    VertSplit { bg = "#282828", fg = "#282828", }, -- VertSplit      xxx ctermfg=235 ctermbg=235 guifg=#282828 guibg=#282828
    WinSeparator { VertSplit }, -- WinSeparator   xxx links to VertSplit
    NvimTreeVertSplit { VertSplit }, -- NvimTreeVertSplit xxx links to VertSplit
    Title { gui = "bold", fg = "#b3deef", }, -- Title          xxx cterm=bold ctermfg=153 gui=bold guifg=#b3deef
    TSTitle { Title }, -- TSTitle        xxx links to Title
    Visual { gui = "bold", bg = "#293b44", }, -- Visual         xxx cterm=bold ctermbg=237 gui=bold guibg=#293b44
    TelescopePreviewLine { Visual }, -- TelescopePreviewLine xxx links to Visual
    TelescopeSelection { Visual }, -- TelescopeSelection xxx links to Visual
    WarningMsg { fg = "#f43753", }, -- WarningMsg     xxx ctermfg=203 guifg=#f43753
    TSDanger { WarningMsg }, -- TSDanger       xxx links to WarningMsg
    WildMenu { bg = "#c9d05c", gui = "bold", fg = "#282828", }, -- WildMenu       xxx cterm=bold ctermfg=235 ctermbg=185 gui=bold guifg=#282828 guibg=#c9d05c
    Folded { bg = "#202020", fg = "#666666", }, -- Folded         xxx ctermfg=242 ctermbg=234 guifg=#666666 guibg=#202020
    FoldColumn { bg = "#202020", fg = "#666666", }, -- FoldColumn     xxx ctermfg=242 ctermbg=234 guifg=#666666 guibg=#202020
    CursorLineFold { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
    DiffAdd { bg = "#464632", }, -- DiffAdd        xxx ctermbg=238 guibg=#464632
    TelescopeResultsDiffAdd { DiffAdd }, -- TelescopeResultsDiffAdd xxx links to DiffAdd
    GitSignsAddLn { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
    DiffChange { bg = "#335261", }, -- DiffChange     xxx ctermbg=239 guibg=#335261
    TelescopeResultsDiffChange { DiffChange }, -- TelescopeResultsDiffChange xxx links to DiffChange
    GitSignsChangeLn { DiffChange }, -- GitSignsChangeLn xxx links to DiffChange
    DiffDelete { bg = "#79313c", fg = "#f43753", }, -- DiffDelete     xxx ctermfg=203 ctermbg=237 guifg=#f43753 guibg=#79313c
    TelescopeResultsDiffDelete { DiffDelete }, -- TelescopeResultsDiffDelete xxx links to DiffDelete
    GitSignsDeleteVirtLn { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
    DiffText { gui = "reverse", }, -- DiffText       xxx cterm=reverse gui=reverse
    SignColumn { bg = "#282828", fg = "#999999", }, -- SignColumn     xxx ctermfg=246 ctermbg=235 guifg=#999999 guibg=#282828
    CursorLineSign { SignColumn }, -- CursorLineSign xxx links to SignColumn
    Conceal { bg = "darkgrey", fg = "lightgrey", }, -- Conceal        xxx ctermfg=7 ctermbg=242 guifg=LightGrey guibg=DarkGrey
    SpellBad { sp = "red", fg = "#f43753", }, -- SpellBad       xxx ctermfg=203 guifg=#f43753 guisp=Red
    SpellCap { sp = "blue", fg = "#ffc24b", }, -- SpellCap       xxx ctermfg=215 guifg=#ffc24b guisp=Blue
    SpellRare { sp = "magenta", fg = "#73cef4", }, -- SpellRare      xxx ctermfg=81 guifg=#73cef4 guisp=Magenta
    SpellLocal { sp = "cyan", fg = "#d3b987", }, -- SpellLocal     xxx ctermfg=180 guifg=#d3b987 guisp=Cyan
    Pmenu { bg = "#335261", fg = "#dadada", }, -- Pmenu          xxx ctermfg=253 ctermbg=239 guifg=#dadada guibg=#335261
    NormalFloat { Pmenu }, -- NormalFloat    xxx links to Pmenu
    PmenuSel { bg = "#c9d05c", fg = "#335261", }, -- PmenuSel       xxx ctermfg=239 ctermbg=185 guifg=#335261 guibg=#c9d05c
    PmenuSbar { bg = "#335261", fg = "#335261", }, -- PmenuSbar      xxx ctermfg=239 ctermbg=239 guifg=#335261 guibg=#335261
    PmenuThumb { bg = "#c9d05c", fg = "#c9d05c", }, -- PmenuThumb     xxx ctermfg=185 ctermbg=185 guifg=#c9d05c guibg=#c9d05c
    TabLine { bg = "#444444", fg = "#999999", }, -- TabLine        xxx ctermfg=246 ctermbg=238 guifg=#999999 guibg=#444444
    TabLineSel { gui = "bold", fg = "#c9d05c", }, -- TabLineSel     xxx cterm=bold ctermfg=185 gui=bold guifg=#c9d05c
    TabLineFill { bg = "#444444", }, -- TabLineFill    xxx ctermbg=238 guibg=#444444
    CursorColumn { bg = "#323232", }, -- CursorColumn   xxx ctermbg=236 guibg=#323232
    NvimTreeCursorColumn { CursorColumn }, -- NvimTreeCursorColumn xxx links to CursorColumn
    CursorLine { bg = "#323232", }, -- CursorLine     xxx ctermbg=236 guibg=#323232
    NvimTreeCursorLine { CursorLine }, -- NvimTreeCursorLine xxx links to CursorLine
    ColorColumn { bg = "#323232", }, -- ColorColumn    xxx ctermbg=236 guibg=#323232
    Cursor { bg = "fg", fg = "bg", }, -- Cursor         xxx guifg=bg guibg=fg
    RedrawDebugNormal { gui = "reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
    RedrawDebugClear { bg = "yellow", }, -- RedrawDebugClear xxx ctermbg=11 guibg=Yellow
    RedrawDebugComposed { bg = "green", }, -- RedrawDebugComposed xxx ctermbg=10 guibg=Green
    RedrawDebugRecompose { bg = "red", }, -- RedrawDebugRecompose xxx ctermbg=9 guibg=Red
    lCursor { bg = "fg", fg = "bg", }, -- lCursor        xxx guifg=bg guibg=fg
    Normal { bg = "#282828", fg = "#d4ccbd", }, -- Normal         xxx ctermfg=255 ctermbg=235 guifg=#eeeeee guibg=#282828
    NvimSpacing { Normal }, -- NvimSpacing    xxx links to Normal
    NotifyERRORBody { Normal }, -- NotifyERRORBody xxx links to Normal
    NotifyWARNBody { Normal }, -- NotifyWARNBody xxx links to Normal
    NotifyINFOBody { Normal }, -- NotifyINFOBody xxx links to Normal
    NotifyDEBUGBody { Normal }, -- NotifyDEBUGBody xxx links to Normal
    NotifyTRACEBody { Normal }, -- NotifyTRACEBody xxx links to Normal
    NvimTreePopup { Normal }, -- NvimTreePopup  xxx links to Normal
    NvimTreeNormal { Normal }, -- NvimTreeNormal xxx links to Normal
    TelescopeNormal { Normal }, -- TelescopeNormal xxx links to Normal
    TelescopeResultsFileIcon { Normal }, -- TelescopeResultsFileIcon xxx links to Normal
    FloatShadow { bg = "black", blend = 80, }, -- FloatShadow    xxx guibg=Black blend=80
    FloatShadowThrough { bg = "black", blend = 100, }, -- FloatShadowThrough xxx guibg=Black blend=100
    Error { bg = "#f43753", fg = "#eeeeee", }, -- Error          xxx ctermfg=255 ctermbg=203 guifg=#eeeeee guibg=#f43753
    NvimInvalid { Error }, -- NvimInvalid    xxx links to Error
    luaParenError { Error }, -- luaParenError  xxx links to Error
    luaBraceError { Error }, -- luaBraceError  xxx links to Error
    luaError { Error }, -- luaError       xxx links to Error
    Todo { gui = "bold", fg = "#f43753", }, -- Todo           xxx cterm=bold ctermfg=203 gui=bold guifg=#f43753
    TSWarning { Todo }, -- TSWarning      xxx links to Todo
    TSTodo { Todo }, -- TSTodo         xxx links to Todo
    luaTodo { Todo }, -- luaTodo        xxx links to Todo
    String { fg = "#d3b987", }, -- String         xxx ctermfg=180 guifg=#d3b987
    NvimString { String }, -- NvimString     xxx links to String
    TSLiteral { String }, -- TSLiteral      xxx links to String
    TSStringRegex { String }, -- TSStringRegex  xxx links to String
    TSString { String }, -- TSString       xxx links to String
    TelescopePreviewExecute { String }, -- TelescopePreviewExecute xxx links to String
    TelescopePreviewSize { String }, -- TelescopePreviewSize xxx links to String
    luaString2 { String }, -- luaString2     xxx links to String
    luaString { String }, -- luaString      xxx links to String
    Constant { fg = "#ffc24b", }, -- Constant       xxx ctermfg=215 guifg=#ffc24b
    TSConstant { Constant }, -- TSConstant     xxx links to Constant
    TSTextReference { Constant }, -- TSTextReference xxx links to Constant
    TelescopePreviewGroup { Constant }, -- TelescopePreviewGroup xxx links to Constant
    TelescopePreviewBlock { Constant }, -- TelescopePreviewBlock xxx links to Constant
    TelescopePreviewPipe { Constant }, -- TelescopePreviewPipe xxx links to Constant
    TelescopeResultsConstant { Constant }, -- TelescopeResultsConstant xxx links to Constant
    TelescopePreviewUser { Constant }, -- TelescopePreviewUser xxx links to Constant
    TelescopePreviewRead { Constant }, -- TelescopePreviewRead xxx links to Constant
    TelescopePreviewCharDev { Constant }, -- TelescopePreviewCharDev xxx links to Constant
    luaConstant { Constant }, -- luaConstant    xxx links to Constant
    Character { fg = "#ffc24b", }, -- Character      xxx ctermfg=215 guifg=#ffc24b
    TSCharacter { Character }, -- TSCharacter    xxx links to Character
    Number { fg = "#ffc24b", }, -- Number         xxx ctermfg=215 guifg=#ffc24b
    NvimNumber { Number }, -- NvimNumber     xxx links to Number
    TSNumber { Number }, -- TSNumber       xxx links to Number
    TelescopeResultsNumber { Number }, -- TelescopeResultsNumber xxx links to Number
    luaNumber { Number }, -- luaNumber      xxx links to Number
    Boolean { fg = "#ffc24b", }, -- Boolean        xxx ctermfg=215 guifg=#ffc24b
    TSBoolean { Boolean }, -- TSBoolean      xxx links to Boolean
    Float { fg = "#ffc24b", }, -- Float          xxx ctermfg=215 guifg=#ffc24b
    TSFloat { Float }, -- TSFloat        xxx links to Float
    Function { fg = "#b3deef", }, -- Function       xxx ctermfg=153 guifg=#b3deef
    TSFunction { Function }, -- TSFunction     xxx links to Function
    TSMethod { Function }, -- TSMethod       xxx links to Function
    TelescopeResultsField { Function }, -- TelescopeResultsField xxx links to Function
    TelescopeResultsFunction { Function }, -- TelescopeResultsFunction xxx links to Function
    TelescopeResultsClass { Function }, -- TelescopeResultsClass xxx links to Function
    WhichKey { Function }, -- WhichKey       xxx links to Function
    luaFunction { Function }, -- luaFunction    xxx links to Function
    Identifier { fg = "#b3deef", }, -- Identifier     xxx ctermfg=153 guifg=#b3deef
    NvimIdentifier { Identifier }, -- NvimIdentifier xxx links to Identifier
    TSField { Identifier }, -- TSField        xxx links to Identifier
    TSProperty { Identifier }, -- TSProperty     xxx links to Identifier
    TSParameter { Identifier }, -- TSParameter    xxx links to Identifier
    TSSymbol { Identifier }, -- TSSymbol       xxx links to Identifier
    TelescopePromptPrefix { Identifier }, -- TelescopePromptPrefix xxx links to Identifier
    TelescopeResultsIdentifier { Identifier }, -- TelescopeResultsIdentifier xxx links to Identifier
    TelescopeMultiIcon { Identifier }, -- TelescopeMultiIcon xxx links to Identifier
    WhichKeyDesc { Identifier }, -- WhichKeyDesc   xxx links to Identifier
    luaFunc { Identifier }, -- luaFunc        xxx links to Identifier
    -- Conditional { fg = "#539c86", }, -- Conditional    xxx ctermfg=185 guifg=#c9d05c
    -- Conditional { fg = "#8fa256" }, -- Conditional    xxx ctermfg=185 guifg=#c9d05c
    -- Conditional { fg = "#dfade2" }, -- Conditional    xxx ctermfg=185 guifg=#c9d05c
    Conditional { fg = "#b18b76", }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    TSConditional { Conditional }, -- TSConditional  xxx links to Conditional
    luaElse { Conditional }, -- luaElse        xxx links to Conditional
    luaCond { Conditional }, -- luaCond        xxx links to Conditional
    -- Statement { fg = "#73cef4", }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    -- Statement { fg = "#4b969a", }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    -- Statement { fg = "#a5835b", }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    -- Statement { fg = "#c9d05c", }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    Statement { Conditional }, -- Statement      xxx ctermfg=153 guifg=#b3deef
    Repeat { Statement }, -- Repeat         xxx links to Statement
    Label { Statement }, -- Label          xxx links to Statement
    Keyword { Statement }, -- Keyword        xxx links to Statement
    TelescopePreviewWrite { Statement }, -- TelescopePreviewWrite xxx links to Statement
    TelescopePreviewSocket { Statement }, -- TelescopePreviewSocket xxx links to Statement
    luaStatement { Statement }, -- luaStatement   xxx links to Statement
    Operator { fg = "#c9d05c", }, -- Operator       xxx ctermfg=203 guifg=#f43753
    NvimAssignment { Operator }, -- NvimAssignment xxx links to Operator
    NvimOperator { Operator }, -- NvimOperator   xxx links to Operator
    TSOperator { Operator }, -- TSOperator     xxx links to Operator
    TelescopeResultsOperator { Operator }, -- TelescopeResultsOperator xxx links to Operator
    luaIn { Operator }, -- luaIn          xxx links to Operator
    luaOperator { Operator }, -- luaOperator    xxx links to Operator
    Exception { fg = "#f43753", }, -- Exception      xxx ctermfg=203 guifg=#f43753
    TSException { Exception }, -- TSException    xxx links to Exception
    PreProc { fg = "#c9d05c", }, -- PreProc        xxx ctermfg=185 guifg=#c9d05c
    -- PreProc { fg = "#8fa256", }, -- PreProc        xxx ctermfg=185 guifg=#c9d05c
    Include { fg = "#b3deef" }, -- Include        xxx links to PreProc
    Define { PreProc }, -- Define         xxx links to PreProc
    Macro { PreProc }, -- Macro          xxx links to PreProc
    PreCondit { PreProc }, -- PreCondit      xxx links to PreProc
    TSPreProc { PreProc }, -- TSPreProc      xxx links to PreProc
    TSAttribute { PreProc }, -- TSAttribute    xxx links to PreProc
    TSAnnotation { PreProc }, -- TSAnnotation   xxx links to PreProc
    -- Type { fg = "#539c86", }, -- Type           xxx ctermfg=81 guifg=#73cef4
    Type { fg = "#c9d05c", }, -- Type           xxx ctermfg=81 guifg=#73cef4
    StorageClass { Type }, -- StorageClass   xxx links to Type
    Structure { Type }, -- Structure      xxx links to Type
    Typedef { Type }, -- Typedef        xxx links to Type
    --
    -- Palette
    -- marrone scurino -> #988750
    --
    NvimNumberPrefix { Type }, -- NvimNumberPrefix xxx links to Type
    NvimOptionSigil { Type }, -- NvimOptionSigil xxx links to Type
    TSEnvironmentName { Type }, -- TSEnvironmentName xxx links to Type
    TSTypeQualifier { Type }, -- TSTypeQualifier xxx links to Type
    TSTypeBuiltin { Type }, -- TSTypeBuiltin  xxx links to Type
    TSType { Type }, -- TSType         xxx links to Type
    TelescopeMultiSelection { Type }, -- TelescopeMultiSelection xxx links to Type
    Special { fg = "#4b969a", }, -- Special        xxx ctermfg=81 guifg=#73cef4
    Tag { Special }, -- Tag            xxx links to Special
    SpecialChar { Special }, -- SpecialChar    xxx links to Special
    Delimiter { Special }, -- Delimiter      xxx links to Special
    SpecialComment { Special }, -- SpecialComment xxx links to Special
    Debug { Special }, -- Debug          xxx links to Special
    NotifyLogTitle { Special }, -- NotifyLogTitle xxx links to Special
    TSVariableBuiltin { Special }, -- TSVariableBuiltin xxx links to Special
    TSMath { Special }, -- TSMath         xxx links to Special
    TSConstructor { fg = "#c9d05c" }, -- TSConstructor  xxx links to Special
    TSFuncBuiltin { Special }, -- TSFuncBuiltin  xxx links to Special
    TSConstBuiltin { Special }, -- TSConstBuiltin xxx links to Special
    TelescopePreviewLink { Special }, -- TelescopePreviewLink xxx links to Special
    TelescopeMatching { Special }, -- TelescopeMatching xxx links to Special
    DiagnosticError { fg = "red", }, -- DiagnosticError xxx ctermfg=1 guifg=Red
    DiagnosticVirtualTextError { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
    DiagnosticFloatingError { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
    DiagnosticSignError { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
    NvimTreeLspDiagnosticsError { DiagnosticError }, -- NvimTreeLspDiagnosticsError xxx links to DiagnosticError
    DiagnosticWarn { fg = "orange", }, -- DiagnosticWarn xxx ctermfg=3 guifg=Orange
    DiagnosticVirtualTextWarn { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
    DiagnosticFloatingWarn { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
    DiagnosticSignWarn { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
    NvimTreeLspDiagnosticsWarning { DiagnosticWarn }, -- NvimTreeLspDiagnosticsWarning xxx links to DiagnosticWarn
    DiagnosticInfo { fg = "lightblue", }, -- DiagnosticInfo xxx ctermfg=4 guifg=LightBlue
    DiagnosticVirtualTextInfo { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
    DiagnosticFloatingInfo { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
    DiagnosticSignInfo { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
    NvimTreeLspDiagnosticsInformation { DiagnosticInfo }, -- NvimTreeLspDiagnosticsInformation xxx links to DiagnosticInfo
    DiagnosticHint { fg = "lightgrey", }, -- DiagnosticHint xxx ctermfg=7 guifg=LightGrey
    DiagnosticVirtualTextHint { DiagnosticHint }, -- DiagnosticVirtualTextHint xxx links to DiagnosticHint
    DiagnosticFloatingHint { DiagnosticHint }, -- DiagnosticFloatingHint xxx links to DiagnosticHint
    DiagnosticSignHint { DiagnosticHint }, -- DiagnosticSignHint xxx links to DiagnosticHint
    NvimTreeLspDiagnosticsHint { DiagnosticHint }, -- NvimTreeLspDiagnosticsHint xxx links to DiagnosticHint
    DiagnosticUnderlineError { gui = "underline", sp = "red", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
    DiagnosticUnderlineWarn { gui = "underline", sp = "orange", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
    DiagnosticUnderlineInfo { gui = "underline", sp = "lightblue", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
    DiagnosticUnderlineHint { gui = "underline", sp = "lightgrey", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
    MatchParen { gui = "bold", fg = "#f43753", }, -- MatchParen     xxx cterm=bold ctermfg=203 gui=bold guifg=#f43753
    Comment { fg = "#666666", }, -- Comment        xxx ctermfg=242 guifg=#666666
    NotifyLogTime { Comment }, -- NotifyLogTime  xxx links to Comment
    NvimTreeGitIgnored { Comment }, -- NvimTreeGitIgnored xxx links to Comment
    TSComment { Comment }, -- TSComment      xxx links to Comment
    TelescopeResultsComment { Comment }, -- TelescopeResultsComment xxx links to Comment
    WhichKeyValue { Comment }, -- WhichKeyValue  xxx links to Comment
    luaComment { Comment }, -- luaComment     xxx links to Comment
    Underlined { gui = "underline", }, -- Underlined     xxx cterm=underline gui=underline
    TSURI { Underlined }, -- TSURI          xxx links to Underlined
    Ignore { fg = "bg", }, -- Ignore         xxx ctermfg=0 guifg=bg
    NvimInternalError { bg = "red", fg = "red", }, -- NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
    NvimFigureBrace { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
    NvimSingleQuotedUnknownEscape { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
    NvimInvalidSingleQuotedUnknownEscape { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
    VisualNOS { gui = "bold", bg = "#293b44", }, -- VisualNOS      xxx cterm=bold ctermbg=237 gui=bold guibg=#293b44
    CocErrorSign { fg = "#f43753", }, -- CocErrorSign   xxx ctermfg=203 guifg=#f43753
    CocWarningSign { fg = "#d3b987", }, -- CocWarningSign xxx ctermfg=180 guifg=#d3b987
    CocHintSign { fg = "#73cef4", }, -- CocHintSign    xxx ctermfg=81 guifg=#73cef4
    CocInfoSign { fg = "#ffc24b", }, -- CocInfoSign    xxx ctermfg=215 guifg=#ffc24b
    cssVendor { fg = "#9faa00", }, -- cssVendor      xxx ctermfg=142 guifg=#9faa00
    cssTagName { fg = "#9faa00", }, -- cssTagName     xxx ctermfg=142 guifg=#9faa00
    cssAttrComma { fg = "#eeeeee", }, -- cssAttrComma   xxx ctermfg=255 guifg=#eeeeee
    cssBackgroundProp { fg = "#b3deef", }, -- cssBackgroundProp xxx ctermfg=153 guifg=#b3deef
    cssBorderProp { fg = "#b3deef", }, -- cssBorderProp  xxx ctermfg=153 guifg=#b3deef
    cssBoxProp { fg = "#73cef4", }, -- cssBoxProp     xxx ctermfg=81 guifg=#73cef4
    cssDimensionProp { fg = "#73cef4", }, -- cssDimensionProp xxx ctermfg=81 guifg=#73cef4
    cssFontProp { fg = "#b3deef", }, -- cssFontProp    xxx ctermfg=153 guifg=#b3deef
    cssPositioningProp { fg = "#73cef4", }, -- cssPositioningProp xxx ctermfg=81 guifg=#73cef4
    cssTextProp { fg = "#b3deef", }, -- cssTextProp    xxx ctermfg=153 guifg=#b3deef
    cssValueLength { fg = "#eeeeee", }, -- cssValueLength xxx ctermfg=255 guifg=#eeeeee
    cssValueInteger { fg = "#eeeeee", }, -- cssValueInteger xxx ctermfg=255 guifg=#eeeeee
    cssValueNumber { fg = "#eeeeee", }, -- cssValueNumber xxx ctermfg=255 guifg=#eeeeee
    cssIdentifier { fg = "#9faa00", }, -- cssIdentifier  xxx ctermfg=142 guifg=#9faa00
    cssIncludeKeyword { fg = "#ffc24b", }, -- cssIncludeKeyword xxx ctermfg=215 guifg=#ffc24b
    cssImportant { fg = "#f43753", }, -- cssImportant   xxx ctermfg=203 guifg=#f43753
    cssClassName { fg = "#c9d05c", }, -- cssClassName   xxx ctermfg=185 guifg=#c9d05c
    cssClassNameDot { fg = "#eeeeee", }, -- cssClassNameDot xxx ctermfg=255 guifg=#eeeeee
    cssProp { fg = "#b3deef", }, -- cssProp        xxx ctermfg=153 guifg=#b3deef
    cssAttr { fg = "#eeeeee", }, -- cssAttr        xxx ctermfg=255 guifg=#eeeeee
    cssUnitDecorators { fg = "#eeeeee", }, -- cssUnitDecorators xxx ctermfg=255 guifg=#eeeeee
    cssNoise { fg = "#f43753", }, -- cssNoise       xxx ctermfg=203 guifg=#f43753
    diffRemoved { fg = "#f43753", }, -- diffRemoved    xxx ctermfg=203 guifg=#f43753
    diffChanged { fg = "#b3deef", }, -- diffChanged    xxx ctermfg=153 guifg=#b3deef
    diffAdded { fg = "#c9d05c", }, -- diffAdded      xxx ctermfg=185 guifg=#c9d05c
    diffSubname { fg = "#9faa00", }, -- diffSubname    xxx ctermfg=142 guifg=#9faa00
    elmDelimiter { fg = "#eeeeee", }, -- elmDelimiter   xxx ctermfg=255 guifg=#eeeeee
    elmOperator { fg = "#f43753", }, -- elmOperator    xxx ctermfg=203 guifg=#f43753
    FugitiveblameHash { fg = "#b3deef", }, -- FugitiveblameHash xxx ctermfg=153 guifg=#b3deef
    FugitiveblameUncommitted { fg = "#f43753", }, -- FugitiveblameUncommitted xxx ctermfg=203 guifg=#f43753
    FugitiveblameTime { fg = "#c9d05c", }, -- FugitiveblameTime xxx ctermfg=185 guifg=#c9d05c
    FugitiveblameNotCommittedYet { fg = "#ffc24b", }, -- FugitiveblameNotCommittedYet xxx ctermfg=215 guifg=#ffc24b
    gitcommitBranch { fg = "#73cef4", }, -- gitcommitBranch xxx ctermfg=81 guifg=#73cef4
    gitcommitDiscardedType { fg = "#c5152f", }, -- gitcommitDiscardedType xxx ctermfg=160 guifg=#c5152f
    gitcommitSelectedType { fg = "#9faa00", }, -- gitcommitSelectedType xxx ctermfg=142 guifg=#9faa00
    gitcommitHeader { fg = "#b3deef", }, -- gitcommitHeader xxx ctermfg=153 guifg=#b3deef
    gitcommitUntrackedFile { fg = "#ffc24b", }, -- gitcommitUntrackedFile xxx ctermfg=215 guifg=#ffc24b
    gitcommitDiscardedFile { fg = "#f43753", }, -- gitcommitDiscardedFile xxx ctermfg=203 guifg=#f43753
    gitcommitSelectedFile { fg = "#c9d05c", }, -- gitcommitSelectedFile xxx ctermfg=185 guifg=#c9d05c
    helpHyperTextEntry { fg = "#c9d05c", }, -- helpHyperTextEntry xxx ctermfg=185 guifg=#c9d05c
    helpHeadline { fg = "#73cef4", }, -- helpHeadline   xxx ctermfg=81 guifg=#73cef4
    helpSectionDelim { fg = "#666666", }, -- helpSectionDelim xxx ctermfg=242 guifg=#666666
    helpNote { fg = "#f43753", }, -- helpNote       xxx ctermfg=203 guifg=#f43753
    javaScriptOperator { fg = "#c9d05c", }, -- javaScriptOperator xxx ctermfg=185 guifg=#c9d05c
    javaScriptBraces { fg = "#b3deef", }, -- javaScriptBraces xxx ctermfg=153 guifg=#b3deef
    javaScriptNull { fg = "#ffc24b", }, -- javaScriptNull xxx ctermfg=215 guifg=#ffc24b
    jsonEscape { fg = "#73cef4", }, -- jsonEscape     xxx ctermfg=81 guifg=#73cef4
    jsonNumber { fg = "#ffc24b", }, -- jsonNumber     xxx ctermfg=215 guifg=#ffc24b
    jsonBraces { fg = "#eeeeee", }, -- jsonBraces     xxx ctermfg=255 guifg=#eeeeee
    jsonNull { fg = "#ffc24b", }, -- jsonNull       xxx ctermfg=215 guifg=#ffc24b
    jsonBoolean { fg = "#ffc24b", }, -- jsonBoolean    xxx ctermfg=215 guifg=#ffc24b
    jsonKeywordMatch { fg = "#f43753", }, -- jsonKeywordMatch xxx ctermfg=203 guifg=#f43753
    jsonQuote { fg = "#eeeeee", }, -- jsonQuote      xxx ctermfg=255 guifg=#eeeeee
    jsonNoise { fg = "#f43753", }, -- jsonNoise      xxx ctermfg=203 guifg=#f43753
    markdownH1 { gui = "bold", fg = "#b3deef", }, -- markdownH1     xxx cterm=bold ctermfg=153 gui=bold guifg=#b3deef
    markdownHeadingRule { gui = "bold", fg = "#f43753", }, -- markdownHeadingRule xxx cterm=bold ctermfg=203 gui=bold guifg=#f43753
    markdownHeadingDelimiter { gui = "bold", fg = "#f43753", }, -- markdownHeadingDelimiter xxx cterm=bold ctermfg=203 gui=bold guifg=#f43753
    markdownListMarker { fg = "#ffc24b", }, -- markdownListMarker xxx ctermfg=215 guifg=#ffc24b
    markdownBlockquote { fg = "#ffc24b", }, -- markdownBlockquote xxx ctermfg=215 guifg=#ffc24b
    markdownRule { fg = "#c9d05c", }, -- markdownRule   xxx ctermfg=185 guifg=#c9d05c
    markdownLinkText { fg = "#c9d05c", }, -- markdownLinkText xxx ctermfg=185 guifg=#c9d05c
    markdownLinkTextDelimiter { fg = "#b3deef", }, -- markdownLinkTextDelimiter xxx ctermfg=153 guifg=#b3deef
    markdownLinkDelimiter { fg = "#b3deef", }, -- markdownLinkDelimiter xxx ctermfg=153 guifg=#b3deef
    markdownIdDeclaration { fg = "#9faa00", }, -- markdownIdDeclaration xxx ctermfg=142 guifg=#9faa00
    markdownAutomaticLink { fg = "#73cef4", }, -- markdownAutomaticLink xxx ctermfg=81 guifg=#73cef4
    markdownUrl { fg = "#73cef4", }, -- markdownUrl    xxx ctermfg=81 guifg=#73cef4
    markdownUrlTitle { fg = "#d3b987", }, -- markdownUrlTitle xxx ctermfg=180 guifg=#d3b987
    markdownUrlDelimiter { fg = "#ffc24b", }, -- markdownUrlDelimiter xxx ctermfg=215 guifg=#ffc24b
    markdownUrlTitleDelimiter { fg = "#715b2f", }, -- markdownUrlTitleDelimiter xxx ctermfg=58 guifg=#715b2f
    markdownCodeDelimiter { fg = "#73cef4", }, -- markdownCodeDelimiter xxx ctermfg=81 guifg=#73cef4
    markdownCode { fg = "#d3b987", }, -- markdownCode   xxx ctermfg=180 guifg=#d3b987
    markdownEscape { fg = "#73cef4", }, -- markdownEscape xxx ctermfg=81 guifg=#73cef4
    markdownError { fg = "#f43753", }, -- markdownError  xxx ctermfg=203 guifg=#f43753
    NERDTreeHelp { fg = "#eeeeee", }, -- NERDTreeHelp   xxx ctermfg=255 guifg=#eeeeee
    NERDTreeHelpKey { fg = "#c9d05c", }, -- NERDTreeHelpKey xxx ctermfg=185 guifg=#c9d05c
    NERDTreeHelpCommand { fg = "#ffc24b", }, -- NERDTreeHelpCommand xxx ctermfg=215 guifg=#ffc24b
    NERDTreeHelpTitle { fg = "#b3deef", }, -- NERDTreeHelpTitle xxx ctermfg=153 guifg=#b3deef
    NERDTreeUp { fg = "#c9d05c", }, -- NERDTreeUp     xxx ctermfg=185 guifg=#c9d05c
    NERDTreeCWD { fg = "#73cef4", }, -- NERDTreeCWD    xxx ctermfg=81 guifg=#73cef4
    NERDTreeOpenable { fg = "#f43753", }, -- NERDTreeOpenable xxx ctermfg=203 guifg=#f43753
    NERDTreeClosable { fg = "#ffc24b", }, -- NERDTreeClosable xxx ctermfg=215 guifg=#ffc24b
    pugJavascriptOutputChar { fg = "#ffc24b", }, -- pugJavascriptOutputChar xxx ctermfg=215 guifg=#ffc24b
    typescriptParens { fg = "#b3deef", }, -- typescriptParens xxx ctermfg=153 guifg=#b3deef
    typescriptLogicSymbols { fg = "#f43753", }, -- typescriptLogicSymbols xxx ctermfg=203 guifg=#f43753
    typescriptReserved { fg = "#73cef4", }, -- typescriptReserved xxx ctermfg=81 guifg=#73cef4
    typescriptLabel { fg = "#c9d05c", }, -- typescriptLabel xxx ctermfg=185 guifg=#c9d05c
    typescriptFuncName { fg = "#c9d05c", }, -- typescriptFuncName xxx ctermfg=185 guifg=#c9d05c
    typescriptCall { fg = "#ffc24b", }, -- typescriptCall xxx ctermfg=215 guifg=#ffc24b
    typescriptVariable { fg = "#73cef4", }, -- typescriptVariable xxx ctermfg=81 guifg=#73cef4
    typescriptBinaryOp { fg = "#f43753", }, -- typescriptBinaryOp xxx ctermfg=203 guifg=#f43753
    typescriptAssign { fg = "#f43753", }, -- typescriptAssign xxx ctermfg=203 guifg=#f43753
    typescriptObjectLabel { fg = "#b3deef", }, -- typescriptObjectLabel xxx ctermfg=153 guifg=#b3deef
    typescriptDotNotation { fg = "#f43753", }, -- typescriptDotNotation xxx ctermfg=203 guifg=#f43753
    typescriptOperator { fg = "#f43753", }, -- typescriptOperator xxx ctermfg=203 guifg=#f43753
    typescriptTernaryOp { fg = "#f43753", }, -- typescriptTernaryOp xxx ctermfg=203 guifg=#f43753
    typescriptTypeAnnotation { fg = "#f43753", }, -- typescriptTypeAnnotation xxx ctermfg=203 guifg=#f43753
    typescriptIdentifierName { fg = "#eeeeee", }, -- typescriptIdentifierName xxx ctermfg=255 guifg=#eeeeee
    typescriptArrowFuncArg { fg = "#ffc24b", }, -- typescriptArrowFuncArg xxx ctermfg=215 guifg=#ffc24b
    typescriptParamImpl { fg = "#ffc24b", }, -- typescriptParamImpl xxx ctermfg=215 guifg=#ffc24b
    typescriptRepeat { fg = "#c9d05c", }, -- typescriptRepeat xxx ctermfg=185 guifg=#c9d05c
    typescriptStatementKeyword { fg = "#73cef4", }, -- typescriptStatementKeyword xxx ctermfg=81 guifg=#73cef4
    typescriptAliasKeyword { fg = "#c9d05c", }, -- typescriptAliasKeyword xxx ctermfg=185 guifg=#c9d05c
    typescriptInterfaceKeyword { fg = "#c9d05c", }, -- typescriptInterfaceKeyword xxx ctermfg=185 guifg=#c9d05c
    typescriptTemplateSB { fg = "#f43753", }, -- typescriptTemplateSB xxx ctermfg=203 guifg=#f43753
    typescriptMemberOptionality { fg = "#ffc24b", }, -- typescriptMemberOptionality xxx ctermfg=215 guifg=#ffc24b
    typescriptOptionalMark { fg = "#ffc24b", }, -- typescriptOptionalMark xxx ctermfg=215 guifg=#ffc24b
    typescriptUnaryOp { fg = "#f43753", }, -- typescriptUnaryOp xxx ctermfg=203 guifg=#f43753
    GitGutterAdd { fg = "#c9d05c", }, -- GitGutterAdd   xxx ctermfg=185 guifg=#c9d05c
    SignifySignAdd { GitGutterAdd }, -- SignifySignAdd xxx links to GitGutterAdd
    GitSignsAdd { GitGutterAdd }, -- GitSignsAdd    xxx links to GitGutterAdd
    GitGutterChange { fg = "#b3deef", }, -- GitGutterChange xxx ctermfg=153 guifg=#b3deef
    SignifySignChange { GitGutterChange }, -- SignifySignChange xxx links to GitGutterChange
    GitSignsChange { GitGutterChange }, -- GitSignsChange xxx links to GitGutterChange
    GitGutterDelete { fg = "#f43753", }, -- GitGutterDelete xxx ctermfg=203 guifg=#f43753
    SignifySignDelete { GitGutterDelete }, -- SignifySignDelete xxx links to GitGutterDelete
    GitSignsDelete { GitGutterDelete }, -- GitSignsDelete xxx links to GitGutterDelete
    GitGutterChangeDelete { fg = "#f43753", }, -- GitGutterChangeDelete xxx ctermfg=203 guifg=#f43753
    SignifySignChangeDelete { GitGutterChangeDelete }, -- SignifySignChangeDelete xxx links to GitGutterChangeDelete
    javaScriptOpSymbols { fg = "#f43753", }, -- javaScriptOpSymbols xxx ctermfg=203 guifg=#f43753
    javaScriptParens { fg = "#b3deef", }, -- javaScriptParens xxx ctermfg=153 guifg=#b3deef
    javaScriptDocTags { fg = "#6a6b3f", }, -- javaScriptDocTags xxx ctermfg=242 guifg=#6a6b3f
    javaScriptDocSeeTag { fg = "#44778d", }, -- javaScriptDocSeeTag xxx ctermfg=66 guifg=#44778d
    javaScriptBrowserObjects { fg = "#73cef4", }, -- javaScriptBrowserObjects xxx ctermfg=81 guifg=#73cef4
    javaScriptDOMObjects { fg = "#73cef4", }, -- javaScriptDOMObjects xxx ctermfg=81 guifg=#73cef4
    javaScriptFuncArg { fg = "#ffc24b", }, -- javaScriptFuncArg xxx ctermfg=215 guifg=#ffc24b
    jsParensIfElse { fg = "#b3deef", }, -- jsParensIfElse xxx ctermfg=153 guifg=#b3deef
    jsObjectKey { fg = "#b3deef", }, -- jsObjectKey    xxx ctermfg=153 guifg=#b3deef
    jsRepeat { fg = "#c9d05c", }, -- jsRepeat       xxx ctermfg=185 guifg=#c9d05c
    jsArrowFunction { fg = "#9faa00", }, -- jsArrowFunction xxx ctermfg=142 guifg=#9faa00
    jsFunctionKey { fg = "#c9d05c", }, -- jsFunctionKey  xxx ctermfg=185 guifg=#c9d05c
    jsFuncName { fg = "#c9d05c", }, -- jsFuncName     xxx ctermfg=185 guifg=#c9d05c
    jsObjectFuncName { fg = "#c9d05c", }, -- jsObjectFuncName xxx ctermfg=185 guifg=#c9d05c
    jsNull { fg = "#ffc24b", }, -- jsNull         xxx ctermfg=215 guifg=#ffc24b
    jsObjectColon { fg = "#f43753", }, -- jsObjectColon  xxx ctermfg=203 guifg=#f43753
    jsParens { fg = "#b3deef", }, -- jsParens       xxx ctermfg=153 guifg=#b3deef
    jsFuncParens { fg = "#b3deef", }, -- jsFuncParens   xxx ctermfg=153 guifg=#b3deef
    jsFuncArgs { fg = "#ffc24b", }, -- jsFuncArgs     xxx ctermfg=215 guifg=#ffc24b
    jsSpecial { fg = "#ffc24b", }, -- jsSpecial      xxx ctermfg=215 guifg=#ffc24b
    jsTemplateBraces { fg = "#f43753", }, -- jsTemplateBraces xxx ctermfg=203 guifg=#f43753
    jsGlobalObjects { fg = "#73cef4", }, -- jsGlobalObjects xxx ctermfg=81 guifg=#73cef4
    jsGlobalNodeObjects { fg = "#b3deef", }, -- jsGlobalNodeObjects xxx ctermfg=153 guifg=#b3deef
    jsImport { fg = "#73cef4", }, -- jsImport       xxx ctermfg=81 guifg=#73cef4
    jsExport { fg = "#73cef4", }, -- jsExport       xxx ctermfg=81 guifg=#73cef4
    jsExportDefault { fg = "#c9d05c", }, -- jsExportDefault xxx ctermfg=185 guifg=#c9d05c
    jsExportDefaultGroup { fg = "#73cef4", }, -- jsExportDefaultGroup xxx ctermfg=81 guifg=#73cef4
    jsFrom { fg = "#73cef4", }, -- jsFrom         xxx ctermfg=81 guifg=#73cef4
    plug2 { fg = "#c9d05c", }, -- plug2          xxx ctermfg=185 guifg=#c9d05c
    plugH2 { gui = "bold", fg = "#73cef4", }, -- plugH2         xxx cterm=bold ctermfg=81 gui=bold guifg=#73cef4
    plugBracket { fg = "#b3deef", }, -- plugBracket    xxx ctermfg=153 guifg=#b3deef
    plugNumber { fg = "#ffc24b", }, -- plugNumber     xxx ctermfg=215 guifg=#ffc24b
    plugDash { fg = "#ffc24b", }, -- plugDash       xxx ctermfg=215 guifg=#ffc24b
    plugStar { fg = "#d3b987", }, -- plugStar       xxx ctermfg=180 guifg=#d3b987
    plugMessage { fg = "#ffc24b", }, -- plugMessage    xxx ctermfg=215 guifg=#ffc24b
    plugName { fg = "#b3deef", }, -- plugName       xxx ctermfg=153 guifg=#b3deef
    plugUpdate { fg = "#f43753", }, -- plugUpdate     xxx ctermfg=203 guifg=#f43753
    plugEdge { fg = "#c9d05c", }, -- plugEdge       xxx ctermfg=185 guifg=#c9d05c
    plugSha { fg = "#d3b987", }, -- plugSha        xxx ctermfg=180 guifg=#d3b987
    plugNotLoaded { fg = "#79313c", }, -- plugNotLoaded  xxx ctermfg=237 guifg=#79313c
    stylusVariable { fg = "#eeeeee", }, -- stylusVariable xxx ctermfg=255 guifg=#eeeeee
    stylusClass { fg = "#c9d05c", }, -- stylusClass    xxx ctermfg=185 guifg=#c9d05c
    stylusClassChar { fg = "#b3deef", }, -- stylusClassChar xxx ctermfg=153 guifg=#b3deef
    stylusId { fg = "#c9d05c", }, -- stylusId       xxx ctermfg=185 guifg=#c9d05c
    stylusIdChar { fg = "#b3deef", }, -- stylusIdChar   xxx ctermfg=153 guifg=#b3deef
    cssVisualVal { fg = "#eeeeee", }, -- cssVisualVal   xxx ctermfg=255 guifg=#eeeeee
    stylusImport { fg = "#ffc24b", }, -- stylusImport   xxx ctermfg=215 guifg=#ffc24b
    vimCommentString { fg = "#715b2f", }, -- vimCommentString xxx ctermfg=58 guifg=#715b2f
    vimCommentTitle { fg = "#44778d", }, -- vimCommentTitle xxx ctermfg=66 guifg=#44778d
    vimError { bg = "#f43753", fg = "#eeeeee", }, -- vimError       xxx ctermfg=255 ctermbg=203 guifg=#eeeeee guibg=#f43753
    xmlNamespace { fg = "#ffc24b", }, -- xmlNamespace   xxx ctermfg=215 guifg=#ffc24b
    xmlAttribPunct { fg = "#f43753", }, -- xmlAttribPunct xxx ctermfg=203 guifg=#f43753
    xmlProcessingDelim { fg = "#f43753", }, -- xmlProcessingDelim xxx ctermfg=203 guifg=#f43753
    javascriptOpSymbol { fg = "#f43753", }, -- javascriptOpSymbol xxx ctermfg=203 guifg=#f43753
    javascriptDocNotation { fg = "#6a6b3f", }, -- javascriptDocNotation xxx ctermfg=242 guifg=#6a6b3f
    javascriptDocNamedParamType { fg = "#44778d", }, -- javascriptDocNamedParamType xxx ctermfg=66 guifg=#44778d
    javascriptDocParamName { fg = "#715b2f", }, -- javascriptDocParamName xxx ctermfg=58 guifg=#715b2f
    javascriptDocParamType { fg = "#44778d", }, -- javascriptDocParamType xxx ctermfg=66 guifg=#44778d
    javascriptTemplateSB { fg = "#f43753", }, -- javascriptTemplateSB xxx ctermfg=203 guifg=#f43753
    javascriptRepeat { fg = "#c9d05c", }, -- javascriptRepeat xxx ctermfg=185 guifg=#c9d05c
    javascriptObjectLabelColon { fg = "#f43753", }, -- javascriptObjectLabelColon xxx ctermfg=203 guifg=#f43753
    javascriptObjectMethodName { fg = "#c9d05c", }, -- javascriptObjectMethodName xxx ctermfg=185 guifg=#c9d05c
    javascriptFuncName { fg = "#c9d05c", }, -- javascriptFuncName xxx ctermfg=185 guifg=#c9d05c
    yamlFlowString { fg = "#d3b987", }, -- yamlFlowString xxx ctermfg=180 guifg=#d3b987
    yamlFlowStringDelimiter { fg = "#eeeeee", }, -- yamlFlowStringDelimiter xxx ctermfg=255 guifg=#eeeeee
    yamlKeyValueDelimiter { fg = "#f43753", }, -- yamlKeyValueDelimiter xxx ctermfg=203 guifg=#f43753
    NotifyERRORBorder { fg = "#8a1f1f", }, -- NotifyERRORBorder xxx guifg=#8A1F1F
    NotifyWARNBorder { fg = "#79491d", }, -- NotifyWARNBorder xxx guifg=#79491D
    NotifyINFOBorder { fg = "#4f6752", }, -- NotifyINFOBorder xxx guifg=#4F6752
    NotifyDEBUGBorder { fg = "#8b8b8b", }, -- NotifyDEBUGBorder xxx guifg=#8B8B8B
    NotifyTRACEBorder { fg = "#4f3552", }, -- NotifyTRACEBorder xxx guifg=#4F3552
    NotifyERRORIcon { fg = "#f70067", }, -- NotifyERRORIcon xxx guifg=#F70067
    NotifyWARNIcon { fg = "#f79000", }, -- NotifyWARNIcon xxx guifg=#F79000
    NotifyINFOIcon { fg = "#a9ff68", }, -- NotifyINFOIcon xxx guifg=#A9FF68
    NotifyDEBUGIcon { fg = "#8b8b8b", }, -- NotifyDEBUGIcon xxx guifg=#8B8B8B
    NotifyTRACEIcon { fg = "#d484ff", }, -- NotifyTRACEIcon xxx guifg=#D484FF
    NotifyERRORTitle { fg = "#f70067", }, -- NotifyERRORTitle xxx guifg=#F70067
    NotifyWARNTitle { fg = "#f79000", }, -- NotifyWARNTitle xxx guifg=#F79000
    NotifyINFOTitle { fg = "#a9ff68", }, -- NotifyINFOTitle xxx guifg=#A9FF68
    NotifyDEBUGTitle { fg = "#8b8b8b", }, -- NotifyDEBUGTitle xxx guifg=#8B8B8B
    NotifyTRACETitle { fg = "#d484ff", }, -- NotifyTRACETitle xxx guifg=#D484FF
    lualine_a_insert { bg = "#e8cb94", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_insert xxx gui=bold guifg=#2c2c2c guibg=#e8cb94
    lualine_c_insert { bg = "#707070", fg = "#ffffff", }, -- lualine_c_insert xxx guifg=#ffffff guibg=#707070
    lualine_b_insert { bg = "#2c2c2c", fg = "#e8cb94", }, -- lualine_b_insert xxx guifg=#e8cb94 guibg=#2c2c2c
    lualine_a_inactive { bg = "#dde465", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_inactive xxx gui=bold guifg=#2c2c2c guibg=#dde465
    lualine_c_inactive { bg = "#333333", fg = "#ffffff", }, -- lualine_c_inactive xxx guifg=#ffffff guibg=#707070
    lualine_b_inactive { bg = "#2c2c2c", fg = "#dde465", }, -- lualine_b_inactive xxx guifg=#dde465 guibg=#2c2c2c
    lualine_a_normal { bg = "#dde465", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_normal xxx gui=bold guifg=#2c2c2c guibg=#dde465
    lualine_c_normal { bg = "#707070", fg = "#ffffff", }, -- lualine_c_normal xxx guifg=#ffffff guibg=#707070
    lualine_b_normal { bg = "#707070", fg = "#dde465", }, -- lualine_b_normal xxx guifg=#dde465 guibg=#2c2c2c
    lualine_a_command { bg = "#c4f4ff", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_command xxx gui=bold guifg=#2c2c2c guibg=#c4f4ff
    lualine_c_command { bg = "#333333", fg = "#ffffff", }, -- lualine_c_command xxx guifg=#ffffff guibg=#707070
    lualine_b_command { bg = "#2c2c2c", fg = "#c4f4ff", }, -- lualine_b_command xxx guifg=#c4f4ff guibg=#2c2c2c
    lualine_a_terminal { bg = "#c4f4ff", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_terminal xxx gui=bold guifg=#2c2c2c guibg=#c4f4ff
    lualine_c_terminal { bg = "#333333", fg = "#ffffff", }, -- lualine_c_terminal xxx guifg=#ffffff guibg=#707070
    lualine_b_terminal { bg = "#2c2c2c", fg = "#c4f4ff", }, -- lualine_b_terminal xxx guifg=#c4f4ff guibg=#2c2c2c
    lualine_a_visual { bg = "#7ee2ff", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_visual xxx gui=bold guifg=#2c2c2c guibg=#7ee2ff
    lualine_c_visual { bg = "#333333", fg = "#ffffff", }, -- lualine_c_visual xxx guifg=#ffffff guibg=#707070
    lualine_b_visual { bg = "#2c2c2c", fg = "#7ee2ff", }, -- lualine_b_visual xxx guifg=#7ee2ff guibg=#2c2c2c
    lualine_a_replace { bg = "#ffd552", gui = "bold", fg = "#2c2c2c", }, -- lualine_a_replace xxx gui=bold guifg=#2c2c2c guibg=#ffd552
    lualine_c_replace { bg = "#707070", fg = "#ffffff", }, -- lualine_c_replace xxx guifg=#ffffff guibg=#707070
    lualine_b_replace { bg = "#2c2c2c", fg = "#ffd552", }, -- lualine_b_replace xxx guifg=#ffd552 guibg=#2c2c2c
    lualine_b_2_normal { bg = "#2c2c2c", gui = "bold", fg = "#dde465", }, -- lualine_b_2_normal xxx gui=bold guifg=#dde465 guibg=#2c2c2c
    lualine_b_2_insert { bg = "#2c2c2c", gui = "bold", fg = "#e8cb94", }, -- lualine_b_2_insert xxx gui=bold guifg=#e8cb94 guibg=#2c2c2c
    lualine_b_2_visual { bg = "#2c2c2c", gui = "bold", fg = "#7ee2ff", }, -- lualine_b_2_visual xxx gui=bold guifg=#7ee2ff guibg=#2c2c2c
    lualine_b_2_replace { bg = "#2c2c2c", gui = "bold", fg = "#ffd552", }, -- lualine_b_2_replace xxx gui=bold guifg=#ffd552 guibg=#2c2c2c
    lualine_b_2_command { bg = "#2c2c2c", gui = "bold", fg = "#c4f4ff", }, -- lualine_b_2_command xxx gui=bold guifg=#c4f4ff guibg=#2c2c2c
    lualine_b_2_terminal { bg = "#2c2c2c", gui = "bold", fg = "#c4f4ff", }, -- lualine_b_2_terminal xxx gui=bold guifg=#c4f4ff guibg=#2c2c2c
    lualine_b_2_inactive { bg = "#2c2c2c", gui = "bold", fg = "#dde465", }, -- lualine_b_2_inactive xxx gui=bold guifg=#dde465 guibg=#2c2c2c
    lualine_b_filename_normal { bg = "#2c2c2c", fg = "#dde465", }, -- lualine_b_filename_normal xxx guifg=#dde465 guibg=#2c2c2c
    lualine_b_filename_insert { bg = "#2c2c2c", fg = "#e8cb94", }, -- lualine_b_filename_insert xxx guifg=#e8cb94 guibg=#2c2c2c
    lualine_b_filename_visual { bg = "#2c2c2c", fg = "#7ee2ff", }, -- lualine_b_filename_visual xxx guifg=#7ee2ff guibg=#2c2c2c
    lualine_b_filename_replace { bg = "#2c2c2c", fg = "#ffd552", }, -- lualine_b_filename_replace xxx guifg=#ffd552 guibg=#2c2c2c
    lualine_b_filename_command { bg = "#2c2c2c", fg = "#c4f4ff", }, -- lualine_b_filename_command xxx guifg=#c4f4ff guibg=#2c2c2c
    lualine_b_filename_terminal { bg = "#2c2c2c", fg = "#c4f4ff", }, -- lualine_b_filename_terminal xxx guifg=#c4f4ff guibg=#2c2c2c
    lualine_b_filename_inactive { bg = "#2c2c2c", fg = "#dde465", }, -- lualine_b_filename_inactive xxx guifg=#dde465 guibg=#2c2c2c
    lualine_a_4_normal { bg = "#dde465", fg = "#2c2c2c", }, -- lualine_a_4_normal xxx guifg=#2c2c2c guibg=#dde465
    lualine_a_4_insert { bg = "#e8cb94", fg = "#2c2c2c", }, -- lualine_a_4_insert xxx guifg=#2c2c2c guibg=#e8cb94
    lualine_a_4_visual { bg = "#7ee2ff", fg = "#2c2c2c", }, -- lualine_a_4_visual xxx guifg=#2c2c2c guibg=#7ee2ff
    lualine_a_4_replace { bg = "#ffd552", fg = "#2c2c2c", }, -- lualine_a_4_replace xxx guifg=#2c2c2c guibg=#ffd552
    lualine_a_4_command { bg = "#c4f4ff", fg = "#2c2c2c", }, -- lualine_a_4_command xxx guifg=#2c2c2c guibg=#c4f4ff
    lualine_a_4_terminal { bg = "#c4f4ff", fg = "#2c2c2c", }, -- lualine_a_4_terminal xxx guifg=#2c2c2c guibg=#c4f4ff
    lualine_a_4_inactive { bg = "#dde465", fg = "#2c2c2c", }, -- lualine_a_4_inactive xxx guifg=#2c2c2c guibg=#dde465
    lualine_z_5 { bg = "#202328", fg = "#ecbe7b", }, -- lualine_z_5    xxx guifg=#ECBE7B guibg=#202328
    lualine_x_diagnostics_error_normal { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_normal xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_insert { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_insert xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_visual { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_visual xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_replace { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_replace xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_command { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_command xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_terminal { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_terminal xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_error_inactive { bg = "#707070", fg = "#ff0000", }, -- lualine_x_diagnostics_error_inactive xxx guifg=#ff0000 guibg=#707070
    lualine_x_diagnostics_warn_normal { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_normal xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_insert { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_insert xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_visual { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_visual xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_replace { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_replace xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_command { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_command xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_terminal { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_terminal xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_warn_inactive { bg = "#707070", fg = "#ffa500", }, -- lualine_x_diagnostics_warn_inactive xxx guifg=#ffa500 guibg=#707070
    lualine_x_diagnostics_info_normal { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_normal xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_insert { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_insert xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_visual { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_visual xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_replace { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_replace xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_command { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_command xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_terminal { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_terminal xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_info_inactive { bg = "#707070", fg = "#add8e6", }, -- lualine_x_diagnostics_info_inactive xxx guifg=#add8e6 guibg=#707070
    lualine_x_diagnostics_hint_normal { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_normal xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_insert { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_insert xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_visual { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_visual xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_replace { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_replace xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_command { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_command xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_terminal { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_terminal xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_diagnostics_hint_inactive { bg = "#707070", fg = "#d3d3d3", }, -- lualine_x_diagnostics_hint_inactive xxx guifg=#d3d3d3 guibg=#707070
    lualine_x_7_normal { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_normal xxx guifg=#98be65 guibg=#707070
    lualine_x_7_insert { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_insert xxx guifg=#98be65 guibg=#707070
    lualine_x_7_visual { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_visual xxx guifg=#98be65 guibg=#707070
    lualine_x_7_replace { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_replace xxx guifg=#98be65 guibg=#707070
    lualine_x_7_command { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_command xxx guifg=#98be65 guibg=#707070
    lualine_x_7_terminal { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_terminal xxx guifg=#98be65 guibg=#707070
    lualine_x_7_inactive { bg = "#707070", fg = "#98be65", }, -- lualine_x_7_inactive xxx guifg=#98be65 guibg=#707070
    lualine_x_8_normal { bg = "#333333", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_normal xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_insert { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_insert xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_visual { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_visual xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_replace { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_replace xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_command { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_command xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_terminal { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_terminal xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_x_8_inactive { bg = "#707070", gui = "bold", fg = "#ffffff", }, -- lualine_x_8_inactive xxx gui=bold guifg=#ffffff guibg=#707070
    lualine_c_diff_added_normal { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_normal xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_insert { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_insert xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_visual { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_visual xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_replace { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_replace xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_command { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_command xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_terminal { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_terminal xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_added_inactive { bg = "#707070", fg = "#98be65", }, -- lualine_c_diff_added_inactive xxx guifg=#98be65 guibg=#707070
    lualine_c_diff_modified_normal { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_normal xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_insert { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_insert xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_visual { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_visual xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_replace { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_replace xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_command { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_command xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_terminal { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_terminal xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_modified_inactive { bg = "#707070", fg = "#ecbe7b", }, -- lualine_c_diff_modified_inactive xxx guifg=#ECBE7B guibg=#707070
    lualine_c_diff_removed_normal { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_normal xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_insert { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_insert xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_visual { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_visual xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_replace { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_replace xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_command { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_command xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_terminal { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_terminal xxx guifg=#ec5f67 guibg=#707070
    lualine_c_diff_removed_inactive { bg = "#707070", fg = "#ec5f67", }, -- lualine_c_diff_removed_inactive xxx guifg=#ec5f67 guibg=#707070
    lualine_c_11_normal { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_normal xxx guifg=#98be65 guibg=#707070
    lualine_c_11_insert { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_insert xxx guifg=#98be65 guibg=#707070
    lualine_c_11_visual { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_visual xxx guifg=#98be65 guibg=#707070
    lualine_c_11_replace { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_replace xxx guifg=#98be65 guibg=#707070
    lualine_c_11_command { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_command xxx guifg=#98be65 guibg=#707070
    lualine_c_11_terminal { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_terminal xxx guifg=#98be65 guibg=#707070
    lualine_c_11_inactive { bg = "#707070", fg = "#98be65", }, -- lualine_c_11_inactive xxx guifg=#98be65 guibg=#707070
    NvimTreeBookmark { fg = "#c9d05c", }, -- NvimTreeBookmark xxx guifg=#c9d05c
    NvimTreeLiveFilterValue { gui = "bold", fg = "#ffffff", }, -- NvimTreeLiveFilterValue xxx gui=bold guifg=#fff
    NvimTreeLiveFilterPrefix { gui = "bold", fg = "#d3b987", }, -- NvimTreeLiveFilterPrefix xxx gui=bold guifg=#d3b987
    NvimTreeWindowPicker { bg = "#4493c8", gui = "bold", fg = "#ededed", }, -- NvimTreeWindowPicker xxx gui=bold guifg=#ededed guibg=#4493c8
    NvimTreeGitNew { fg = "#ffc24b", }, -- NvimTreeGitNew xxx guifg=#ffc24b
    NvimTreeFileNew { NvimTreeGitNew }, -- NvimTreeFileNew xxx links to NvimTreeGitNew
    NvimTreeGitRenamed { fg = "#d3b987", }, -- NvimTreeGitRenamed xxx guifg=#d3b987
    NvimTreeFileRenamed { NvimTreeGitRenamed }, -- NvimTreeFileRenamed xxx links to NvimTreeGitRenamed
    NvimTreeGitMerge { fg = "#ffc24b", }, -- NvimTreeGitMerge xxx guifg=#ffc24b
    NvimTreeFileMerge { NvimTreeGitMerge }, -- NvimTreeFileMerge xxx links to NvimTreeGitMerge
    NvimTreeGitStaged { fg = "#c9d05c", }, -- NvimTreeGitStaged xxx guifg=#c9d05c
    NvimTreeFileStaged { NvimTreeGitStaged }, -- NvimTreeFileStaged xxx links to NvimTreeGitStaged
    NvimTreeGitDeleted { fg = "#f43753", }, -- NvimTreeGitDeleted xxx guifg=#f43753
    NvimTreeFileDeleted { NvimTreeGitDeleted }, -- NvimTreeFileDeleted xxx links to NvimTreeGitDeleted
    NvimTreeGitDirty { fg = "#f43753", }, -- NvimTreeGitDirty xxx guifg=#f43753
    NvimTreeFileDirty { NvimTreeGitDirty }, -- NvimTreeFileDirty xxx links to NvimTreeGitDirty
    NvimTreeOpenedFile { gui = "bold", fg = "#c9d05c", }, -- NvimTreeOpenedFile xxx gui=bold guifg=#c9d05c
    NvimTreeImageFile { gui = "bold", fg = "#d3b987", }, -- NvimTreeImageFile xxx gui=bold guifg=#d3b987
    NvimTreeSpecialFile { gui = "bold,underline", fg = "#ffc24b", }, -- NvimTreeSpecialFile xxx gui=bold,underline guifg=#ffc24b
    NvimTreeExecFile { gui = "bold", fg = "#c9d05c", }, -- NvimTreeExecFile xxx gui=bold guifg=#c9d05c
    NvimTreeRootFolder { fg = "#d3b987", }, -- NvimTreeRootFolder xxx guifg=#d3b987
    NvimTreeFolderIcon { fg = "#8094b4", }, -- NvimTreeFolderIcon xxx guifg=#8094b4
    NvimTreeSymlink { gui = "bold", fg = "#73cef4", }, -- NvimTreeSymlink xxx gui=bold guifg=#73cef4
    NvimTreeIndentMarker { fg = "#8094b4", }, -- NvimTreeIndentMarker xxx guifg=#8094b4
    DevIconVagrantfile { fg = "#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563FF
    DevIconFavicon { fg = "#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
    DevIconC { fg = "#599eff", }, -- DevIconC       xxx ctermfg=75 guifg=#599eff
    DevIconMli { fg = "#e37933", }, -- DevIconMli     xxx ctermfg=173 guifg=#e37933
    DevIconMotoko { fg = "#9772fb", }, -- DevIconMotoko  xxx ctermfg=99 guifg=#9772FB
    DevIconEpp { fg = "#ffa61a", }, -- DevIconEpp     xxx guifg=#FFA61A
    DevIconMustache { fg = "#e37933", }, -- DevIconMustache xxx ctermfg=173 guifg=#e37933
    DevIconClojureC { fg = "#8dc149", }, -- DevIconClojureC xxx ctermfg=107 guifg=#8dc149
    DevIconLicense { fg = "#cbcb41", }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
    DevIconCxx { fg = "#519aba", }, -- DevIconCxx     xxx ctermfg=67 guifg=#519aba
    DevIconImportConfiguration { fg = "#ececec", }, -- DevIconImportConfiguration xxx ctermfg=231 guifg=#ECECEC
    DevIconLock { fg = "#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
    DevIconGemfile { fg = "#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
    DevIconBmp { fg = "#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
    DevIconCrystal { fg = "#000000", }, -- DevIconCrystal xxx ctermfg=16 guifg=#000000
    DevIconGulpfile { fg = "#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
    DevIconBrewfile { fg = "#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
    DevIconSql { fg = "#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
    DevIconR { fg = "#358a5b", }, -- DevIconR       xxx ctermfg=65 guifg=#358a5b
    DevIconDockerfile { fg = "#384d54", }, -- DevIconDockerfile xxx ctermfg=59 guifg=#384d54
    DevIconGodotProject { fg = "#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
    DevIconWebp { fg = "#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
    DevIconScss { fg = "#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
    DevIconCoffee { fg = "#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
    DevIconCss { fg = "#42a5f5", }, -- DevIconCss     xxx ctermfg=39 guifg=#42a5f5
    DevIconFsx { fg = "#519aba", }, -- DevIconFsx     xxx ctermfg=67 guifg=#519aba
    DevIconErb { fg = "#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
    DevIconFsi { fg = "#519aba", }, -- DevIconFsi     xxx ctermfg=67 guifg=#519aba
    DevIconSuo { fg = "#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854CC7
    DevIconStyl { fg = "#8dc149", }, -- DevIconStyl    xxx ctermfg=107 guifg=#8dc149
    DevIconCobol { fg = "#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
    DevIconDropbox { fg = "#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061FE
    DevIconIco { fg = "#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
    DevIconHh { fg = "#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
    DevIconKotlin { fg = "#f88a02", }, -- DevIconKotlin  xxx ctermfg=208 guifg=#F88A02
    DevIconPyo { fg = "#ffe291", }, -- DevIconPyo     xxx ctermfg=67 guifg=#ffe291
    DevIconPhp { fg = "#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
    DevIconPyc { fg = "#ffe291", }, -- DevIconPyc     xxx ctermfg=67 guifg=#ffe291
    DevIconPsd { fg = "#519aba", }, -- DevIconPsd     xxx ctermfg=67 guifg=#519aba
    DevIconFish { fg = "#4d5a5e", }, -- DevIconFish    xxx ctermfg=59 guifg=#4d5a5e
    DevIconPpt { fg = "#cb4a32", }, -- DevIconPpt     xxx ctermfg=167 guifg=#cb4a32
    DevIconBash { fg = "#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
    DevIconOpenTypeFont { fg = "#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=231 guifg=#ECECEC
    DevIconCson { fg = "#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
    DevIconConf { fg = "#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
    DevIconGif { fg = "#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
    DevIconPng { fg = "#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
    DevIconJpeg { fg = "#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
    DevIconJpg { fg = "#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
    DevIconMint { fg = "#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
    DevIconGemspec { fg = "#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
    DevIconSh { fg = "#4d5a5e", }, -- DevIconSh      xxx ctermfg=59 guifg=#4d5a5e
    DevIconZig { fg = "#f69a1b", }, -- DevIconZig     xxx ctermfg=208 guifg=#f69a1b
    DevIconCPlusPlus { fg = "#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
    DevIconH { fg = "#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
    DevIconSystemVerilog { fg = "#019833", }, -- DevIconSystemVerilog xxx ctermfg=29 guifg=#019833
    DevIconRb { fg = "#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
    DevIconHrl { fg = "#b83998", }, -- DevIconHrl     xxx ctermfg=132 guifg=#B83998
    DevIconConfiguration { fg = "#ececec", }, -- DevIconConfiguration xxx ctermfg=231 guifg=#ECECEC
    DevIconFsharp { fg = "#519aba", }, -- DevIconFsharp  xxx ctermfg=67 guifg=#519aba
    DevIconGDScript { fg = "#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
    DevIconLess { fg = "#563d7c", }, -- DevIconLess    xxx ctermfg=60 guifg=#563d7c
    DevIconDefault { fg = "#6d8086", }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
    DevIconJs { fg = "#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
    DevIconRs { fg = "#dea584", }, -- DevIconRs      xxx ctermfg=180 guifg=#dea584
    DevIconHtm { fg = "#e34c26", }, -- DevIconHtm     xxx ctermfg=166 guifg=#e34c26
    DevIconDesktopEntry { fg = "#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=60 guifg=#563d7c
    DevIconClojureJS { fg = "#519aba", }, -- DevIconClojureJS xxx ctermfg=67 guifg=#519aba
    DevIconFennel { fg = "#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
    DevIconMaterial { fg = "#b83998", }, -- DevIconMaterial xxx ctermfg=132 guifg=#B83998
    DevIconTwig { fg = "#8dc149", }, -- DevIconTwig    xxx ctermfg=107 guifg=#8dc149
    DevIconRss { fg = "#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#FB9D3B
    DevIconIni { fg = "#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
    DevIconSlim { fg = "#e34c26", }, -- DevIconSlim    xxx ctermfg=166 guifg=#e34c26
    DevIconProcfile { fg = "#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
    DevIconSass { fg = "#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
    DevIconPromptPs1 { fg = "#4d5a5e", }, -- DevIconPromptPs1 xxx ctermfg=59 guifg=#4d5a5e
    DevIconLhs { fg = "#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
    DevIconJl { fg = "#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
    DevIconJava { fg = "#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
    DevIconTextResource { fg = "#cbcb41", }, -- DevIconTextResource xxx ctermfg=185 guifg=#cbcb41
    DevIconAi { fg = "#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
    DevIconHbs { fg = "#f0772b", }, -- DevIconHbs     xxx ctermfg=208 guifg=#f0772b
    DevIconMdx { fg = "#519aba", }, -- DevIconMdx     xxx ctermfg=67 guifg=#519aba
    DevIconHs { fg = "#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
    DevIconNim { fg = "#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
    DevIconGvimrc { fg = "#019833", }, -- DevIconGvimrc  xxx ctermfg=29 guifg=#019833
    DevIconEx { fg = "#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
    DevIconGruntfile { fg = "#e37933", }, -- DevIconGruntfile xxx ctermfg=173 guifg=#e37933
    DevIconNodeModules { fg = "#e8274b", }, -- DevIconNodeModules xxx ctermfg=161 guifg=#E8274B
    DevIconVerilog { fg = "#019833", }, -- DevIconVerilog xxx ctermfg=29 guifg=#019833
    DevIconVHDL { fg = "#019833", }, -- DevIconVHDL    xxx ctermfg=29 guifg=#019833
    DevIconClojureDart { fg = "#519aba", }, -- DevIconClojureDart xxx ctermfg=67 guifg=#519aba
    DevIconSvg { fg = "#ffb13b", }, -- DevIconSvg     xxx ctermfg=215 guifg=#FFB13B
    DevIconFsscript { fg = "#519aba", }, -- DevIconFsscript xxx ctermfg=67 guifg=#519aba
    DevIconPackageLockJson { fg = "#7a0d21", }, -- DevIconPackageLockJson xxx guifg=#7a0d21
    DevIconWebpack { fg = "#519aba", }, -- DevIconWebpack xxx ctermfg=67 guifg=#519aba
    DevIconExs { fg = "#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
    DevIconGitModules { fg = "#41535b", }, -- DevIconGitModules xxx ctermfg=59 guifg=#41535b
    DevIconMarkdown { fg = "#519aba", }, -- DevIconMarkdown xxx ctermfg=67 guifg=#519aba
    DevIconZsh { fg = "#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
    DevIconTcl { fg = "#1e5cb3", }, -- DevIconTcl     xxx ctermfg=67 guifg=#1e5cb3
    DevIconEjs { fg = "#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
    DevIconTerminal { fg = "#31b53e", }, -- DevIconTerminal xxx ctermfg=71 guifg=#31B53E
    DevIconTxt { fg = "#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
    DevIconGitCommit { fg = "#41535b", }, -- DevIconGitCommit xxx ctermfg=59 guifg=#41535b
    DevIconGitConfig { fg = "#41535b", }, -- DevIconGitConfig xxx ctermfg=59 guifg=#41535b
    DevIconYml { fg = "#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
    DevIconDrools { fg = "#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
    DevIconGitAttributes { fg = "#41535b", }, -- DevIconGitAttributes xxx ctermfg=59 guifg=#41535b
    DevIconEnv { fg = "#faf743", }, -- DevIconEnv     xxx ctermfg=226 guifg=#faf743
    DevIconScala { fg = "#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
    DevIconRproj { fg = "#358a5b", }, -- DevIconRproj   xxx ctermfg=65 guifg=#358a5b
    DevIconTsx { fg = "#519aba", }, -- DevIconTsx     xxx ctermfg=67 guifg=#519aba
    DevIconErl { fg = "#b83998", }, -- DevIconErl     xxx ctermfg=132 guifg=#B83998
    DevIconCs { fg = "#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
    DevIconRakefile { fg = "#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
    DevIconBat { fg = "#c1f12e", }, -- DevIconBat     xxx ctermfg=154 guifg=#C1F12E
    DevIconZshprofile { fg = "#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
    DevIconDoc { fg = "#185abd", }, -- DevIconDoc     xxx ctermfg=25 guifg=#185abd
    DevIconNPMIgnore { fg = "#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=161 guifg=#E8274B
    DevIconTs { fg = "#519aba", }, -- DevIconTs      xxx ctermfg=67 guifg=#519aba
    DevIconPy { fg = "#ffbc03", }, -- DevIconPy      xxx ctermfg=61 guifg=#ffbc03
    DevIconSwift { fg = "#e37933", }, -- DevIconSwift   xxx ctermfg=173 guifg=#e37933
    DevIconGo { fg = "#519aba", }, -- DevIconGo      xxx ctermfg=67 guifg=#519aba
    DevIconCMake { fg = "#6d8086", }, -- DevIconCMake   xxx ctermfg=66 guifg=#6d8086
    DevIconMixLock { fg = "#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
    DevIconMd { fg = "#ffffff", }, -- DevIconMd      xxx ctermfg=15 guifg=#ffffff
    DevIconBinaryGLTF { fg = "#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=215 guifg=#FFB13B
    DevIconProlog { fg = "#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
    DevIconCsv { fg = "#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
    DevIconJsx { fg = "#519aba", }, -- DevIconJsx     xxx ctermfg=67 guifg=#519aba
    DevIconPackedResource { fg = "#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
    DevIconHeex { fg = "#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
    DevIconConfigRu { fg = "#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
    DevIconEex { fg = "#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
    DevIconDsStore { fg = "#41535b", }, -- DevIconDsStore xxx ctermfg=59 guifg=#41535b
    DevIconPrisma { fg = "#ffffff", }, -- DevIconPrisma  xxx ctermfg=15 guifg=#ffffff
    DevIconCpp { fg = "#519aba", }, -- DevIconCpp     xxx ctermfg=67 guifg=#519aba
    DevIconSvelte { fg = "#ff3e00", }, -- DevIconSvelte  xxx ctermfg=202 guifg=#ff3e00
    DevIconBashrc { fg = "#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
    DevIconFs { fg = "#519aba", }, -- DevIconFs      xxx ctermfg=67 guifg=#519aba
    DevIconCMakeLists { fg = "#6d8086", }, -- DevIconCMakeLists xxx ctermfg=66 guifg=#6d8086
    DevIconSml { fg = "#e37933", }, -- DevIconSml     xxx ctermfg=173 guifg=#e37933
    DevIconHtml { fg = "#e44d26", }, -- DevIconHtml    xxx ctermfg=202 guifg=#e44d26
    DevIconNPMrc { fg = "#e8274b", }, -- DevIconNPMrc   xxx ctermfg=161 guifg=#E8274B
    DevIconGitIgnore { fg = "#41535b", }, -- DevIconGitIgnore xxx ctermfg=59 guifg=#41535b
    DevIconPl { fg = "#519aba", }, -- DevIconPl      xxx ctermfg=67 guifg=#519aba
    DevIconZshrc { fg = "#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
    DevIconRmd { fg = "#519aba", }, -- DevIconRmd     xxx ctermfg=67 guifg=#519aba
    DevIconPp { fg = "#ffa61a", }, -- DevIconPp      xxx guifg=#FFA61A
    DevIconXml { fg = "#e37933", }, -- DevIconXml     xxx ctermfg=173 guifg=#e37933
    DevIconMjs { fg = "#f1e05a", }, -- DevIconMjs     xxx ctermfg=221 guifg=#f1e05a
    DevIconDart { fg = "#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589C
    DevIconJson { fg = "#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
    DevIconNix { fg = "#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
    DevIconLog { fg = "#ffffff", }, -- DevIconLog     xxx ctermfg=15 guifg=#ffffff
    DevIconMakefile { fg = "#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
    DevIconPm { fg = "#519aba", }, -- DevIconPm      xxx ctermfg=67 guifg=#519aba
    DevIconGitlabCI { fg = "#e24329", }, -- DevIconGitlabCI xxx ctermfg=166 guifg=#e24329
    DevIconBashProfile { fg = "#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
    DevIconMl { fg = "#e37933", }, -- DevIconMl      xxx ctermfg=173 guifg=#e37933
    DevIconYaml { fg = "#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
    DevIconSettingsJson { fg = "#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854CC7
    DevIconElm { fg = "#519aba", }, -- DevIconElm     xxx ctermfg=67 guifg=#519aba
    DevIconVimrc { fg = "#019833", }, -- DevIconVimrc   xxx ctermfg=29 guifg=#019833
    DevIconTex { fg = "#3d6117", }, -- DevIconTex     xxx ctermfg=58 guifg=#3D6117
    DevIconKotlinScript { fg = "#f88a02", }, -- DevIconKotlinScript xxx ctermfg=208 guifg=#F88A02
    DevIconLua { fg = "#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
    DevIconVue { fg = "#8dc149", }, -- DevIconVue     xxx ctermfg=107 guifg=#8dc149
    DevIconD { fg = "#427819", }, -- DevIconD       xxx ctermfg=64 guifg=#427819
    DevIconDb { fg = "#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
    DevIconPackageJson { fg = "#e8274b", }, -- DevIconPackageJson xxx guifg=#e8274b
    DevIconDiff { fg = "#41535b", }, -- DevIconDiff    xxx ctermfg=59 guifg=#41535b
    DevIconPsb { fg = "#519aba", }, -- DevIconPsb     xxx ctermfg=67 guifg=#519aba
    DevIconClojure { fg = "#8dc149", }, -- DevIconClojure xxx ctermfg=107 guifg=#8dc149
    DevIconPyd { fg = "#ffe291", }, -- DevIconPyd     xxx ctermfg=67 guifg=#ffe291
    DevIconHpp { fg = "#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
    DevIconRake { fg = "#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
    DevIconToml { fg = "#6d8086", }, -- DevIconToml    xxx ctermfg=66 guifg=#6d8086
    DevIconRlib { fg = "#dea584", }, -- DevIconRlib    xxx ctermfg=180 guifg=#dea584
    DevIconCp { fg = "#519aba", }, -- DevIconCp      xxx ctermfg=67 guifg=#519aba
    DevIconZshenv { fg = "#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
    DevIconSig { fg = "#e37933", }, -- DevIconSig     xxx ctermfg=173 guifg=#e37933
    DevIconEdn { fg = "#519aba", }, -- DevIconEdn     xxx ctermfg=67 guifg=#519aba
    DevIconXls { fg = "#207245", }, -- DevIconXls     xxx ctermfg=23 guifg=#207245
    DevIconXul { fg = "#e37933", }, -- DevIconXul     xxx ctermfg=173 guifg=#e37933
    DevIconCsh { fg = "#4d5a5e", }, -- DevIconCsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconSolidity { fg = "#519aba", }, -- DevIconSolidity xxx ctermfg=67 guifg=#519aba
    DevIconXcPlayground { fg = "#e37933", }, -- DevIconXcPlayground xxx ctermfg=173 guifg=#e37933
    DevIconHxx { fg = "#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
    DevIconWebmanifest { fg = "#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=221 guifg=#f1e05a
    DevIconVim { fg = "#019833", }, -- DevIconVim     xxx ctermfg=29 guifg=#019833
    DevIconGitLogo { fg = "#f14c28", }, -- DevIconGitLogo xxx ctermfg=202 guifg=#F14C28
    DevIconKsh { fg = "#4d5a5e", }, -- DevIconKsh     xxx ctermfg=59 guifg=#4d5a5e
    DevIconBabelrc { fg = "#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
    DevIconTextScene { fg = "#a074c4", }, -- DevIconTextScene xxx ctermfg=140 guifg=#a074c4
    DevIconSln { fg = "#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854CC7
    DevIconAwk { fg = "#4d5a5e", }, -- DevIconAwk     xxx ctermfg=59 guifg=#4d5a5e
    DevIconHaml { fg = "#eaeae1", }, -- DevIconHaml    xxx ctermfg=188 guifg=#eaeae1
    DevIconOPUS { fg = "#f88a02", }, -- DevIconOPUS    xxx ctermfg=208 guifg=#F88A02
    DevIconPdf { fg = "#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
    DevIconDump { fg = "#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
    DevIconLeex { fg = "#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
    DevIconTor { fg = "#519aba", }, -- DevIconTor     xxx ctermfg=67 guifg=#519aba
    minimapCursor { bg = "#5f5f5f", fg = "#ffff87", }, -- minimapCursor  xxx ctermfg=228 ctermbg=59 guifg=#FFFF87 guibg=#5F5F5F
    minimapRange { bg = "#4f4f4f", fg = "#ffff87", }, -- minimapRange   xxx ctermfg=228 ctermbg=242 guifg=#FFFF87 guibg=#4F4F4F
    minimapDiffRemoved { fg = "#fc1a70", }, -- minimapDiffRemoved xxx ctermfg=197 guifg=#FC1A70
    minimapDiffAdded { fg = "#a4e400", }, -- minimapDiffAdded xxx ctermfg=148 guifg=#A4E400
    minimapDiffLine { fg = "#af87ff", }, -- minimapDiffLine xxx ctermfg=141 guifg=#AF87FF
    minimapCursorDiffRemoved { bg = "#5f5f5f", fg = "#fc1a70", }, -- minimapCursorDiffRemoved xxx ctermfg=197 ctermbg=59 guifg=#FC1A70 guibg=#5F5F5F
    minimapCursorDiffAdded { bg = "#5f5f5f", fg = "#a4e400", }, -- minimapCursorDiffAdded xxx ctermfg=148 ctermbg=59 guifg=#A4E400 guibg=#5F5F5F
    minimapCursorDiffLine { bg = "#5f5f5f", fg = "#af87ff", }, -- minimapCursorDiffLine xxx ctermfg=141 ctermbg=59 guifg=#AF87FF guibg=#5F5F5F
    minimapRangeDiffRemoved { bg = "#4f4f4f", fg = "#fc1a70", }, -- minimapRangeDiffRemoved xxx ctermfg=197 ctermbg=242 guifg=#FC1A70 guibg=#4F4F4F
    minimapRangeDiffAdded { bg = "#4f4f4f", fg = "#a4e400", }, -- minimapRangeDiffAdded xxx ctermfg=148 ctermbg=242 guifg=#A4E400 guibg=#4F4F4F
    minimapRangeDiffLine { bg = "#4f4f4f", fg = "#af87ff", }, -- minimapRangeDiffLine xxx ctermfg=141 ctermbg=242 guifg=#AF87FF guibg=#4F4F4F
    CmpItemAbbrDefault { fg = "#dadada", }, -- CmpItemAbbrDefault xxx cterm= gui= guifg=#dadada
    CmpItemAbbr { CmpItemAbbrDefault }, -- CmpItemAbbr    xxx links to CmpItemAbbrDefault
    CmpItemAbbrDeprecatedDefault { fg = "#666666", }, -- CmpItemAbbrDeprecatedDefault xxx cterm= gui= guifg=#666666
    CmpItemAbbrDeprecated { CmpItemAbbrDeprecatedDefault }, -- CmpItemAbbrDeprecated xxx links to CmpItemAbbrDeprecatedDefault
    CmpItemAbbrMatchDefault { fg = "#dadada", }, -- CmpItemAbbrMatchDefault xxx cterm= gui= guifg=#dadada
    CmpItemAbbrMatch { CmpItemAbbrMatchDefault }, -- CmpItemAbbrMatch xxx links to CmpItemAbbrMatchDefault
    CmpItemAbbrMatchFuzzyDefault { fg = "#dadada", }, -- CmpItemAbbrMatchFuzzyDefault xxx cterm= gui= guifg=#dadada
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatchFuzzyDefault }, -- CmpItemAbbrMatchFuzzy xxx links to CmpItemAbbrMatchFuzzyDefault
    CmpItemKindDefault { fg = "#73cef4", }, -- CmpItemKindDefault xxx cterm= gui= guifg=#73cef4
    CmpItemKind { CmpItemKindDefault }, -- CmpItemKind    xxx links to CmpItemKindDefault
    CmpItemMenuDefault { fg = "#dadada", }, -- CmpItemMenuDefault xxx cterm= gui= guifg=#dadada
    CmpItemMenu { CmpItemMenuDefault }, -- CmpItemMenu    xxx links to CmpItemMenuDefault
    TSStrike { gui = "strikethrough", }, -- TSStrike       xxx cterm=strikethrough gui=strikethrough
    TSUnderline { gui = "underline", }, -- TSUnderline    xxx cterm=underline gui=underline
    TSEmphasis { gui = "italic", }, -- TSEmphasis     xxx cterm=italic gui=italic
    TSStrong { gui = "bold", }, -- TSStrong       xxx cterm=bold gui=bold
    TSNone {}, -- TSNone         xxx cterm= gui=
    TSText { TSNone }, -- TSText         xxx links to TSNone
    BufferLinePick { bg = "#1e1e1e", gui = "bold,italic", fg = "#ff0000", }, -- BufferLinePick xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#1e1e1e
    BufferLineInfoDiagnostic { bg = "#1e1e1e", sp = "#81a2ac", fg = "#4c4c4c", }, -- BufferLineInfoDiagnostic xxx cterm= gui= guifg=#4c4c4c guibg=#1e1e1e guisp=#81a2ac
    BufferLineBackground { bg = "#1e1e1e", gui = "italic", fg = "#666666", }, -- BufferLineBackground xxx cterm=italic gui=italic guifg=#666666 guibg=#1e1e1e
    BufferLineDuplicate { bg = "#1e1e1e", gui = "italic", fg = "#606060", }, -- BufferLineDuplicate xxx cterm=italic gui=italic guifg=#606060 guibg=#1e1e1e
    BufferLineDiagnosticSelected { bg = "#282828", gui = "bold,italic", fg = "#b2b2b2", }, -- BufferLineDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#b2b2b2 guibg=#282828
    BufferLineTab { bg = "#1e1e1e", fg = "#666666", }, -- BufferLineTab  xxx cterm= gui= guifg=#666666 guibg=#1e1e1e
    BufferLineInfoSelected { gui = "bold,italic", fg = "#add8e6", sp = "#add8e6", bg = "#282828", }, -- BufferLineInfoSelected xxx cterm=bold,italic gui=bold,italic guifg=#add8e6 guibg=#282828 guisp=#add8e6
    BufferLineHint { bg = "#1e1e1e", sp = "#d3d3d3", fg = "#666666", }, -- BufferLineHint xxx cterm= gui= guifg=#666666 guibg=#1e1e1e guisp=#d3d3d3
    BufferLinePickVisible { bg = "#242424", gui = "bold,italic", fg = "#ff0000", }, -- BufferLinePickVisible xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#242424
    BufferLinePickSelected { bg = "#282828", gui = "bold,italic", fg = "#ff0000", }, -- BufferLinePickSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#282828
    BufferLineIndicatorVisible { bg = "#242424", fg = "#242424", }, -- BufferLineIndicatorVisible xxx cterm= gui= guifg=#242424 guibg=#242424
    BufferLineIndicatorSelected { bg = "#282828", fg = "#c9d05c", }, -- BufferLineIndicatorSelected xxx cterm= gui= guifg=#c9d05c guibg=#282828
    BufferLineSeparatorVisible { bg = "#242424", fg = "#161616", }, -- BufferLineSeparatorVisible xxx cterm= gui= guifg=#161616 guibg=#242424
    BufferLineSeparatorSelected { bg = "#282828", fg = "#161616", }, -- BufferLineSeparatorSelected xxx cterm= gui= guifg=#161616 guibg=#282828
    BufferLineNumbers { bg = "#1e1e1e", fg = "#666666", }, -- BufferLineNumbers xxx cterm= gui= guifg=#666666 guibg=#1e1e1e
    BufferLineDuplicateVisible { bg = "#242424", gui = "italic", fg = "#606060", }, -- BufferLineDuplicateVisible xxx cterm=italic gui=italic guifg=#606060 guibg=#242424
    BufferLineFill { bg = "#161616", fg = "#666666", }, -- BufferLineFill xxx cterm= gui= guifg=#666666 guibg=#161616
    BufferLineBufferSelected { bg = "#282828", gui = "bold", fg = "#eeeeee", }, -- BufferLineBufferSelected xxx cterm=bold gui=bold guifg=#eeeeee guibg=#282828
    BufferLineModifiedVisible { bg = "#242424", fg = "#d3b987", }, -- BufferLineModifiedVisible xxx cterm= gui= guifg=#d3b987 guibg=#242424
    BufferLineErrorDiagnosticSelected { gui = "bold,italic", fg = "#bf0000", sp = "#bf0000", bg = "#282828", }, -- BufferLineErrorDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bf0000 guibg=#282828 guisp=#bf0000
    BufferLineErrorDiagnosticVisible { bg = "#242424", fg = "#4c4c4c", }, -- BufferLineErrorDiagnosticVisible xxx cterm= gui= guifg=#4c4c4c guibg=#242424
    BufferLineErrorDiagnostic { bg = "#1e1e1e", sp = "#bf0000", fg = "#4c4c4c", }, -- BufferLineErrorDiagnostic xxx cterm= gui= guifg=#4c4c4c guibg=#1e1e1e guisp=#bf0000
    BufferLineErrorSelected { gui = "bold,italic", fg = "#ff0000", sp = "#ff0000", bg = "#282828", }, -- BufferLineErrorSelected xxx cterm=bold,italic gui=bold,italic guifg=#ff0000 guibg=#282828 guisp=#ff0000
    BufferLineErrorVisible { bg = "#242424", fg = "#666666", }, -- BufferLineErrorVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineWarningDiagnosticSelected { gui = "bold,italic", fg = "#bf7b00", sp = "#bf7b00", bg = "#282828", }, -- BufferLineWarningDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#bf7b00 guibg=#282828 guisp=#bf7b00
    BufferLineWarningDiagnosticVisible { bg = "#242424", fg = "#4c4c4c", }, -- BufferLineWarningDiagnosticVisible xxx cterm= gui= guifg=#4c4c4c guibg=#242424
    BufferLineWarningDiagnostic { bg = "#1e1e1e", sp = "#bf7b00", fg = "#4c4c4c", }, -- BufferLineWarningDiagnostic xxx cterm= gui= guifg=#4c4c4c guibg=#1e1e1e guisp=#bf7b00
    BufferLineWarningSelected { gui = "bold,italic", fg = "#ffa500", sp = "#ffa500", bg = "#282828", }, -- BufferLineWarningSelected xxx cterm=bold,italic gui=bold,italic guifg=#ffa500 guibg=#282828 guisp=#ffa500
    BufferLineWarningVisible { bg = "#242424", fg = "#666666", }, -- BufferLineWarningVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineInfoDiagnosticSelected { gui = "bold,italic", fg = "#81a2ac", sp = "#81a2ac", bg = "#282828", }, -- BufferLineInfoDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#81a2ac guibg=#282828 guisp=#81a2ac
    BufferLineInfoDiagnosticVisible { bg = "#242424", fg = "#4c4c4c", }, -- BufferLineInfoDiagnosticVisible xxx cterm= gui= guifg=#4c4c4c guibg=#242424
    BufferLineWarning { bg = "#1e1e1e", sp = "#ffa500", fg = "#666666", }, -- BufferLineWarning xxx cterm= gui= guifg=#666666 guibg=#1e1e1e guisp=#ffa500
    BufferLineModified { bg = "#1e1e1e", fg = "#d3b987", }, -- BufferLineModified xxx cterm= gui= guifg=#d3b987 guibg=#1e1e1e
    BufferLineInfoVisible { bg = "#242424", fg = "#666666", }, -- BufferLineInfoVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineHintDiagnosticSelected { gui = "bold,italic", fg = "#9e9e9e", sp = "#9e9e9e", bg = "#282828", }, -- BufferLineHintDiagnosticSelected xxx cterm=bold,italic gui=bold,italic guifg=#9e9e9e guibg=#282828 guisp=#9e9e9e
    BufferLineHintDiagnosticVisible { bg = "#242424", fg = "#4c4c4c", }, -- BufferLineHintDiagnosticVisible xxx cterm= gui= guifg=#4c4c4c guibg=#242424
    BufferLineHintDiagnostic { bg = "#1e1e1e", sp = "#9e9e9e", fg = "#4c4c4c", }, -- BufferLineHintDiagnostic xxx cterm= gui= guifg=#4c4c4c guibg=#1e1e1e guisp=#9e9e9e
    BufferLineHintSelected { gui = "bold,italic", fg = "#d3d3d3", sp = "#d3d3d3", bg = "#282828", }, -- BufferLineHintSelected xxx cterm=bold,italic gui=bold,italic guifg=#d3d3d3 guibg=#282828 guisp=#d3d3d3
    BufferLineHintVisible { bg = "#242424", fg = "#666666", }, -- BufferLineHintVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineDiagnostic { bg = "#1e1e1e", fg = "#4c4c4c", }, -- BufferLineDiagnostic xxx cterm= gui= guifg=#4c4c4c guibg=#1e1e1e
    BufferLineDiagnosticVisible { bg = "#242424", fg = "#4c4c4c", }, -- BufferLineDiagnosticVisible xxx cterm= gui= guifg=#4c4c4c guibg=#242424
    BufferLineNumbersVisible { bg = "#242424", fg = "#666666", }, -- BufferLineNumbersVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineNumbersSelected { bg = "#282828", gui = "bold,italic", fg = "#eeeeee", }, -- BufferLineNumbersSelected xxx cterm=bold,italic gui=bold,italic guifg=#eeeeee guibg=#282828
    BufferLineBufferVisible { bg = "#242424", fg = "#666666", }, -- BufferLineBufferVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineBuffer { bg = "#1e1e1e", fg = "#666666", }, -- BufferLineBuffer xxx cterm= gui= guifg=#666666 guibg=#1e1e1e
    BufferLineCloseButtonVisible { bg = "#242424", fg = "#666666", }, -- BufferLineCloseButtonVisible xxx cterm= gui= guifg=#666666 guibg=#242424
    BufferLineCloseButton { bg = "#1e1e1e", fg = "#666666", }, -- BufferLineCloseButton xxx cterm= gui= guifg=#666666 guibg=#1e1e1e
    BufferLineTabClose { bg = "#1e1e1e", fg = "#666666", }, -- BufferLineTabClose xxx cterm= gui= guifg=#666666 guibg=#1e1e1e
    BufferLineTabSelected { bg = "#282828", fg = "#c9d05c", }, -- BufferLineTabSelected xxx cterm= gui= guifg=#c9d05c guibg=#282828
    BufferLineGroupLabel { bg = "#666666", fg = "#161616", }, -- BufferLineGroupLabel xxx cterm= gui= guifg=#161616 guibg=#666666
    BufferLineGroupSeparator { bg = "#161616", fg = "#666666", }, -- BufferLineGroupSeparator xxx cterm= gui= guifg=#666666 guibg=#161616
    BufferLineCloseButtonSelected { bg = "#282828", fg = "#eeeeee", }, -- BufferLineCloseButtonSelected xxx cterm= gui= guifg=#eeeeee guibg=#282828
    BufferLineError { bg = "#1e1e1e", sp = "#ff0000", fg = "#666666", }, -- BufferLineError xxx cterm= gui= guifg=#666666 guibg=#1e1e1e guisp=#ff0000
    BufferLineModifiedSelected { bg = "#282828", fg = "#d3b987", }, -- BufferLineModifiedSelected xxx cterm= gui= guifg=#d3b987 guibg=#282828
    BufferLineDuplicateSelected { bg = "#282828", gui = "italic", fg = "#606060", }, -- BufferLineDuplicateSelected xxx cterm=italic gui=italic guifg=#606060 guibg=#282828
    BufferLineInfo { bg = "#1e1e1e", sp = "#add8e6", fg = "#666666", }, -- BufferLineInfo xxx cterm= gui= guifg=#666666 guibg=#1e1e1e guisp=#add8e6
    BufferLineSeparator { bg = "#1e1e1e", fg = "#161616", }, -- BufferLineSeparator xxx cterm= gui= guifg=#161616 guibg=#1e1e1e
    BufferLineDevIconLuaSelected { bg = "#282828", fg = "#51a0cf", }, -- BufferLineDevIconLuaSelected xxx cterm= gui= guifg=#51a0cf guibg=#282828
    lualine_x_filetype_DevIconLua_normal { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_normal xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_insert { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_insert xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_visual { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_visual xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_replace { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_replace xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_command { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_command xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_terminal { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_terminal xxx guifg=#51a0cf guibg=#707070
    lualine_x_filetype_DevIconLua_inactive { bg = "#707070", fg = "#51a0cf", }, -- lualine_x_filetype_DevIconLua_inactive xxx guifg=#51a0cf guibg=#707070
  }
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

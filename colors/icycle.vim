set background=light
highlight clear
syntax reset

let g:colors_name="icycle"
let colors_name="icycle"

" References
" https://vimdoc.sourceforge.net/htmldoc/syntax.html
" https://www.ditig.com/256-colors-cheat-sheet
" https://pintovim.dev
" https://coolors.co/generate

" COLORS
let s:white = { "gui": "#FFFFFF", "cterm": "15" }
let s:black = { "gui": "#000000", "cterm": "0" }

let s:eerie_black          = { "gui": "#1C1D21", "cterm": "235" }
let s:bright_gray          = { "gui": "#EBECF0", "cterm": "153" }
let s:philippine_gray      = { "gui": "#8C8C8C", "cterm": "224" }
let s:crayola              = { "gui": "#1A7AEA", "cterm": "33" }

let s:may_green            = { "gui": "#50A14F", "cterm": "76" }
let s:ultramarine_blue     = { "gui": "#4078F2", "cterm": "33" }
let s:fire_opal            = { "gui": "#E35749", "cterm": "166" }

let s:nyanza               = { "gui": "#E2FBE4", "cterm": "156" }
let s:lavender             = { "gui": "#E2ECFB", "cterm": "153" }
let s:piggy_pink           = { "gui": "#FCE2E5", "cterm": "217" }
let s:columbia_blue        = { "gui": "#CED8E7", "cterm": "152" }

let s:slate_gray           = { "gui": "#757A8C", "cterm": "239" }
let s:cadet_blue           = { "gui": "#ADB3C3", "cterm": "250" }
let s:alice_blue           = { "gui": "#F4F8FF", "cterm": "189" }

let s:jelly_bean_blue      = { "gui": "#437F97", "cterm": "67" }
let s:police_blue          = { "gui": "#355465", "cterm": "24" }
let s:lapis_azuli          = { "gui": "#376996", "cterm": "25" }
let s:dark_cornflower_blue = { "gui": "#1F487E", "cterm": "18" }
let s:celtic_blue          = { "gui": "#2264E8", "cterm": "26" }
let s:new_car              = { "gui": "#1C51CC", "cterm": "25" }
let s:azureish_white       = { "gui": "#DCE9FF", "cterm": "152"}
let s:dark_sky_blue        = { "gui": "#95B8D1", "cterm": "110" }
let s:steel_blue           = { "gui": "#4682B4", "cterm": "68" }
let s:baby_blue_eyes       = { "gui": "#9AD4FF", "cterm": "117" }
let s:denim                = { "gui": "#1560BD", "cterm": "25" }

let s:bg = s:white
let s:fg = s:black

function! s:h(group, fg, bg, attr)
    if type(a:fg) == type({})
        exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
    else
        exec "hi " . a:group . " guifg=NONE cterm=NONE"
    endif
    if type(a:bg) == type({})
        exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
    else
        exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    else
        exec "hi " . a:group . " gui=NONE cterm=NONE"
    endif
endfun

" Misc
"call s:h("CursorColumn", s:fg, "", "")
"call s:h("Conceal", s:fg, "", "")
"call s:h("Cursor", s:fg, "", "")
"call s:h("lCursor", s:fg, "", "")
"call s:h("CursorIM", s:fg, "", "")
call s:h("CursorColumn", "", s:alice_blue, "")
call s:h("CursorLine", "", s:alice_blue, "")
"call s:h("Directory", s:fg, "", "")
if &diff
    call s:h("DiffAdd", "", s:nyanza, "")
    call s:h("DiffChange", "", s:lavender, "")
    call s:h("DiffDelete", "", s:piggy_pink, "")
    call s:h("DiffText", "", s:columbia_blue, "")
else
    call s:h("DiffAdd", s:may_green, "", "bold")
    call s:h("DiffChange", s:ultramarine_blue, "", "bold")
    call s:h("DiffDelete", s:fire_opal, "", "bold")
    call s:h("DiffText", s:ultramarine_blue, "", "bold")
endif
call s:h("EndOfBuffer", s:bright_gray, "", "")
"call s:h("ErrorMsg", s:fg, "", "")
"call s:h("VertSplit", s:fg, "", "")
"call s:h("Folded", "", s:fg, "")
"call s:h("FoldColumn", s:fg, "", "")
call s:h("SignColumn", s:police_blue, "", "")
call s:h("IncSearch", s:police_blue, s:baby_blue_eyes, "")
call s:h("LineNr", s:cadet_blue, "", "")
"call s:h("LineNrAbove", "", "", "")
"call s:h("LineNrBelow", "", "", "")
call s:h("CursorLineNr", s:slate_gray, s:alice_blue, "")
call s:h("MatchParen", "", s:baby_blue_eyes, "")
"call s:h("ModeMsg", s:fg, "", "")
"call s:h("MoreMsg", s:fg, "", "")
call s:h("NonText", s:bright_gray, "", "")
call s:h("Pmenu", s:police_blue, s:alice_blue, "")
call s:h("PmenuSel", s:police_blue, s:azureish_white, "")
call s:h("PmenuSbar", "", s:dark_sky_blue, "")
call s:h("PmenuThumb", "", s:steel_blue, "")
"call s:h("Question", s:fg, "", "")
"call s:h("QuickFixLine", s:fg, "", "")
call s:h("Search", s:police_blue, s:baby_blue_eyes, "")
"call s:h("SpecialKey", s:fg, "", "")
"call s:h("SpellBad", s:fg, "", "")
"call s:h("SpellCap", s:fg, "", "")
"call s:h("SpellLocal", s:fg, "", "")
"call s:h("SpellRare", s:fg, "", "")
"call s:h("StatusLine", s:fg, "", "")
"call s:h("StatusLineNC", s:fg, "", "")
"call s:h("StatusLineTerm", s:fg, "", "")
"call s:h("StatusLineTermNC", s:fg, "", "")
"call s:h("TabLine", s:fg, "", "")
"call s:h("TabLineFill", s:fg, "", "")
"call s:h("TabLineSel", s:fg, "", "")
"call s:h("Terminal", s:fg, "", "")
"call s:h("Title", s:fg, "", "")
"call s:h("Visual", s:fg, "", "")
"call s:h("VisualNOS", s:fg, "", "")
"call s:h("WarningMsg", s:fg, "", "")
"call s:h("WildMenu", s:fg, "", "")

" Major
call s:h("Normal", s:police_blue, "", "italic")
call s:h("Comment", s:philippine_gray, "", "italic")
call s:h("Constant", s:crayola, "", "")
call s:h("Identifier", s:police_blue, "", "")
call s:h("Statement", s:lapis_azuli, "", "")
call s:h("PreProc", s:dark_cornflower_blue, "", "bold")
call s:h("Type", s:lapis_azuli, "", "")
call s:h("Special", s:police_blue, "", "")
call s:h("Underlined", s:police_blue, "", "")
call s:h("Ignore", s:police_blue, "", "")
call s:h("Error", s:police_blue, "", "")
call s:h("Todo", s:police_blue, "", "")

" Minor
call s:h("String", s:crayola, "", "")
call s:h("Character", s:crayola, "", "")
call s:h("Number", s:crayola, "", "")
call s:h("Boolean", s:celtic_blue, "", "")
call s:h("Float", s:crayola, "", "")
call s:h("Function", s:steel_blue, "", "")
call s:h("Conditional", s:denim, "", "bold")
call s:h("Repeat", s:denim, "", "bold")
call s:h("Label", s:lapis_azuli, "", "bold")
call s:h("Operator", s:crayola, "", "bold")
call s:h("Keyword", s:crayola, "", "")
call s:h("Exception", s:steel_blue, "", "bold")
"call s:h("Include", s:blue, "", "")
"call s:h("Define", s:blue, "", "")
"call s:h("Macro", s:dark_green, "", "bold")
"call s:h("PreCondit", s:blue, "", "")
call s:h("StorageClass", s:new_car, "", "")
call s:h("Structure", s:lapis_azuli, "", "")
"call s:h("Typedef", s:fg, "", "")
call s:h("SpecialChar", s:dark_sky_blue, "", "")
"call s:h("Tag", s:fg, "", "")
"call s:h("Delimiter", s:fg, "", "")
"call s:h("SpecialComment", s:fg, "", "")
"call s:h("Debug", s:fg, "", "")

" Dap
"call s:h("DapUINormal", s:police_blue, "", "")
"call s:h("DapUIVariable", s:police_blue, "", "")
call s:h("DapUIScope", s:dark_cornflower_blue, "", "bold")
call s:h("DapUIType", s:lapis_azuli, "", "")
call s:h("DapUIValue", s:dark_sky_blue, "", "")
call s:h("DapUIModifiedValue", s:crayola, "", "bold")
call s:h("DapUIDecoration", s:police_blue, "", "")
call s:h("DapUIThread", s:dark_sky_blue, "", "")
call s:h("DapUIStoppedThread", s:steel_blue, "", "")
"call s:h("DapUIFrameName", s:police_blue, "", "")
call s:h("DapUISource", s:dark_cornflower_blue, "", "bold")
call s:h("DapUILineNumber", s:cadet_blue, "", "")
"call s:h("DapUIFloatNormal", s:police_blue, "", "")
"call s:h("DapUIFloatBorder", s:police_blue, "", "")
"call s:h("DapUIWatchesEmpty", s:police_blue, "", "")
"call s:h("DapUIWatchesValue", s:police_blue, "", "")
"call s:h("DapUIWatchesError", s:police_blue, "", "")
call s:h("DapUIBreakpointsPath", s:dark_cornflower_blue, "", "bold")
call s:h("DapUIBreakpointsInfo", s:dark_sky_blue, "", "")
call s:h("DapUIBreakpointsCurrentLine", s:slate_gray, "", "")
call s:h("DapUIBreakpointsLine", s:cadet_blue, "", "")
"call s:h("DapUIBreakpointsDisabledLine", s:police_blue, "", "")
"call s:h("DapUICurrentFrameName", s:police_blue, "", "")
call s:h("DapUIStepOver", s:ultramarine_blue, "", "")
call s:h("DapUIStepInto", s:ultramarine_blue, "", "")
call s:h("DapUIStepBack", s:ultramarine_blue, "", "")
call s:h("DapUIStepOut", s:ultramarine_blue, "", "")
call s:h("DapUIStop", s:fire_opal, "", "")
call s:h("DapUIPlayPause", s:may_green, "", "")
call s:h("DapUIRestart", s:may_green, "", "")
"call s:h("DapUIUnavailable", s:police_blue, "", "")
"call s:h("DapUIWinSelect", s:police_blue, "", "")
"call s:h("DapUIEndOfBuffer", s:police_blue, "", "")
"call s:h("DapUINormalNC", s:police_blue, "", "")
"call s:h("DapUIPlayPauseNC", s:police_blue, "", "")
"call s:h("DapUIRestartNC", s:police_blue, "", "")
"call s:h("DapUIStopNC", s:police_blue, "", "")
"call s:h("DapUIUnavailableNC", s:police_blue, "", "")
"call s:h("DapUIStepOverNC", s:police_blue, "", "")
"call s:h("DapUIStepIntoNC", s:police_blue, "", "")
"call s:h("DapUIStepBackNC", s:police_blue, "", "")
"call s:h("DapUIStepOutNC", s:police_blue, "", "")


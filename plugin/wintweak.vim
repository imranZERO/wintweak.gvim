vim9script

if exists('g:loaded_wintweak') || !has('gui_win32') || v:version < 900
    finish
endif
g:loaded_wintweak = 1

import autoload 'wintweak.vim'

command! Wintweak wintweak.Wintweak()
command! WT wintweak.Wintweak()
command! WTFullScreen wintweak.ToggleFullScreen()
command! WTGUIOptions wintweak.ToggleGUIOptions()
command! -nargs=? WTTransparency wintweak.Transparency(<args>)
command! WTTopmost wintweak.ToggleTopmost()
command! WTCaption wintweak.ToggleCaption()
command! WTMaximize wintweak.ToggleMaximize()
command! WTCpicker wintweak.Cpicker()

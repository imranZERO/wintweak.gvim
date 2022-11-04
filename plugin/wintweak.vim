vim9script

if exists('g:loaded_wintweak') || !has('win32') || !has('gui_running') || v:version < 900
    finish
endif
g:loaded_wintweak = 1

import autoload 'wintweak.vim'

command! Wintweak wintweak.Wintweak()
command! WT wintweak.Wintweak()
command! WTFullScreen wintweak.ToggleFullScreen()
command! WTGUIOptions wintweak.ToggleGUIOptions()
command! WTTransparency wintweak.ToggleTransparency()
command! WTTopmost wintweak.ToggleTopmost()
command! WTCaption wintweak.ToggleCaption()
command! WTMaximize wintweak.ToggleMaximize()
command! WTCpicker wintweak.Cpicker()

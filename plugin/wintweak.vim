vim9script

if exists('g:loaded_wintweak') || !has('win32') || !has('gui_running') || v:version < 900
    finish
endif
g:loaded_wintweak = 1

import autoload 'wintweak.vim'

nnoremap <Plug>(Wintweak) <ScriptCmd>winteak#Wintweak()<cr>
nnoremap <Plug>(Wintweak_FullScreen) <ScriptCmd>wintweak#ToggleFullScreen()<cr>
nnoremap <Plug>(Wintweak_GUIOptions) <ScriptCmd>wintweak#ToggleGUIOptions()<cr>
nnoremap <Plug>(Wintweak_Transparency) <ScriptCmd>wintweak#ToggleTransparency()<cr>
nnoremap <Plug>(Wintweak_Topmost) <ScriptCmd>wintweak#ToggleTopmost()<cr>
nnoremap <Plug>(Wintweak_Caption) <ScriptCmd>wintweak#ToggleCaption()<cr>
nnoremap <Plug>(Wintweak_Maximize) <ScriptCmd>wintweak#ToggleMaximize()<cr>

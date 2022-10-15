vim9script

g:Fullscreen = 0
g:Alpha = 0
g:TopMost = 0
g:Caption = 1
g:Maximize = 1

var path = expand('<sfile>:p:h')

export def Wintweak(): void
    popup_menu([
        \ 'Gvim Enhancements', 'Color Picker', 'FullScreen', 'Maximize/Restore', 'Window Transparency',
        \ 'Topmost Window', 'Window Caption'],
        \ {filter: 'wintweak#WTPopupMenuFilter', callback: 'wintweak#WTGuiOpMenuhandler', title: 'GUI Options'})
enddef

export def WTPopupMenuFilter(id: number, key: string): bool
    if key == '\<esc>' || key == 'q'
        popup_close(id, 0)
        return false
    endif
    return popup_filter_menu(id, key)
enddef

export def WTGuiOpMenuhandler(id: number, result: number): void
    if result == 1
        ToggleGUIOptions()
    elseif result == 2
        Cpicker()
    elseif result == 3
        ToggleFullScreen()
    elseif result == 4
        ToggleMaximize()
    elseif result == 5
        ToggleTransparency()
    elseif result == 6
        ToggleTopmost()
    elseif result == 7
        ToggleCaption()
    endif
enddef

$CPICKER = expand('<sfile>:p:h:h') .. "\\bin\\cpicker.exe"

export def Cpicker(): void
    @+ = system("%CPICKER%")
    exec "normal \"+p"
enddef

export def ToggleFullScreen(): void
    if g:Fullscreen == 0
        g:Fullscreen = 1
        libcallnr(path .. "/../bin/wintweak.dll", "ToggleFullScreen", 1)
    else
        g:Fullscreen = 0
        libcallnr(path .. "/../bin/wintweak.dll", "ToggleFullScreen", 0)
    endif
enddef

export def ToggleTransparency(): void
    if g:Alpha == 0
        g:Alpha = 1
        libcallnr(path .. "/../bin/wintweak.dll", "SetAlpha", 220)
    else
        g:Alpha = 0
        libcallnr(path .. "/../bin/wintweak.dll", "SetAlpha", 255)
    endif
enddef

export def ToggleGUIOptions(): void
    if &guioptions == 'i'
        set guioptions=imTrL
    else
        set guioptions=i
    endif
enddef

export def ToggleTopmost(): void
    if g:TopMost == 0
        g:TopMost = 1
        libcallnr(path .. "/../bin/wintweak.dll", "EnableTopMost", 1)
    else
        g:TopMost = 0
        libcallnr(path .. "/../bin/wintweak.dll", "EnableTopMost", 0)
    endif
enddef

export def ToggleCaption(): void
    if g:Caption == 0
        g:Caption = 1
        libcallnr(path .. "/../bin/wintweak.dll", "EnableCaption", 1)
    else
        g:Caption = 0
        libcallnr(path .. "/../bin/wintweak.dll", "EnableCaption", 0)
    endif
enddef

export def ToggleMaximize(): void
    if g:Maximize == 0
        g:Maximize = 1
        libcallnr(path .. "/../bin/wintweak.dll", "EnableMaximize", 1)
    else
        g:Maximize = 0
        libcallnr(path .. "/../bin/wintweak.dll", "EnableMaximize", 0)
    endif
enddef

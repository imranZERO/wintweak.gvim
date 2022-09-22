vim9script

if exists('g:loaded_wintweak') || !has('win32') || v:version < 900
    finish
endif
g:loaded_wintweak = 1

if has('gui_running')
    g:Fullscreen = 0
    g:Alpha = 0
    g:TopMost = 0
    g:Caption = 1

    def g:Wintweak(): void
        popup_menu([
            \ 'Toggle FullScreen', 'Toggle Gvim Enhancements', 'Toggle Window Transparency', 'Toggle Window Topmost', 'Toggle Caption'],
            \ {filter: 'g:WTPopupMenuFilter', callback: 'g:WTGuiOpMenuhandler', title: 'GUI Options'})
    enddef

    def g:WTPopupMenuFilter(id: number, key: string): bool
        if key == '\<esc>' || key == 'q'
            popup_close(id, 0)
            return false
        endif
        return popup_filter_menu(id, key)
    enddef

    def g:WTGuiOpMenuhandler(id: number, result: number): void
        if result == 1
            g:ToggleFullScreen()
        elseif result == 2
            g:ToggleGUIOptions()
        elseif result == 3
            g:ToggleTransparency()
        elseif result == 4
            g:ToggleTopmost()
        elseif result == 5
            g:ToggleCaption()
        endif
    enddef

    def g:ToggleFullScreen(): void
        if g:Fullscreen == 0
            g:Fullscreen = 1
            libcallnr("wintweak.dll", "ToggleFullScreen", 1)
        else
            g:Caption = 0
            libcallnr("wintweak.dll", "ToggleFullScreen", 0)
        endif
    enddef

    def g:ToggleTransparency(): void
        if g:Alpha == 0
            g:Alpha = 1
            libcallnr("wintweak.dll", "SetAlpha", 220)
        else
            g:Alpha = 0
            libcallnr("wintweak.dll", "SetAlpha", 255)
        endif
    enddef

    def g:ToggleGUIOptions(): void
        if &guioptions == 'i'
            set guioptions=imTrL
        else
            set guioptions=i
        endif
    enddef

    def g:ToggleTopmost(): void
        if g:TopMost == 0
            g:TopMost = 1
            libcallnr("wintweak.dll", "EnableTopMost", 1)
        else
            g:TopMost = 0
            libcallnr("wintweak.dll", "EnableTopMost", 0)
        endif
    enddef

    def g:ToggleCaption(): void
        if g:Caption == 0
            g:Caption = 1
            libcallnr("wintweak.dll", "EnableCaption", 1)
        else
            g:Caption = 0
            libcallnr("wintweak.dll", "EnableCaption", 0)
        endif
    enddef

    nnoremap <Plug>(Wintweak) :call Wintweak()<cr>
    nnoremap <Plug>(Wintweak_FullScreen) :call ToggleFullScreen()<cr>
    nnoremap <Plug>(Wintweak_GUIOptions) :call ToggleGUIOptions()<cr>
    nnoremap <Plug>(Wintweak_Transparency) :call ToggleTransparency()<cr>
    nnoremap <Plug>(Wintweak_Topmost) :call ToggleTopmost()<cr>
    nnoremap <Plug>(Wintweak_Caption) :call ToggleCaption()<cr>

    nmap <silent> <F10> <Plug>(Wintweak)
endif

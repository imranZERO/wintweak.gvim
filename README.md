wintweak.gvim
=============

Vim9 plugin for extra GUI options in Windows GVim.

Features
--------

- True full screen support.
- RGB color picker.
- Transparency.
- Topmost sticky window.
- Maximize/Restore.
- Toggle window caption/titlebar.
- Toggle GVim enhancements (menu, toolbar, scrollbar)

Installation
------------

Requirements: `GVim 9.0`, `Windows 7+`, `.NET Framework 2+`

Use your preferred plugin manager or vim's built-in package management; see `:help packages` for more information.

Usage
-----

Create a keymap like this to open the popup menu:

```vim
nmap <silent> <KEY> <Plug>(Wintweak)
```

Press `<KEY>` to open the popup menu; type `<ESC>` or `q` to quit.

To map the individual functions:

```vim
nmap <silent> <KEY> <Plug>(Wintweak)
nmap <silent> <KEY> <Plug>(Wintweak_FullScreen)
nmap <silent> <KEY> <Plug>(Wintweak_GUIOptions)
nmap <silent> <KEY> <Plug>(Wintweak_Transparency)
nmap <silent> <KEY> <Plug>(Wintweak_Topmost)
nmap <silent> <KEY> <Plug>(Wintweak_Caption)
nmap <silent> <KEY> <Plug>(Wintweak_Maximize)
nmap <silent> <KEY> <Plug>(Wintweak_Cpicker)
```

Example configuration:
----------------------

```vim
" Popup menu
nnoremap <F10> <Plug>(Wintweak)

" Toggle fullscreen
nnoremap <m-cr> <Plug>(Wintweak_FullScreen)

" RGB Color Picker (normal mode)
nnoremap <m-c> <Plug>(Wintweak_Cpicker)

" RGB Color Picker (insert mode)
inoremap <m-c> <Esc><Plug>(Wintweak_Cpicker)

" and any other wintweak functions.
```

Thanks
------

To [mattn](https://github.com/mattn) & [derekmcloughlin](https://github.com/derekmcloughlin) for the C functions included, [jaxbot](https://github.com/jaxbot) for the .NET code.

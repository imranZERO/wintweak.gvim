wintweak.gvim
=============

Vim9 plugin for extra GUI options in Windows GVim.

Features
--------

- True full screen support.
- Transparency.
- Topmost sticky window.
- Toggle window caption/titlebar.
- Toggle GVim enhancements (menu, toolbar, scrollbar)

Installation
------------

Requirements: `Windows XP+`, `Vim 9.0`, `GVim`

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
```

Thanks
------

To mattn & derekmcloughlin for the C functions included.

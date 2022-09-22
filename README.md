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

After installing the plugin, go to the directory where you installed it and copy `bin\wintweak.dll` to a directory in your path.

Usage
-----

Press `<F10>` to open the popup menu; type `<ESC>` or `q` to quit.

To change it from the default:

```vim
nmap <silent> <KEY> <Plug>(Wintweak)
```

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

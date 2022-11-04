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

**NOTE:** Only 64-bit precompiled DLL's are provided; if you want to use 32-bit, you have to compile it yourself. Run `make` to build with MinGW or `build.bat` to use MSVC.

Usage
-----

Type `:Wintweak` or `:WT` to open the popup menu with all of the options, `<ESC>` or `q` to close it.

To execute the individual functions:

```vim
:Wintweak
:WTFullScreen
:WTGUIOptions
:WTTransparency
:WTTopmost
:WTCaption
:WTMaximize
:WTCpicker
```

Example keymaps:
----------------

```vim
" Popup menu
nnoremap <F10> <Cmd>Wintweak<cr>

" Toggle fullscreen
nnoremap <m-cr> <Cmd>WTFullScreen<cr>

" RGB Color Picker (normal mode)
nnoremap <m-c> <Cmd>WTCpicker<cr>

" RGB Color Picker (insert mode)
inoremap <m-c> <Esc><Cmd>WTCpicker<cr>

" and any other wintweak functions.
```

Thanks
------

To [mattn](https://github.com/mattn) & [derekmcloughlin](https://github.com/derekmcloughlin) for the C functions included, [jaxbot](https://github.com/jaxbot) for the .NET code.

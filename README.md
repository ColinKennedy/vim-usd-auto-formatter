vim-usd-auto-formatter is a Vim plugin that cleans and aligns USD code,
automatically.

## Demo
[![asciicast](https://asciinema.org/a/251922.svg)](https://asciinema.org/a/251922)


## Installation
Use your plugin manager to add this plugin to Vim.

### vim-plug
```vim
Plug 'ColinKennedy/vim-usd-auto-formatter'
nmap <leader>f <Plug>VimUsdLintFormatCurrentBuffer
```

### Vundle
```vim
Plugin 'ColinKennedy/vim-usd-auto-formatter'
nmap <leader>f <Plug>VimUsdLintFormatCurrentBuffer
```


## Requirements
- Must have USD compiled
- `usdcat` (or another equivalent executable) command must be available
in your PATH environment variable. `usdcat` is used to convert to and
from binary.


## Options

|     Variable     |                                 Description                                 | Default  |
|------------------|-----------------------------------------------------------------------------|----------|
| g:usdcat_command | The executable that will be used to convert to and from USD crate (binary)  | "usdcat" |


## How does it work?
Basically, this plugin is a hack that runs `usdcat` on Vim buffers and
replaces the buffer with its ASCII representation. This has the effect
of "formatting" the USD code in a deterministic and clean way. Pretty
cool, huh?

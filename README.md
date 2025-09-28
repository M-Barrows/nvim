# Welcome! 
This repo serves as a quick way to install my NeoVim configuration. Initially, this was cobbled together by following the tutorial series by `typecraft` over on [YouTube](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn). However, I have made some changes to fit my needs (including bolting on some config from [Kickstart Neovim](https://github.com/nvim-lua/kickstart.nvim/tree/master)). 

# Manual Installation Steps
While I try to make this config as plug and play as possible, I will list any manual steps required here for my reference in the future.

1. [Install Neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#pre-built-archives-2)

1. Install tools with Mason:
    `:Mason <Enter> 2 <C-f> Python` -> install `pyright` 
    `5` -> install `ruff` 
    `<C-f> Lua` -> install `stylua`

2. Install pyright with NPM: 
    In a normal terminal: `npm install -g pyright`

# Welcome! 
This repo serves as a quick way to install my NeoVim configuration. Initially, this was cobbled together by following the tutorial series by `typecraft` over on [YouTube](https://www.youtube.com/playlist?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn). However, I have made some changes to fit my needs. 

# Manual Installation Steps
While I try to make this config as plug and play as possible, I will list any manual steps required here for my reference in the future. 

1. Install formatters with Mason: 
    `:Mason <Enter> 5 <C-f> Python` -> Search for python formatters and install `black` 
    `:Mason <Enter> 4 <C-f> Python` -> Search for python linters and install `pylint` 
    `:Mason <Enter> 5 <C-f> Lua` -> Search for lua formatters and install `stylua`

2. Install pyright with NPM: 
    In a normal terminal: `npm install -g pyright`

# My Neovim Configuration

Welcome to my Neovim configuration repository. This setup is designed to enhance productivity and provide a modern and efficient editing experience.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Directory Structure](#directory-structure)
- [Plugins](#plugins)
- [Keybindings](#keybindings)
- [Customizations](#customizations)
- [Screenshots](#screenshots)
- [Credits](#credits)

## Introduction

This Neovim configuration aims to provide a seamless development experience with useful plugins, intuitive keybindings, and a clean, aesthetic interface.

## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim


## Install Neovim (if not already installed):
        For Ubuntu:

        sh 
sudo apt install neovim



Open Neovim and run:

sh

    :LazyInstall

## Directory Structure

The configuration is organized as follows:


~/.config/nvim/
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── diagnostic.lua
│   │   ├── init.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   ├── options.lua
│   │   └── usercmds.lua
│   ├── fbombi
│   └── plugins
├── .gitignore
├── init.lua
└── lazy-lock.json

## Description of Key Files and Directories

- lua/config/: Contains various configuration files.
- autocmds.lua: Auto commands configuration.
- diagnostic.lua: Diagnostic settings.
- init.lua: Main initialization file for Lua configurations.
- keymaps.lua: Custom key mappings.
- lazy.lua: Lazy loading configurations for plugins.
- options.lua: General options and settings.
- usercmds.lua: User-defined commands.
- lua/fbombi/: Personal or project-specific configurations.
- lua/plugins/: Plugin configurations.
- init.lua: Main initialization file for Neovim.
- lazy-lock.json: Lockfile for lazy-loaded plugins.

##  Keybindings

Custom keybindings are set up to improve navigation and efficiency. Here are some of the keybindings used:


| Keybinding          | Description                                              | Plugin/Area             |
|---------------------|----------------------------------------------------------|-------------------------|
| `<leader>nh`        | Clear search highlights                                  | Vim Navigation          |
| `<leader>p`         | Special paste, paste without replacing copy register content (visual mode) | Vim Editing      |
| `<leader>bd`        | Deletes the current buffer                               | Vim Navigation          |
| `<` (visual mode)   | Indent out and keep the selection                        | Vim Editing             |
| `>` (visual mode)   | Indent in and keep the selection                         | Vim Editing             |
| `n`                 | Go to next result on the search and put the cursor in the middle of the screen | Vim Navigation |
| `N`                 | Go to previous result on the search and put the cursor in the middle of the screen | Vim Navigation |
| `J`                 | Join lines and keep the cursor in the same place         | Vim Editing             |
| `<leader>env`       | Open .env file in a vertical split                       | File Navigation         |
| `<leader><leader>x` | Save the current file and source it for .vim and .lua files | Vim Editing          |
| `<leader>vn`        | Go to next diagnostic error                              | LSP/Vim Navigation      |
| `<leader>vp`        | Go to previous diagnostic error                          | LSP/Vim Navigation      |
| `<leader>sv`        | Split window vertically                                  | Vim Navigation          |
| `<leader>sh`        | Split window horizontally                                | Vim Navigation          |
| `<leader>se`        | Make splits equal size                                   | Vim Navigation          |
| `<leader>sx`        | Close current split                                      | Vim Navigation          |
| `<leader>to`        | Open new tab                                             | Vim Navigation          |
| `<leader>tx`        | Close current tab                                        | Vim Navigation          |
| `<leader>tn`        | Go to next tab                                           | Vim Navigation          |
| `<leader>tp`        | Go to previous tab                                       | Vim Navigation          |
| `<leader>tf`        | Open current buffer in new tab                           | Vim Navigation          |
| `<leader>wr`        | Restore session for current working directory           | Vim Navigation          |
| `<leader>ws`        | Save session for auto session root directory             | Vim Navigation          |
| `gcc`               | Comment the current line                                 | Commentary              |
| `gc`                | Comment the selected text                                | Commentary              |
| `<leader>mp`        | Format the file or selected range (in visual mode)       | Code Formatting         |
| `<leader>hs`        | Stage the current hunk                                   | Git Integration         |
| `<leader>hu`        | Undo stage the current hunk                              | Git Integration         |
| `<leader>hr`        | Reset the current hunk                                   | Git Integration         |
| `<leader>hp`        | Preview the current hunk                                 | Git Integration         |
| `<leader>hj`        | Jump to the next hunk                                    | Git Integration         |
| `<leader>hk`        | Jump to the previous hunk                                | Git Integration         |
| `<leader>ss`        | Open Harpoon Menu                                        | File Navigation         |
| `<leader>sa`        | Harpoon: Add file                                        | File Navigation         |
| `<leader>st`        | Harpoon: Add terminal                                    | Terminal                |
| `<leader>lg`        | Open lazy git                                            | Git Integration         |
| `<C-p>`             | Select previous item in completion menu                  | Completion Engine       |
| `<C-n>`             | Select next item in completion menu                      | Completion Engine       |
| `<C-y>`             | Confirm and select current completion item               | Completion Engine       |
| `<C-Space>`         | Trigger completion                                       | Completion Engine       |
| `<leader>n`         | Add comment to the near possible object                  | Commentary              |
| `<leader>ee`        | Toggle file explorer                                     | File Navigation         |
| `<leader>ef`        | Toggle file explorer on current file                     | File Navigation         |
| `<leader>ec`        | Collapse file explorer                                   | File Navigation         |
| `<leader>er`        | Refresh file explorer                                    | File Navigation         |
| `a=`                | Select outer part of an assignment                       | Text Objects/Code Editing |
| `i=`                | Select inner part of an assignment                       | Text Objects/Code Editing |
| `l=`                | Select left hand side of an assignment                   | Text Objects/Code Editing |
| `r=`                | Select right hand side of an assignment                  | Text Objects/Code Editing |
| `a:`                | Select outer part of an object property                  | Text Objects/Code Editing |
| `i:`                | Select inner part of an object property                  | Text Objects/Code Editing |
| `l:`                | Select left part of an object property                   | Text Objects/Code Editing |
| `r:`                | Select right part of an object property                  | Text Objects/Code Editing |
| al           | Select outer part of a loop                           | Plugin: textobjects        |
| il           | Select inner part of a loop                           | Plugin: textobjects        |
| af           | Select outer part of a function call                  | Plugin: textobjects        |
| if           | Select inner part of a function call                  | Plugin: textobjects        |
| am           | Select outer part of a method/function definition     | Plugin: textobjects        |
| im           | Select inner part of a method/function definition     | Plugin: textobjects        |
| ac           | Select outer part of a class                          | Plugin: textobjects        |
| ic           | Select inner part of a class                          | Plugin: textobjects        |
| na           | Swap parameters/argument with next                    | Plugin: textobjects        |
| n:           | Swap object property with next                        | Plugin: textobjects        |
| nm           | Swap function with next                               | Plugin: textobjects        |
| pa           | Swap parameters/argument with previous                | Plugin: textobjects        |
| p:           | Swap object property with previous                    | Plugin: textobjects        |
| pm           | Swap function with previous                            | Plugin: textobjects        |
| ]f           | Go to next function call start                        | Plugin: textobjects        |
| ]m           | Go to next method/function def start                  | Plugin: textobjects        |
| ]c           | Go to next class start                                | Plugin: textobjects        |
| ]i           | Go to next conditional start                          | Plugin: textobjects        |
| ]l           | Go to next loop start                                 | Plugin: textobjects        |
| ]s           | Go to next scope                                      | Plugin: textobjects        |
| ]z           | Go to next fold                                       | Plugin: textobjects        |
| ]F           | Go to next function call end                          | Plugin: textobjects        |
| ]M           | Go to next method/function def end                    | Plugin: textobjects        |
| ]C           | Go to next class end                                  | Plugin: textobjects        |
| ]I           | Go to next conditional end                            | Plugin: textobjects        |
| ]L           | Go to next loop end                                   | Plugin: textobjects        |
| [f           | Go to previous function call start                    | Plugin: textobjects        |
| [m           | Go to previous method/function def start              | Plugin: textobjects        |
| [c           | Go to previous class start                            | Plugin: textobjects        |
| [i           | Go to previous conditional start                      | Plugin: textobjects        |
| [l           | Go to previous loop start                             | Plugin: textobjects        |
| [F           | Go to previous function call end                      | Plugin: textobjects        |
| [M           | Go to previous method/function def end                | Plugin: textobjects        |
| [C           | Go to previous class end                              | Plugin: textobjects        |
| [I           | Go to previous conditional end                        | Plugin: textobjects        |
| [L           | Go to previous loop end                               | Plugin: textobjects        |
| ;            | Repeat last move in the direction you were moving     | Plugin: nvim-treesitter    |
| ,            | Repeat last move in the opposite direction            | Plugin: nvim-treesitter    |
| f            | Repeat last move for 'f' character search             | Plugin: nvim-treesitter    |
| F            | Repeat last move for 'F' character search             | Plugin: nvim-treesitter    |
| t            | Repeat last move for 't' character search             | Plugin: nvim-treesitter    |
| T            | Repeat last move for 'T' character search             | Plugin: nvim-treesitter    |
| rr           | Refactoring menu                                      | Plugin: telescope          |
| ff           | Find files                                            | Plugin: telescope          |
| fg           | Find on Git files                                     | Plugin: telescope          |
| pws          | Find in the project a word                            | Plugin: telescope          |
| pWs          | Find current word                                     | Plugin: telescope          |
| ps           | Find a random word                                    | Plugin: telescope          |
| fh           | Find in help database                                 | Plugin: telescope          |
| fl           | Find word live                                        | Plugin: telescope          |
| fb           | Find buffers                                          | Plugin: telescope          |
| `<c-h>`      | TmuxNavigateLeft                                      | Plugin: Tmux Navigation    |
| `<c-j>`      | TmuxNavigateDown                                      | Plugin: Tmux Navigation    |
| `<c-k>`      | TmuxNavigateUp                                        | Plugin: Tmux Navigation    |
| `<c-\>`      | TmuxNavigatePrevious                                   | Plugin: Tmux Navigation    |
| ]t           | Jump to next TODO                                      | Plugin: todo-comments      |
| [t           | Jump to prev TODO                                      | Plugin: todo-comments      |
| `<leader>xt` | Open/close trouble list                                | Plugin: Trouble            |
| `<leader>xw` | Open trouble workspace diagnostics                     | Plugin: Trouble            |
| `<leader>xd` | Open trouble document diagnostics                      | Plugin: Trouble            |
| `<leader>xq` | Open trouble quickfix list                             | Plugin: Trouble            |
| `<leader>xl` | Open trouble location list                             | Plugin: Trouble            |
| `<leader>xt` | Open todos in trouble                                  | Plugin: Trouble            |
| `<leader>u`  | Display Undotree                                       | Plugin: undotree           |
| `<leader>gt` | Git Worktree switch                                    | Plugin: telescope          |
| `<leader>gn` | Git Worktree new branch                                | Plugin: telescope          |
| `<leader>zz` | Toggle Zen mode                                        | Plugin: zen-mode           |
| `<leader>zZ` | Toggle Zen mode (wide)                                 | Plugin: zen-mode           |

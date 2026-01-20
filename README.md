# Neovim-Config

## Introduction

My neovim configuration for development. I develop in a variety of languages
including Python, C++, and TypeScript.
I also write lots and lots of Markdown files. This configuration is optimized
for these tasks. This configuration is perpetually incomplete, so I intend on
updating it frequently, especially with respect to Neovim's agentic coding plugins.

## Installation

To fully install this configuration, git clone this repository into your Neovim
configuration directory:

```bash
git clone ~/.config/nvim
```

However, configurations are very personal, so you may want to cherry-pick
specific files from this repository rather than cloning the whole thing.

> [!NOTE]
> This configuration depends on other tools such as `npm`, `cowsay` and `fortune`.
You may want to install these separately.
> On macOS (my current development environment), you can use Homebrew:
>
> ```bash
> brew install node cowsay fortune
> ```

## Organization

The configuration is organized as follows:

* `init.lua`: The main configuration file that sets up basic options and loads plugins.
* `lua/`: Contains Lua modules for various configurations and plugin setups.
  * `config/`: Contains general configuration settings, including keymaps and
    startup code.
  * `plugins/`: Contains plugin configurations.

## Features

* Plugin management with `lazy.nvim`.
* Language Server Protocol (LSP) using `coc.nvim` for:
  * C/C++
  * Go
  * Haskell
  * HTML/CSS
  * Java
  * JSON
  * Lua
  * Markdown
  * Python
  * R
  * SQL
  * TypeScript/JavaScript
* Syntax highlighting using `nvim-treesitter`.
* Custom key mappings for efficient navigation and editing.
* QoL utilities using `snacks.nvim`.
* Integration with external tools like `cowsay` and `fortune` for fun startup messages.
* AI tab completion with GitHub Copilot's `copilot.vim`.
* Agent integration and code generation with `avante.nvim` with the following
provider support:
  * KAT Coder
  * Qwen Coder
  * GLM Air
  * Grok Fast
  * Groq Compound

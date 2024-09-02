# Setup

## Install [catimg](https://github.com/posva/catimg)
- This will allow you to view images in the terminal
- Install using your package manager (eg brew install catimg)

## Make sure to install the debuggers you need
- delve for golang
- rspec and debug gems for ruby

## Add any formatters you're using to: `lua/custom/plugins/formatting.lua`

## Use :LspInstall to install the language server for the file you're currently viewing
- You can also use :LspInfo to check if a language server is already installed

## Use :checkhealth to check what errors come up with installation

## Make sure to install a font that includes icons:
- https://www.nerdfonts.com/font-downloads

## (Optional) Setup copilot
- Enable copilot by opening `./lua/custom/plugins/ai.lua` and removing the line `enabled = false,`.

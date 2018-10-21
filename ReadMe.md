
This is an example plugin showing how to use the [MoonMaker](https://github.com/svermeulen/nvim-moonmaker) plugin.  This plugin will not work without it, because otherwise the moon directory will not be compiled.

If you edit the `HelloWorld.moon` file in the moon directory, then restart neovim, then hit `<leader>hw` then it should display the changes you've made, without needing to manually compile the moon file. Alternatively, instead of restarting neovim, call `:MoonCompile` which will update any lua files in any plugin directory that are out of date.

We use `require` in the binding so that neovim will only actually load the lua file when it's first used, and then after that it will use the cached copy of it.  This works because Neovim looks for lua files in 'lua' directory of every plugin that is on the `&runtimepath`.  See `h lua` for details.


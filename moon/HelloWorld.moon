
class HelloWorld
  run: (name) ->
    vim.api.nvim_command("echom 'Hello #{name}'")

-- This will be returned implicitly anyway but included here to help explain how require works
return HelloWorld

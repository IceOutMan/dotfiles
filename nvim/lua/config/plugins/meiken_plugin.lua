vim.cmd('command! Hello lua hello()')

function hello()
    print("this is meiken plugin")
    -- print(vim.inspect(package.loaded))
    vim.cmd('echo 111')
end

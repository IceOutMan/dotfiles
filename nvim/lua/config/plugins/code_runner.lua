return {
    "CRAG666/code_runner.nvim",
    config = function()
        require('code_runner').setup({
            filetype = {
                java = {
                    "cd $dir &&",
                    "javac $fileName &&",
                    "java $fileNameWithoutExt"
                },
                python = "python3 -u",
                go = {
                    "cd $dir &&",
                    "go run $fileName"
                },
                lua = {
                    "cd $dir &&",
                    "lua $fileName"
                },
                typescript = "deno run",
                rust = {
                    "cd $dir &&",
                    "rustc $fileName &&",
                    "$dir/$fileNameWithoutExt"
                },
            },
        })
    end
}
vim.api.nvim_create_user_command("LuaInspect", function(opts)
    local expr = opts.args

    local ok, result = pcall(function()
        return load("return " .. expr)()
    end)

    local lines
    if ok then
        lines = vim.split(vim.inspect(result), "\n")
    else
        lines = { "Error evaluating expression:", result }
    end

    vim.cmd("new")
    vim.bo.buftype = "nofile"
    vim.bo.bufhidden = "wipe"
    vim.bo.swapfile = false
    vim.bo.filetype = "lua"

    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

    vim.bo.modifiable = false
    vim.bo.readonly = true
end, {
    nargs = 1,
    complete = "lua"
})

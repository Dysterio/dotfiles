local M = {}

function M.get_namespace()
    local dir_path = vim.fs.normalize(vim.fn.expand("%:p:h"))
    local csproj = vim.fs.find(
        function(name) return name:match("%.csproj$") end,
        { path = dir_path, upward = true }
    )[1]

    local project_name = ""
    local subfolder_path = ""

    if csproj then
        project_name = vim.fn.fnamemodify(csproj, ":t:r")
        local csproj_dir = vim.fs.normalize(vim.fn.fnamemodify(csproj, ":h"))

        if vim.startswith(dir_path, csproj_dir) and #dir_path > #csproj_dir then
            subfolder_path = dir_path:sub(#csproj_dir + 2)
        end
    else
        project_name = vim.fn.fnamemodify(dir_path, ":t")
    end

    if subfolder_path == "" or subfolder_path == "." then
        return project_name
    else
        local formatted_subfolder_path = subfolder_path:gsub("/", "."):gsub("\\", ".")
        return project_name .. "." .. formatted_subfolder_path
    end
end

function M.get_file_name()
    return vim.fn.expand("%:t:r")
end

return M

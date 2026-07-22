oh-my-posh init pwsh --config C:/Projects/dotfiles/ohmyposh/config.toml | Invoke-Expression

$PSStyle.FileInfo.Directory = $PSStyle.Foreground.BrightBlue
Set-PSReadLineOption -Colors @{
    Parameter = "#fe8019"
    Operator = "#fabd2f"
}

Invoke-Expression (& { (zoxide init powershell | Out-String) })

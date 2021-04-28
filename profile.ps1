<#
    .SYNOPSIS
        Profile File
    .DESCRIPTION
        Profile File
    .NOTES
        0day-bot
		@MulhernIan
#>

#  PSReadLine
Import-Module -Name PSReadline

if (Get-Module -name PSReadline) {
    # Set Shortcuts for History Search
    #  Start typing, for example "Get-" then press up and down arrow, it'll show all
    #  commands in my story that started by "Get-"
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
    Set-PSReadlineOption -EditMode Windows
}
try{
Import-Module PoshColor
}catch{
Install-Module PoshColor
}

#Aliases
Set-Alias -Name npp -Value notepad++.exe
Set-Alias -Name ll -Value Get-ChildItem -Force
Set-Alias -Name grep -Value Select-String

#Functions 
#prompt
function prompt {
    Write-Output "PS [$(whoami)] $((get-location).Path) ~> "
}

Write-Host "$(Get-DAte)" -ForeGroundColor Green

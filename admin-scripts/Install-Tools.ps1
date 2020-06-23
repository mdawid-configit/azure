$choco_tools_file = ".\choco-tool-list.json";
$choco_tools_list = Get-Content $choco_tools_file | ConvertFrom-Json

foreach ($tool in $choco_tools_list.AppList)
{
    Write-Host "Installing $($tool.friendlyname)"
    choco install $tool.choconame --yes
}
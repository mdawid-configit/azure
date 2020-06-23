$features_file = ".\iis-feature-list.json";
$features = Get-Content $features_file | ConvertFrom-Json

foreach ($feature in $features.IISFeatures)
{
    Write-Host "Enabling IIS-Feature $($feature)"
    Enable-WindowsOptionalFeature -Online -FeatureName $feature
}
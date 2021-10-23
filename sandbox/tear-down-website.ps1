$WebSiteName = "App.ProjectsAdministration"
$AppPoolName = "App.ProjectsAdministration"

$WebSiteIISPath = "IIS:\Sites\$WebSiteName"
$AppPoolIISPath = "IIS:\AppPools\$AppPoolName"

if (Test-Path $WebSiteIISPath) {
    Write-Host "Starting to...remove the web site $WebSiteName"
    Remove-Website -Name $WebSiteName -WarningAction SilentlyContinue
} else {
    Write-Host "Website $WebSiteName already exists."
}

if (Test-Path $AppPoolIISPath) {
    Write-Host "Starting to...remove the application pool $AppPoolName"
    Remove-WebAppPool -Name $WebSiteName -WarningAction SilentlyContinue
} else {
    Write-Host "Application pool $AppPoolName already exists."
}
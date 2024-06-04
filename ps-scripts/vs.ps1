# Set-Alias vs {path}\vs.ps1 (set in $PROFILE.AllUsersCurrentHost)

$solutionFile = Get-ChildItem -Filter *.sln | Select-Object -First 1
if ($solutionFile) {
    Write-Host "Running solution: $($solutionFile.Name)"
    Start-Process -FilePath $solutionFile.FullName
} else {
    Write-Host "No solution file found in the directory."
}
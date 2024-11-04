# Set-Alias vs {path}\rid.ps1 (set in $PROFILE.AllUsersCurrentHost)

$solutionFile = Get-ChildItem -Filter *.sln | Select-Object -First 1
if ($solutionFile) {
    Write-Host "Running solution: $($solutionFile.Name)"
    
    # Replace with the path to the Rider executable
    $riderPath = "C:\Program Files\JetBrains\JetBrains Rider 2024.2.7\bin\rider64.exe"
    
    # Open the solution file in Rider
    Start-Process -FilePath $riderPath -ArgumentList $solutionFile.FullName
} else {
    Write-Host "No solution file found in the directory."
}
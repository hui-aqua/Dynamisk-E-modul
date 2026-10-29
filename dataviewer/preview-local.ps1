param(
    [int]$Port = 8000
)

$ErrorActionPreference = 'Stop'
$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$python = Get-Command python -ErrorAction SilentlyContinue
if (-not $python) {
    $python = Get-Command py -ErrorAction SilentlyContinue
}
if (-not $python) {
    throw 'Python was not found. Install Python 3 or add python to PATH.'
}

$url = "http://localhost:$Port/dataviewer/"
Write-Host "Serving local preview at $url"
Write-Host 'Keep this window open while previewing. Press Ctrl+C to stop the server.'
Start-Process $url

if ($python.Name -eq 'py.exe') {
    & $python.Source -3 -m http.server $Port --directory $projectRoot
} else {
    & $python.Source -m http.server $Port --directory $projectRoot
}

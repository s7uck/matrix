param($salt = (" ", "0", "1"), $colors = ("Green", "Red", "Yellow"), $length = 104000, $path = $env:path)
$mode = $args[0]
$syspath = ($env:path.Split(';') | Select-Object -Last 1)
if ($path -eq $env:path) { $path = $syspath }

function Install-ToPath($path = $path) {
	if ($path -eq $syspath) {
		Write-Warning "You are about to install matrix to the system path $path, which was automatically detected by the program. This may cause issues with your system or other programs."
		$prompt = Read-Host "Select a different path, or press enter to continue anyway and install in $path"
		if (-not ($prompt -eq "")) { Install-ToPath -installPath $prompt }
	}
	Copy-Item ./matrix.ps1 $path
}

function Write-RandomDigit($salt = $salt, $colors = $colors) {
	Write-Host (Get-Random $salt) -NoNewLine -ForegroundColor (Get-Random $colors)
}

function global:Write-RandomDigits($length = $length) {
	[int]$i = 0
	while ($i -lt $length) {
		$i += 1
		Write-RandomDigit
	}
}

switch ($mode) {
	'-install' { Install-ToPath }
	Default { Write-RandomDigits }
}
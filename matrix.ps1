param($salt = (" ", "0", "1"), $colors = ("Green", "Red", "Yellow"), $length = 104000)

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

Write-RandomDigits

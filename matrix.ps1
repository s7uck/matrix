param($colors = ("Green", "Red", "Yellow"), $length = 104000)
$mode = $args[0]

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

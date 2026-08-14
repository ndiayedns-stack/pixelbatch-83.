param([string]$secret = "NSJYOJKFKEDRENKDTEDRKL2XBNV6JQNZ")

$secret = $secret.Trim().ToUpper().Replace(' ', '')
$base32Chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567'
$bits = ''
foreach ($c in $secret.ToCharArray()) {
    $val = $base32Chars.IndexOf($c)
    if ($val -ge 0) {
        $bits += [Convert]::ToString($val, 2).PadLeft(5, '0')
    }
}
$byteList = [System.Collections.Generic.List[byte]]::new()
for ($i = 0; $i -lt ($bits.Length - 7); $i += 8) {
    $byteList.Add([Convert]::ToByte($bits.Substring($i, 8), 2))
}
$key = $byteList.ToArray()
$epoch = [DateTime]::UtcNow - [DateTime]::new(1970, 1, 1, 0, 0, 0, [DateTimeKind]::Utc)
$counter = [Int64][Math]::Floor($epoch.TotalSeconds / 30)
$counterBytes = [BitConverter]::GetBytes($counter)
if ([BitConverter]::IsLittleEndian) { [Array]::Reverse($counterBytes) }
$hmac = [System.Security.Cryptography.HMACSHA1]::new($key)
$hash = $hmac.ComputeHash($counterBytes)
$offset = $hash[$hash.Length - 1] -band 0x0F
$binary = (($hash[$offset] -band 0x7F) -shl 24) -bor (($hash[$offset + 1] -band 0xFF) -shl 16) -bor (($hash[$offset + 2] -band 0xFF) -shl 8) -bor ($hash[$offset + 3] -band 0xFF)
$otp = ($binary % 1000000).ToString('D6')
$timeLeft = 30 - ([Int64]$epoch.TotalSeconds % 30)

Write-Host "CODE_TOTP: $otp (valide encore $timeLeft s)"

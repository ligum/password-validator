$path= $args[0]
$pass= $args[1]

if($path-eq '-f'){
    $password = Get-Content -Path $pass
}
else {
    $password = $path
}

$password = Read-Host "Please enter your password. `nPassword must meet complexity requirements: 
`nAt least one upper case English letter [A-Z]`nAt least one lower case English letter [a-z]`nAt least one digit [0-9]`nAt least one special character (!,@,#,%,^,&,$)`nMinimum 10 in length."
if(($password -cmatch '[a-z]') -and ($password -cmatch '[A-Z]') -and ($password -match '\d') -and ($password.length -ge 10) -and ($password -match '!|@|#|%|^|&|$'))
{
     Write-Host "$password is Valid password
exit code 0" -ForegroundColor Green
}
else
{
     Write-Host "$password is Invalid password
exit code 1" -ForegroundColor Red
}
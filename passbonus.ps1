$Input = Read-Host "Please enter your password. `nPassword must meet complexity requirements: 
`nAt least one upper case English letter [A-Z]`nAt least one lower case English letter [a-z]`nAt least one digit [0-9]`nAt least one special character (!,@,#,%,^,&,$)`nMinimum 10 in length."
if(($input -cmatch '[a-z]') -and ($input -cmatch '[A-Z]') -and ($input -match '\d') -and ($input.length -ge 10) -and ($input -match '!|@|#|%|^|&|$'))
{
     Write-Host "$input is Valid password
exit code 0" -ForegroundColor Green
}
else
{
     Write-Host "$input is Invalid password
exit code 1" -ForegroundColor Red
}
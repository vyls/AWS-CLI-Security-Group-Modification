#Created by V. Y. Lindung S
$whitelist = Get-Content ((Read-Host 'Enter Whitelist File'))
foreach ($_ in $whitelist){
$sgparam = $_.split()
aws ec2 authorize-security-group-ingress --group-id $sgparam[0] --protocol tcp --port $sgparam[1] --cidr $sgparam[2]
}

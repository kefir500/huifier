Import-Module -Name ($PSScriptRoot + "/Get-Huify.psm1")
Get-Huify -Word $(Read-Host "Введите слово")

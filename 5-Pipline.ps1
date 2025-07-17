$serviceName = "spooler"
Get-service -Name $serviceName
Stop-Service -Name $serviceName
Start-Service -Name $serviceName

Get-Help Stop-Service -Full                    # -InputObject <ServiceController[]>
#     Accept pipeline input?       true (ByValue)
(Get-service -Name $serviceName).GetType()    # ServiceController

Get-service -Name $serviceName | Stop-Service
Get-service -Name $serviceName                      # Stopped

Get-service -Name $serviceName | Start-Service
Get-service -Name $serviceName                      # Running

Get-Help Get-Service -Full            #  -Name <string[]>
# Accept pipeline input?       true (ByValue, ByPropertyName)

$serviceName | Get-Service | Stop-Service
$serviceName | Get-Service
$serviceName | Get-Service | Start-Service
$serviceName | Get-Service

$services = New-Object -TypeName System.Collections.ArrayList
$services.AddRange(@('spooler', 'w32time'))

$services | Get-Service                      # Running
$services | Get-Service | Stop-Service
$services | Get-Service                      # Stopped

$services | Get-Service | foreach { Write-Output "Service: $($_.DisplayName) is currently $($_.Status)" }
$serviceName | Get-Service | Start-Service
$services | Get-Service | foreach { Write-Output "Service: $($_.DisplayName) is currently $($_.Status)" }
$services | Get-Service | Start-Service
$services | Get-Service | foreach { Write-Output "Service: $($_.DisplayName) is currently $($_.Status)" }
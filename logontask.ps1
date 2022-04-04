Set-ExecutionPolicy -ExecutionPolicy bypass -Force
Start-Transcript -Path C:\WindowsAzure\Logs\logontasklogs.txt -Append

Get-Service | where {($_.name -like "Sisense.ECMS")} | Restart-Service

sleep 10

Get-Service | where {($_.name -like "Sisense.ECMServer")} | Restart-Service

sleep 10

Get-Service | where {($_.name -like "Sisense.Galaxy")} | Restart-Service

sleep 10

Get-Service | where {($_.name -like "Sisense.Gateway")} | Restart-Service

sleep 10

Get-Service | where {($_.name -like "Sisense.Jobs")} | Restart-Service

sleep 10

Get-Service | where {($_.name -like "Sisense.Configuration")} | Restart-Service

sleep 10


Unregister-ScheduledTask -TaskName "setup" -Confirm:$false 
Stop-Transcript

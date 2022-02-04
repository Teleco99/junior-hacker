# Start the sandbox with student ID.
# If running PowerShell scripts is disabled, allow it: https://superuser.com/a/106362

if ( $Args.Count -ne 3 )
{
    Write-Host "Usage: .\start.ps1 student_ID access_token central_syslog_IP"
}
else
{
	$id = $($args[0])
    $Env:ANSIBLE_ARGS='--extra-vars "student_id={0} --extra-vars access_token={1} --extra-vars central_syslog_ip={2}"' -f $id
    vagrant up
}


# Disable Error Reporting in Windows
Set-Service -Name wersvc -StartupType disabled

bcdedit -set testsigning off



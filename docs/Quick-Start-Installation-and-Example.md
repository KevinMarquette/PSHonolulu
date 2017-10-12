# Installing PSHonolulu

Install Project Honolulu from Microsoft:
 
[Windows Server Honolulu Evaluation](https://www.microsoft.com/en-US/evalcenter/evaluate-windows-server-honolulu)

  Install PSHonolulu from the PowerShell Gallery

    Find-Module PSHonolulu | Install-Module

Import Module

    Import-Module PSHonolulu

# Basic Commands

If you installed Honolulu on your local computer, you should be able to open the details of any computer by running this command:

    Show-Computer -ComputerName $ComputerName

If Honolulu is installed on a remote computer, you can set the address with this command:

    Set-HonoluluServer -ComputerName $ServerName -Port 6516
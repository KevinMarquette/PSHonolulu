# PSHonolulu

Module for working with Project Hoholulu

## GitPitch PitchMe presentation

* [gitpitch.com/KevinMarquette/PSHonolulu](https://gitpitch.com/KevinMarquette/PSHonolulu)

## Getting Started

Install Project Honolulu from Microsoft:
 
[Windows Server Honolulu Evaluation](https://www.microsoft.com/en-US/evalcenter/evaluate-windows-server-honolulu)

Install this Module from the PSGallery and Import the module

    Install-Module PSHonolulu
    Import-Module PSHonolulu

## Basic Commands

If you installed Honolulu on your local computer, you should be able to open the details of any computer by running this command:

    Show-Computer -ComputerName $ComputerName
    Show-Computer -ComputerName $ComputerName -View Services

The important detail here is that you don't need to first import `$ComputerName` into Honolulu first. You can specify any server in your organization where you have access to WinRM and WMI.

If Honolulu is installed on a remote computer, you can set the address with this command:

    Set-HonoluluServer -ComputerName $ServerName -Port 6516
    Get-HonoluluServer

## More Information

For more information

* [PSHonolulu.readthedocs.io](http://PSHonolulu.readthedocs.io)
* [github.com/KevinMarquette/PSHonolulu](https://github.com/KevinMarquette/PSHonolulu)
* [KevinMarquette.github.io](https://KevinMarquette.github.io)


This project was generated using [Kevin Marquette](http://kevinmarquette.github.io)'s [Full Module Plaster Template](https://github.com/KevinMarquette/PlasterTemplates/tree/master/FullModuleTemplate).

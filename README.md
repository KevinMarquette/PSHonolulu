# PSHonolulu

Module for working with Project Hoholulu

## GitPitch PitchMe presentation

* [gitpitch.com/KevinMarquette/PSHonolulu](https://gitpitch.com/KevinMarquette/PSHonolulu)

## Getting Started

Install Project Honolulu from Microsoft:
 
[Windows Server Honolulu Evaluation](https://www.microsoft.com/en-US/evalcenter/evaluate-windows-server-honolulu)

Install from the PSGallery and Import the module

    Install-Module PSHonolulu
    Import-Module PSHonolulu

## Basic Commands

If you installed Honolulu on your local computer, you should be able to open the details of any computer by running this command:

    Show-Computer -ComputerName $ComputerName

If Honolulu is installed on a remote computer, you can set the address with this command:

    Set-HonoluluServer -ComputerName $ServerName -Port 6516

## More Information

For more information

* [PSHonolulu.readthedocs.io](http://PSHonolulu.readthedocs.io)
* [github.com/KevinMarquette/PSHonolulu](https://github.com/KevinMarquette/PSHonolulu)
* [KevinMarquette.github.io](https://KevinMarquette.github.io)


This project was generated using [Kevin Marquette](http://kevinmarquette.github.io)'s [Full Module Plaster Template](https://github.com/KevinMarquette/PlasterTemplates/tree/master/FullModuleTemplate).

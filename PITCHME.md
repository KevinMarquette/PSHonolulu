# PSHonolulu

Module for working with Project Hoholulu

---

### Install Project Honolulu from Microsoft
 
[Windows Server Honolulu Evaluation](https://www.microsoft.com/en-US/evalcenter/evaluate-windows-server-honolulu)

---

### Install Module

Install from the PSGallery and Import the module

    Install-Module PSHonolulu
    Import-Module PSHonolulu

---

### Launch Honolulu from PowerShell

    Show-Computer -ComputerName $ComputerName

This will open Honolulu to the page for `$ComputerName`.

---

### Open to a section

    Show-Computer -ComputerName $ComputerName -View Services

This will open Honolulu to the services page for `$ComputerName`.

---

### With Pipeline Support

    Get-Content servers.txt | Show-Computer

If pipe in a list of computers, it will open each one of them.

---

### What's next?

For more information

* [PSHonolulu.readthedocs.io](http://PSHonolulu.readthedocs.io)
* [github.com/KevinMarquette/PSHonolulu](https://github.com/KevinMarquette/PSHonolulu)
* [KevinMarquette.github.io](https://KevinMarquette.github.io)

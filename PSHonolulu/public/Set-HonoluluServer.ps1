function Set-HonoluluServer
{
    <#
    .SYNOPSIS
    Set the Honolulu Server connection information

    .DESCRIPTION
    Configure the local system to use a specified Honolulu Server

    .PARAMETER ComputerName
    The server name. Use localhost if this system is running the service

    .PARAMETER Port
    The port that Project Honolulu is listening on

    .EXAMPLE
    Set-HonoluluServer -ComputerName $env:ComputerName -Port 6516

    This will set the local computer as the Project Honolulu server
    
    .NOTES
    General notes
    #>
    
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseShouldProcessForStateChangingFunctions", "")]
    [CmdletBinding()]
    param(
        $ComputerName = $env:COMPUTERNAME,
        $Port = 6516
    )

    begin
    {
        $path = Join-Path $env:homedrive $env:HOMEPATH
        $path = Join-Path $path '.pshonolulu'
    }

    process
    {
        try
        {
            $settings = @{
                ComputerName = $ComputerName
                Port         = $Port
            }
            $settings | ConvertTo-Json | Set-Content -Path $path
        }
        catch
        {
            $PSCmdlet.ThrowTerminatingError( $PSItem )
        }
    }
}
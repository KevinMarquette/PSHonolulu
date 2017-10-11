function Get-HonoluluServer
{
    <#
    .SYNOPSIS
    Get the Honolulu Server connection information

    .DESCRIPTION
    Get the confgiured Honolulu Server settings

    .EXAMPLE
    Get-HonoluluServer

    This will set the local computer as the Project Honolulu server
    
    .NOTES
    General notes
    #>
    
    [CmdletBinding()]
    param( )

    begin
    {
        $path = Join-Path $env:homedrive $env:HOMEPATH
        $path = Join-Path $path '.pshonolulu'
    }
    process
    {
        try
        {
            If ( Test-Path $path -ErrorAction Ignore )
            {
                Get-Content $path | ConvertFrom-JSON
            }
            else
            {
                [pscustomobject]@{
                    ComputerName = $env:COMPUTERNAME
                    Port         = 6516
                }
            }
        }
        catch
        {
            $PSCmdlet.ThrowTerminatingError( $PSItem )
        }
    }
}
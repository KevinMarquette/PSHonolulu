function Show-Computer
{
    <#
    .SYNOPSIS
    Show specified computer in Honolulu

    .DESCRIPTION
    Takes the specified computer and crafts the needed URL to load it in Project Honolulu

    .PARAMETER ComputerName
    Parameter description

    .EXAMPLE
    Show-Computer

    Will show the local computer in Project Honolulu

    .EXAMPLE
    Show-Computer -ComputerName server02

    .NOTES
    General notes
    #>
    
    [CmdletBinding()]
    param(
        $ComputerName = $env:COMPUTERNAME
    )

    process
    {
        try
        {
            $ComputerName
        }
        catch
        {
            $PSCmdlet.ThrowTerminatingError( $PSItem )
        }
    }
}
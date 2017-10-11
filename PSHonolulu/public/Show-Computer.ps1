function Show-Computer
{
    <#
    .SYNOPSIS
    Show specified computer in Honolulu

    .DESCRIPTION
    Takes the specified computer and crafts the needed URL to load it in Project Honolulu

    .PARAMETER ComputerName
    Parameter description

    .PARAMETER View
    The view to show by default.

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
        [parameter( ValueFromPipeline )]
        [alias('ServerName', 'CN')]
        [string[]]
        $ComputerName = $env:COMPUTERNAME,

        [ValidateSet(
            'overview',
            'certificates',
            'devices',
            'Events',
            'Files',
            'Firewall',
            'UsersGroups',
            'Network',
            'Processes',
            'Registry',
            'RolesFeatures',
            'Services',
            'Storage',
            'StorageReplica',
            'VirtualMachines',
            'VirtualSwitches',
            'WindowsUpdate'
        )]
        [string]
        $View = 'overview'
    )

    begin
    {
        $info = Get-HonoluluServer
        $uri = 'http://{0}:{1}' -f $info.ComputerName, $info.Port
        $View = $View.ToLower()
    }
    process
    {
        try
        {
            foreach ( $node in $ComputerName )
            {
                $endpoint = "{0}/servermanager/connections/server/{1}/tools/{2}" -f $uri, $node.tolower(), $View
                Write-Verbose $endpoint
                Start-Process $endpoint
            }
        }
        catch
        {
            $PSCmdlet.ThrowTerminatingError( $PSItem )
        }
    }
}

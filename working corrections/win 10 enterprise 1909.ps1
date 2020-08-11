11 errors found. The bellow blocks where not able to be automatically matched to a Recommendation in 'C:\Repos\SecOps-Powershell-CISDSC\src\CISDSC\dscresources\RecommendationErrors.ps1'.

    #appears to be an incorrect duplicate of 2.3.7.2, the GPO has both this and 'DontDisplayLastUserName' which appears to be correct
    #https://getadmx.com/?Category=NovellClient&Policy=Novell.Client.Windows.adm::LastLoggedOnUser
    if($ExcludeList -notcontains '' -and $){
        Registry ""
        {
           ValueName = 'DontDisplayUserName'
           ValueType = 'Dword'
           Key = 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System'
           ValueData = 1
        }
    }

    #this service does not appear in the benchmark as far as I can tell.
    if($ExcludeList -notcontains '' -and $){
        Service " (2)"
        {
           Name = 'RasMan'
           State = 'Stopped'
        }
    }
    <# This is part of the domain controller benchmark. Seems to have been left in the Win 10 GPO by mistake
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (3)"
        {
           Name = 'Computer Account Management'
           Ensure = 'Present'
           AuditFlag = 'Success'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        AuditPolicySubcategory " (4)"
        {
           Name = 'Computer Account Management'
           Ensure = 'Present'
           AuditFlag = 'Failure'
        }
    }
    #>
    if($ExcludeList -notcontains '' -and $){
        Registry " (5)"
        {
           ValueName = ''
           Ensure = 'Absent'
           Key = 'HKLM:\Software\Policies\Microsoft\Windows\DeviceInstall\Restrictions\DenyDeviceIDs'
        }
    }

    if($ExcludeList -notcontains '' -and $){
        Registry " (8)"
        {
           ValueName = 'PolicyVersion'
           ValueData = 541
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\WindowsFirewall'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (9)"
        {
           ValueName = 'FileTrustOriginRemovableMedia'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (10)"
        {
           ValueName = 'FileTrustOriginNetworkShare'
           ValueData = 0
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
    if($ExcludeList -notcontains '' -and $){
        Registry " (11)"
        {
           ValueName = 'FileTrustOriginMarkOfTheWeb'
           ValueData = 1
           Ensure = 'Present'
           ValueType = 'Dword'
           Key = 'HKLM:\SOFTWARE\Policies\Microsoft\AppHVSI\FileTrustOrigin'
        }
    }
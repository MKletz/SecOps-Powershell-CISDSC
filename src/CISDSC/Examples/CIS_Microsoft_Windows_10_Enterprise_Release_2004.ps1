#Requires -module CISDSC

<#
    .DESCRIPTION
    Applies CIS Level one benchmarks for Windows 10 build 2004 with the non-standard services excluded.
#>

Configuration Win10_2004_L1
{
    Import-DSCResource -ModuleName 'CISDSC' -Name 'CIS_Microsoft_Windows_10_Enterprise_Release_2004'

    node 'localhost'
    {
        CIS_Microsoft_Windows_10_Enterprise_Release_2004 'CIS Benchmarks'
        {
            'ExcludeList' = @(
                '5.6', # IIS Admin Service (IISADMIN)
                '5.7', # Infrared monitor service (irmon)
                '5.10',# LxssManager (LxssManager)
                '5.11',# Microsoft FTP Service (FTPSVC)
                '5.13',# OpenSSH SSH Server (sshd)
                '5.27',# Simple TCP/IP Services (simptcp)
                '5.29',# Special Administration Console Helper (sacsvr)
                '5.32',# Web Management Service (WMSvc)
                '5.40' # World Wide Web Publishing Service (W3SVC)
            )
            '2315AccountsRenameadministratoraccount' = 'CISAdmin'
            '2316AccountsRenameguestaccount' = 'CISGuest'
            '2376LegalNoticeCaption' = 'Legal Notice'
            '2375LegalNoticeText' = @"
This is a super secure device that we don't want bad people using.
I'm even making sure to put this as a literal string so that I can cleanly
use multiple lines to tell you how super secure it is.
"@
        }
    }
}

Win10_2004_L1
Start-DscConfiguration -Path '.\Win10_2004_L1' -Verbose -Wait -Force
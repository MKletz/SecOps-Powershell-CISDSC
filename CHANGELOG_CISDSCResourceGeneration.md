# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

### Added

- Makefile to easily run Pester tests
- New functions to simplify RegKey string operation testing: Get-RegKeyExpandHKLM and Get-RegPatternString
- Pester tests for RegKey string manipulation operations
- generate_resources_example with filled in values to make future resource generation attempts easier

### Changed

- 'AllowAdministratorLockout' key added to AccountPolicySettings dictionary
- gitignore updated to ignore input files from CIS and Output folder from Pester tests
- Get-RecommendationFromGPOHash Regkey string operations broken into new functions to simplify testing
- In install_dependencies removed the AllowPreRelease flag from GPRegistryPolicyParser as it is no longer in pre-release
- Missing dictionary key error reporting for ConvertFrom-PrivilegeRightRawGPO, ConvertFrom-RegistryPolGPORaw and ConvertFrom-SystemAccessRawGPO

## [2.4.2] - 2022-11-18

### Added

- Added an exception for when a parameter does not have a validation block assigned to it. [Issue 233](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/233)
- Get-CISBenchmarkValidWorksheets was moved to be a public function to help with [Issue 237](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/237)
- Added functionality to ignore GPO files for domain controllers when working on member servers and vice versa. [Issue 235](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/237)
- Added Server 2022 to accepted OS names in ConvertTo-DSC [Issue 252](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/252)

### Changed

- Fix in GET-RecommendationFromGPOHash for NUL characters in registry policy files

## [2.4.1] - 2021-08-31

### Added

- Added script analyzer exceptions for plural nouns
- Added missing comment based help

### Changed

- Changed ignored correction from warning to debug since it's intentional behavior. [Issue 182](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/182)
- Updated Get-CISBenchmarkValidWorksheets logic for the new excel sheet format from CIS.
- Fix for "Get-RecommendationFromGPOHash fails to find DC AuditPolicy settings" [Issue 225](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/225)

### Removed

## [2.4.0] - 2021-02-26

### Added

- Implimented support for browser based benchmarks. This primarily meant adding parameter sets to ConvertTo-DSC and a new plaster templates in addition to the two changes below.

### Changed

- Renamed the 'NewBenchmarkCompositeResource' plaster template to 'NewOSBenchmarkCompositeResource'. This will help facilitate non-OS benchmark support in the future. [Issue 184](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/184)
- Renamed 'OS' parameter on shared functions to 'System', this included 'Get-CISBenchmarkValidWorksheets' and 'Import-CISBenchmarkData'. [Issue 184](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/184)

## [2.3.0] - 2021-02-25

### Changed

- Updated the module to work with the latest release of GPRegistryPolicyParser and increased the minimum version to 7. [Issue 128](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/128)
- Resolved the unapproved verb warning at import this was fixed along side PS 7 support in the latest version of GPRegistryPolicyParser.

## 2.2.9

### Changed

- Converted expected warning messages to debug within Import-GptTmpl and Import-RegistryPol per [Issue 182](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/182)

## 2.2.8

### Added

- Added support for ignoring settings within static corrections per [Issue 178](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/178). Details can be found in the [static corrections doc](docs/static_corrections.md#How-do-I-ignore-a-recommendation-error?)

### Changed

### Removed

## 2.2.7

### Added

### Changed

- UserRightsAssignment's 'Identities' property will now be sorted so that SIDs will be consistently ordered between resources per [Issue 175](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/175).

### Removed

## 2.2.6

### Added

### Changed

- Corrected issues with the plaster template variables introduced in 2.2.5

### Removed

## 2.2.5

### Added

### Changed

- Updated all references to parameter names to be prefixed with an "cis" per [Issue 169](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/169)
- Corrected several instance of ExclusionList to ExcludeList

### Removed

## 2.2.4

### Changed

- Updated the Plaster template to take the OS name with and without underscores. [Issue 159](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/159)

## 2.2.3

### Changed

- Fixed a few missed casing fixes for [Issue 143](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/143)

## 2.2.2

### Changed

- Standardized casing for typing on resource parameters [Issue 143](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/143)
- Corrected plaster template for resource documentation to use the dynamic recommendation IDs from [Issue 129](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/129)

## 2.2.1

### Added

- Added resource example files to the Plaster template [Issue 133](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/133)

### Changed

- Corrected special case for HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\ScreenSaverGracePeriod incorrectly setting to DWORD instead of string [Issue 136](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/136)

## 2.2.0

### Added

- Added support for overriding parameters that are generated [Issue 71](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/71)

## 2.1.2

### Added

- Added support for dynamic setting on recommendation IDs on the special case recommendations (legal notice and account renames) [Issue 129](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/129)

## 2.1.1

### Added

### Changed

- Changed service logic to use the CISService resource [Issue 121](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/121)

### Removed

## 2.1 - 9/30/20

### Added

- Functionality to generate resource documentation along side the DSC resources [Issue 114](https://github.com/techservicesillinois/SecOps-Powershell-CISDSC/issues/114)

## [2.0.0]

- Start of changelog

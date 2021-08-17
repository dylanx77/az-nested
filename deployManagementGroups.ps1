##Script requires Management Group Contributor 

$environmentMG = "mg-c3test1"
$commonMG = "mg-c3testcommon"
$identityMG = "mg-c3testidentity"
$managementMG = "mg-c3testmanagement"
$securityMG = "mg-c3testsecurity"
$networkMG = "mg-c3testnetwork"
$devopsMG = "mg-c3testdevops"

##Install Az Resources modules for working with management groups
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
Install-Module -Name Az.Resources

##Create environment level management group under root MG
New-AzManagementGroup -GroupId $environmentMG

##Set previously created MG as parent MG for other management groups
# $parentGroup = Get-AzManagementGroup -GroupName $environmentMG

# ##Create management groups for other subscriptions under the environment level MG
# New-AzManagementGroup -GroupName $commonMG -ParentId $parentGroup.id
# New-AzManagementGroup -GroupName $identityMG -ParentId $parentGroup.id
# New-AzManagementGroup -GroupName $managementMG -ParentId $parentGroup.id
# New-AzManagementGroup -GroupName $securityMG -ParentId $parentGroup.id
# New-AzManagementGroup -GroupName $networkMG -ParentId $parentGroup.id

##Create devops MG directly under root MG
New-AzManagementGroup -GroupName $devopsMG

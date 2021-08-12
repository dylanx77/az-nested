##Script requires Management Group Contributor 

$envrionmentMG = "mg-c3test"
$commonMG = "mg-c3testcommon"
$identityMG = "mg-c3testidentity"
$managementMG = "mg-c3testmanagement"
$securityMG = "mg-c3testsecurity"
$networkMG = "mg-c3testnetwork"
$devopsMG = "mg-c3testdevops"

##Create environment level management group under root MG
New-AzManagementGroup -GroupId $envrionmentMG

##Set previously created MG as parent MG for other management groups
$parentGroup = Get-AzManagementGroup -GroupName $envrionmentMG

##Create management groups for other subscriptions under the environment level MG
New-AzManagementGroup -GroupName $commonMG -ParentId $parentGroup.id
New-AzManagementGroup -GroupName $identityMG -ParentId $parentGroup.id
New-AzManagementGroup -GroupName $managementMG -ParentId $parentGroup.id
New-AzManagementGroup -GroupName $securityMG -ParentId $parentGroup.id
New-AzManagementGroup -GroupName $networkMG -ParentId $parentGroup.id

##Create devops MG directly under root MG
New-AzManagementGroup -GroupName $devopsMG

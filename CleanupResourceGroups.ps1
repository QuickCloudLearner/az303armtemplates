

#Use a filter to select resource groups by substring
$filter = 'az303'
 
#Find Resource Groups by Filter -> Verify Selection
Get-AzResourceGroup | ? ResourceGroupName -match $filter | Select-Object ResourceGroupName
 
#Async Delete ResourceGroups by Filter. Uncomment the following line if you understand what you are doing. :-)
Get-AzResourceGroup | ? ResourceGroupName -match $filter | Remove-AzResourceGroup -AsJob -Force
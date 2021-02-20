### deploy an empty arm template


$projectName = Read-Host -Prompt "Enter a project name that is used to generate resource and resource group names"
$resourceGroupName = "${projectName}rg"

New-AzResourceGroup `
  -Name $resourceGroupName `
  -Location "east US"

  New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate  `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile d:\workspace\azuredeploy.json `
  -DeploymentDebugLogLevel All
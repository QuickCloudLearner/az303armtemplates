Connect-AzAccount

$projectName = Read-Host -Prompt "Enter a project name that is used to generate resource and resource group names"
$resourceGroupName = "${projectName}rg"

New-AzResourceGroup `
  -Name $resourceGroupName `
  -Location "Central US"


$projectName = Read-Host -Prompt "Enter the same project name"

$templateFile = Read-Host -Prompt "Enter the template file path and file name"


$resourceGroupName = "${projectName}rg"

New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -projectName $projectName `
  -verbose



  New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate  `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile d:\workspace\azuredeploy.json `
  -DeploymentDebugLogLevel All

  /////////////////////////////////////////////////////////////////////////////



  
  
$projectName = Read-Host -Prompt "Enter a project name that is used to generate resource and resource group names"
$resourceGroupName = "${projectName}rg"

New-AzResourceGroup `
  -Name $resourceGroupName `
  -Location "Central US"

  New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate  `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile d:\workspace\azuredeploy.json `
  -DeploymentDebugLogLevel All

  --------------------------------------------------

  template to remove the resource groups
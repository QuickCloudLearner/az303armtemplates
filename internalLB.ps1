﻿
  ############# Storage name as a parameter

  $projectName = Read-Host -Prompt "Enter a project name that is used to generate resource and resource group names"
$resourceGroupName = "${projectName}rg"

New-AzResourceGroup `
  -Name $resourceGroupName `
  -Location "west US"

  New-AzResourceGroupDeployment `
  -Name DeployLocalTemplate  `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile d:\workspace\internalLB.json
  #-DeploymentDebugLogLevel All
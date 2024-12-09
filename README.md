# Azure Managed DevOps Pool Terraform module
Terraform module for creation of Azure Managed DevOps pool.

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) | ~> 1.15 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 3.0.2 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | >= 1.1.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.104.2, >=4.0.1 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.6 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | =4.0.5 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | >= 1.1.1 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >=3.104.2, >=4.0.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_managed_devops_pool"></a> [managed\_devops\_pool](#module\_managed\_devops\_pool) | Azure/avm-res-devopsinfrastructure-pool/azurerm | n/a |

## Resources

| Name | Type |
|------|------|
| [azuredevops_pipeline_authorization.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/resources/pipeline_authorization) | resource |
| [azurerm_dev_center.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dev_center) | resource |
| [azurerm_dev_center_project.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/dev_center_project) | resource |
| [azurerm_role_assignment.net_contrib](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.reader](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuredevops_agent_queue.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/agent_queue) | data source |
| [azuredevops_client_config.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/client_config) | data source |
| [azuredevops_project.this](https://registry.terraform.io/providers/microsoft/azuredevops/latest/docs/data-sources/project) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aad_sp_devopsinfrastructure_id"></a> [aad\_sp\_devopsinfrastructure\_id](#input\_aad\_sp\_devopsinfrastructure\_id) | Object ID of Entra ID service principal named DevOpsInfrastructure | `string` | `"72055c5c-4353-4d6d-8838-bacee04b729d"` | no |
| <a name="input_ado_project_name"></a> [ado\_project\_name](#input\_ado\_project\_name) | Target Azure DevOps Project name where VMSS agent pool would be provisioned | `string` | n/a | yes |
| <a name="input_dev_center_name"></a> [dev\_center\_name](#input\_dev\_center\_name) | Name of DevCenter in which managed DevOps pool will be created | `string` | n/a | yes |
| <a name="input_dev_center_project_name"></a> [dev\_center\_project\_name](#input\_dev\_center\_project\_name) | Name of DevCenter project where managed DevOps pool will be created | `string` | n/a | yes |
| <a name="input_devops_pool_max_concurrency"></a> [devops\_pool\_max\_concurrency](#input\_devops\_pool\_max\_concurrency) | Maximum number of nodes in DevOps pool's VMSS | `number` | `2` | no |
| <a name="input_devops_pool_name"></a> [devops\_pool\_name](#input\_devops\_pool\_name) | Name of managed DevOps pool | `string` | n/a | yes |
| <a name="input_enable_telemetry"></a> [enable\_telemetry](#input\_enable\_telemetry) | Boolean flag that determines whether telemetry should be enabled | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | The Azure Region in which all resources in this example should be created. | `string` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | The name of the resource group. | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet where VM Scale Sets would be provisioned | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Resource ID of managed DevOps pool |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](./LICENSE)

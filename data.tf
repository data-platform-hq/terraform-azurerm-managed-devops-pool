data "azurerm_client_config" "this" {}

data "azuredevops_client_config" "this" {}

data "azurerm_subscription" "current" {}

data "azurerm_resource_group" "this" {
  name = var.resource_group
}

data "azuredevops_project" "this" {
  name = var.ado_project_name
}

data "azuredevops_agent_queue" "this" {
  project_id = data.azuredevops_project.this.project_id
  name       = module.managed_devops_pool.name
  depends_on = [module.managed_devops_pool]
}
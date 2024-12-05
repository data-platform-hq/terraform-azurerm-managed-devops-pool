resource "azurerm_dev_center" "this" {
  location            = var.location
  name                = var.dev_center_name
  resource_group_name = var.resource_group
}

resource "azurerm_dev_center_project" "this" {
  dev_center_id       = azurerm_dev_center.this.id
  location            = var.location
  name                = var.dev_center_project_name
  resource_group_name = var.resource_group
}

resource "azurerm_role_assignment" "net-contrib" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Network Contributor"
  principal_id         = var.aad_sp_devopsinfrastructure_id
}

resource "azurerm_role_assignment" "reader" {
  scope                = data.azurerm_subscription.current.id
  role_definition_name = "Reader"
  principal_id         = var.aad_sp_devopsinfrastructure_id
}

resource "azuredevops_pipeline_authorization" "this" {
  project_id  = data.azuredevops_project.this.project_id
  resource_id = data.azuredevops_agent_queue.this.id
  type        = "queue"
  depends_on  = [module.managed_devops_pool]
}

module "managed_devops_pool" {
  source                         = "Azure/avm-res-devopsinfrastructure-pool/azurerm"
  resource_group_name            = var.resource_group
  location                       = var.location
  name                           = var.devops_pool_name
  dev_center_project_resource_id = azurerm_dev_center_project.this.id
  subnet_id                      = var.subnet_id
  organization_profile = {
    organizations = [{
      name     = local.ado_organization_name
      projects = [var.ado_project_name]
    }]
    permission_profile = {
      kind = "Inherit"
    }
  }
  maximum_concurrency = var.devops_pool_max_concurrency
  enable_telemetry    = var.enable_telemetry
  depends_on          = [azurerm_role_assignment.reader, azurerm_role_assignment.net-contrib]
}


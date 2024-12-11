locals {
  ado_organization_name = split("/",
  data.azuredevops_client_config.this.organization_url)[3]
}

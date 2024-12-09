variable "resource_group" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be created."
  type        = string
}

variable "ado_project_name" {
  description = "Target Azure DevOps Project name where VMSS agent pool would be provisioned"
  type        = string
}

variable "dev_center_name" {
  description = "Name of DevCenter in which managed DevOps pool will be created"
  type        = string
}

variable "dev_center_project_name" {
  description = "Name of DevCenter project where managed DevOps pool will be created"
  type        = string
}

variable "aad_sp_devopsinfrastructure_id" {
  description = "Object ID of Entra ID service principal named DevOpsInfrastructure"
  type        = string
  default     = "72055c5c-4353-4d6d-8838-bacee04b729d"
}

variable "devops_pool_name" {
  description = "Name of managed DevOps pool"
  type        = string
}

variable "devops_pool_max_concurrency" {
  description = "Maximum number of nodes in DevOps pool's VMSS"
  type        = number
  default     = 2
}

variable "subnet_id" {
  description = "Subnet where VM Scale Sets would be provisioned"
  type        = string
}

variable "enable_telemetry" {
  description = "Boolean flag that determines whether telemetry should be enabled"
  type        = bool
  default     = false
}

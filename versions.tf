terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.104.2, >=4.0.1"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 1.1.1"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "=4.0.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
    azapi = {
      source  = "Azure/azapi"
      version = "~> 1.15"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "3.0.2"
    }
  }
}

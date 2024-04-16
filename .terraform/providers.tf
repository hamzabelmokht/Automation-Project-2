provider "azurerm" {
  features{}
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm" 
      version = "= 3.9.0"
    }
  }
  required_version = ">= 1.6.6" 
}
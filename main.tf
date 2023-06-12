terraform {
  cloud {
    organization = "tutorial-terraform-raf"

    workspaces {
      name = "terraform-github-actions"
    }
  }
}

provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

data "http" "ip" {
  url = "https://ifconfig.me"
}

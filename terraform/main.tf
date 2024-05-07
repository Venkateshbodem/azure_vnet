# main.tf

provider "azurerm" {
  features {}
}

module "aks" {
  source              = "Azure/aks/azurerm"
  resource_group_name = "my-aks-rg"
  cluster_name        = "my-aks-cluster"
  location            = "East US"
  dns_prefix          = "myaks"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_DS2_v2"
  }
}
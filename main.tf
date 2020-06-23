# AKS Resource Group
resource "azurerm_resource_group" "HVG-AKS-RG" {
    name     = "HVG-AKS-RG"
    location = "uksouth"
}

# AKS Cluster
resource "azurerm_kubernetes_cluster" "HVG-AKS-CLUSTER" {
  name                = "${var.prefix}-aks-cluster-demo"
  location            = azurerm_resource_group.HVG-AKS-RG.location
  resource_group_name = azurerm_resource_group.HVG-AKS-RG.name
  dns_prefix          = "${var.prefix}-aks"

  default_node_pool {
    name       = "${var.prefix}default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  addon_profile {
    aci_connector_linux {
      enabled = false
    }

    azure_policy {
      enabled = false
    }

    http_application_routing {
      enabled = false
    }

    kube_dashboard {
      enabled = true
    }

    oms_agent {
      enabled = false
    }
  }
  tags = {
    Environment = "${var.prefix}-LAB"
  }
}
output "kube_config" {
  value = azurerm_kubernetes_cluster.HVG-AKS-CLUSTER.kube_config_raw
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.HVG-AKS-CLUSTER.kube_config.0.client_certificate
}

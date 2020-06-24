# Terraform-AKS
AKS orchestration with Terraform

# What HCL included
1) Resource Group
2) Azure Service Principal
3) AKS service configuration

# Terraform.tfvars

Azure service principal file (terraform.tfvars) has been ignored which has below information. 
subscriptionId = "Your subscription" 
clientId = "Service Principal client Id" 
clientSecret = "Service Principal client secret" 
tenantId = "Your Tenant Id". 
# Additional Info

AKS/K8S Provider - https://www.terraform.io/docs/providers/azurerm/r/kubernetes_cluster.html

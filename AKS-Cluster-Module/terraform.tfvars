rg_name  = "aks-dev-rg"
location = "Central India"

vnet_name     = "aks-vnet"
address_space = ["10.0.0.0/16"]

subnet_name   = "aks-subnet"
subnet_prefix = ["10.0.1.0/24"]

cluster_name       = "Dev-aks-cluster"
dns_prefix         = "Devaks"
kubernetes_version = "1.33"

node_count = 2
vm_size    = "Standard_DS2_v2"
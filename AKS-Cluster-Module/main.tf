module "resource_group" {
  source = "./modules/resource-group"

  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source        = "./modules/network"
  depends_on    = [module.resource_group]
  rg_name       = module.resource_group.rg_name
  location      = module.resource_group.location
  vnet_name     = var.vnet_name
  address_space = var.address_space
  subnet_name   = var.subnet_name
  subnet_prefix = var.subnet_prefix
}

module "aks" {
  source             = "./modules/aks"
  depends_on         = [module.network]
  cluster_name       = var.cluster_name
  location           = module.resource_group.location
  rg_name            = module.resource_group.rg_name
  dns_prefix         = var.dns_prefix
  kubernetes_version = var.kubernetes_version

  subnet_id = module.network.subnet_id

  node_count = var.node_count
  vm_size    = var.vm_size
}
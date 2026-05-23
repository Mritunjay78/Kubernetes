variable "rg_name" {}
variable "location" {}

variable "vnet_name" {}
variable "address_space" {
  type = list(string)
}

variable "subnet_name" {}
variable "subnet_prefix" {
  type = list(string)
}

variable "cluster_name" {}
variable "dns_prefix" {}
variable "kubernetes_version" {}

variable "node_count" {}
variable "vm_size" {}
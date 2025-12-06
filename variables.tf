variable "resource_group_name" {
  type    = string
  default = "aks-rg"
}

variable "location" {
  type    = string
  default = "West US"
}

variable "cluster_name" {
  type    = string
  default = "aks-demo-cluster"
}

variable "dns_prefix" {
  type    = string
  default = "aksdemo"
}

variable "agent_count" {
  type    = number
  default = 2
}

variable "vm_size" {
  type    = string
  default = "Standard_DS2_v2"
}

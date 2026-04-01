module "workload" {
  source              = "./modules/containers/aks"
  resource_group_name = var.resource_group_name
  cluster_name        = var.aks_cluster_name
  dns_prefix          = var.aks_dns_prefix
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
  tags                = local.common_tags
}

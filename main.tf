module "r0_workload" {
source = "./stacks/r0/modules/compute/linux_web_app"

  resource_group_name              = var.r0_resource_group_name
  app_name                         = var.r0_app_name
  service_plan_sku                = var.r0_service_plan_sku
  runtime_stack                   = var.r0_runtime_stack
  https_only                      = var.r0_https_only
  enable_system_assigned_identity = var.r0_enable_system_assigned_identity
  vnet_route_all_enabled          = var.r0_vnet_route_all_enabled
  tags                            = local.common_tags_r0
}
module "r1_workload" {
source = "./stacks/r1/modules/containers/aks"
  resource_group_name = var.r1_resource_group_name
  cluster_name        = var.r1_aks_cluster_name
  dns_prefix          = var.r1_aks_dns_prefix
  node_count          = var.r1_aks_node_count
  vm_size             = var.r1_aks_vm_size
  tags                = local.common_tags_r1
}
module "r2_workload" {
source = "./stacks/r2/modules/databases/mssql_server"

  resource_group_name           = var.r2_resource_group_name
  server_name                   = var.r2_server_name
  administrator_login           = var.r2_administrator_login
  sql_admin_password            = var.r2_sql_admin_password
  minimum_tls_version           = var.r2_minimum_tls_version
  public_network_access_enabled = var.r2_public_network_access_enabled
  tags                          = local.common_tags_r2
}
module "r3_workload" {
source = "./stacks/r3/modules/identity/user_assigned_identity"
  resource_group_name = var.r3_resource_group_name
  identity_name       = var.r3_identity_name
  tags                = local.common_tags_r3
}
module "r4_workload" {
source = "./stacks/r4/modules/databases/mssql_server"

  resource_group_name           = var.r4_resource_group_name
  server_name                   = var.r4_server_name
  administrator_login           = var.r4_administrator_login
  sql_admin_password            = var.r4_sql_admin_password
  minimum_tls_version           = var.r4_minimum_tls_version
  public_network_access_enabled = var.r4_public_network_access_enabled
  tags                          = local.common_tags_r4
}
module "r5_workload" {
source = "./stacks/r5/modules/storage/storage_account"

  resource_group_name               = var.r5_resource_group_name
  storage_account_name              = var.r5_storage_account_name
  account_tier                      = var.r5_account_tier
  account_replication_type          = var.r5_account_replication_type
  account_kind                      = var.r5_account_kind
  access_tier                       = var.r5_access_tier
  min_tls_version                   = var.r5_min_tls_version
  https_traffic_only                = var.r5_https_traffic_only
  allow_nested_items_to_be_public   = var.r5_allow_nested_items_to_be_public
  public_network_access_enabled     = var.r5_public_network_access_enabled
  tags                              = local.common_tags_r5
}

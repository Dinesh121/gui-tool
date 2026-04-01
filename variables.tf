variable "subscription_id" { type = string }

variable "r0_resource_group_name" { type = string }

variable "r0_app_name" { type = string }

variable "r0_service_plan_sku" { type = string }

variable "r0_runtime_stack" { type = string }

variable "r0_https_only" { type = bool }

variable "r0_enable_system_assigned_identity" { type = bool }

variable "r0_vnet_route_all_enabled" { type = bool }

variable "r0_application" { type = string }
variable "r0_environment" { type = string }
variable "r0_owner" { type = string }
variable "r0_cost_center" { type = string }
variable "r0_business_unit" { type = string }
variable "r0_data_classification" { type = string }
variable "r0_criticality" { type = string }

variable "r1_resource_group_name" { type = string }

variable "r1_aks_cluster_name" { type = string }

variable "r1_aks_dns_prefix" { type = string }

variable "r1_aks_node_count" { type = number }

variable "r1_aks_vm_size" { type = string }

variable "r1_application" { type = string }
variable "r1_environment" { type = string }
variable "r1_owner" { type = string }
variable "r1_cost_center" { type = string }
variable "r1_business_unit" { type = string }
variable "r1_data_classification" { type = string }
variable "r1_criticality" { type = string }

variable "r2_resource_group_name" { type = string }

variable "r2_server_name" { type = string }

variable "r2_administrator_login" { type = string }

variable "r2_sql_admin_password" {
  type        = string
  sensitive   = true
  description = "Set via TF_VAR_sql_admin_password at apply time"
}

variable "r2_minimum_tls_version" { type = string }

variable "r2_public_network_access_enabled" { type = bool }

variable "r2_application" { type = string }
variable "r2_environment" { type = string }
variable "r2_owner" { type = string }
variable "r2_cost_center" { type = string }
variable "r2_business_unit" { type = string }
variable "r2_data_classification" { type = string }
variable "r2_criticality" { type = string }

variable "r3_resource_group_name" { type = string }

variable "r3_identity_name" { type = string }

variable "r3_application" { type = string }
variable "r3_environment" { type = string }
variable "r3_owner" { type = string }
variable "r3_cost_center" { type = string }
variable "r3_business_unit" { type = string }
variable "r3_data_classification" { type = string }
variable "r3_criticality" { type = string }

variable "r4_resource_group_name" { type = string }

variable "r4_server_name" { type = string }

variable "r4_administrator_login" { type = string }

variable "r4_sql_admin_password" {
  type        = string
  sensitive   = true
  description = "Set via TF_VAR_sql_admin_password at apply time"
}

variable "r4_minimum_tls_version" { type = string }

variable "r4_public_network_access_enabled" { type = bool }

variable "r4_application" { type = string }
variable "r4_environment" { type = string }
variable "r4_owner" { type = string }
variable "r4_cost_center" { type = string }
variable "r4_business_unit" { type = string }
variable "r4_data_classification" { type = string }
variable "r4_criticality" { type = string }

variable "r5_resource_group_name" { type = string }

variable "r5_storage_account_name" { type = string }

variable "r5_account_tier" { type = string }

variable "r5_account_replication_type" { type = string }

variable "r5_account_kind" { type = string }

variable "r5_access_tier" { type = string }

variable "r5_min_tls_version" { type = string }

variable "r5_https_traffic_only" { type = bool }

variable "r5_allow_nested_items_to_be_public" { type = bool }

variable "r5_public_network_access_enabled" { type = bool }

variable "r5_application" { type = string }
variable "r5_environment" { type = string }
variable "r5_owner" { type = string }
variable "r5_cost_center" { type = string }
variable "r5_business_unit" { type = string }
variable "r5_data_classification" { type = string }
variable "r5_criticality" { type = string }

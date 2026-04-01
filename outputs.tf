output "r0_web_app_id" { value = module.r0_workload.id }
output "r0_default_hostname" { value = module.r0_workload.default_hostname }

output "r1_aks_id" { value = module.r1_workload.id }


output "r2_sql_server_id" { value = module.r2_workload.id }
output "r2_sql_fqdn" { value = module.r2_workload.fqdn }


output "r3_identity_id" { value = module.r3_workload.id }
output "r3_principal_id" { value = module.r3_workload.principal_id }


output "r4_sql_server_id" { value = module.r4_workload.id }
output "r4_sql_fqdn" { value = module.r4_workload.fqdn }


output "r5_storage_account_id" {
  value = module.r5_workload.id
}
output "r5_primary_blob_endpoint" {
  value = module.r5_workload.primary_blob_endpoint
}

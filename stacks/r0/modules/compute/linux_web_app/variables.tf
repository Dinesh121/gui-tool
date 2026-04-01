variable "resource_group_name" { type = string }
variable "app_name" { type = string }
variable "service_plan_sku" { type = string }
variable "https_only" { type = bool }
variable "enable_system_assigned_identity" { type = bool }
variable "vnet_route_all_enabled" { type = bool }
variable "runtime_stack" { type = string }
variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}

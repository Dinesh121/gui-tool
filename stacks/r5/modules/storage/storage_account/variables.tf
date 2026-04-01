variable "resource_group_name" { type = string }

variable "storage_account_name" {
  type        = string
  description = "Globally unique: 3-24 lowercase alphanumeric."
}

variable "account_tier" { type = string }
variable "account_replication_type" { type = string }
variable "account_kind" { type = string }
variable "access_tier" { type = string }
variable "min_tls_version" { type = string }
variable "https_traffic_only" { type = bool }
variable "allow_nested_items_to_be_public" { type = bool }
variable "public_network_access_enabled" { type = bool }

variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}

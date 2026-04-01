variable "resource_group_name" { type = string }
variable "server_name" { type = string }
variable "administrator_login" { type = string }
variable "sql_admin_password" {
  type      = string
  sensitive = true
}
variable "minimum_tls_version" { type = string }
variable "public_network_access_enabled" { type = bool }
variable "tags" {
  type        = map(string)
  description = "CAF-style resource tags."
}

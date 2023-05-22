#Backend
variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

#Database
variable "db_username" {
  type = string
}

variable "db_password" {
  type = string
  sensitive = true
}
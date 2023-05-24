#Backend
variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "environment" {
  type = string
}

#Database
variable "db_username" {
  type = string
}

variable "firewall" {
  type = list(string)
}

variable "db_password" {
  type = string
  sensitive = true
}

#Storage Account - Data Lake Store Gen 2
variable "containers_name" {
  type = list(string)
}

#Azute DataBricks/Key Vault
variable "object_id" {
  type = string
}
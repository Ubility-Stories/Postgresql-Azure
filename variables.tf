
variable "CLIENT_ID" {
  type      = string
  sensitive = true
}

variable "SECRET" {
  type      = string
  sensitive = true
}

variable "SUBSCRIPTION_ID" {
  type      = string
  sensitive = true
}
variable "TENANT_ID" {
  type      = string
  sensitive = true
}


variable "resource_group_name" {
  type    = string
  default = "db_rg"
}

variable "location" {
  type    = string
  default = "uaenorth"
}

variable "postgresql_server_name" {
  type    = string
  default = "db-server-customer"
}

variable "administrator_login" {
  type    = string
  default = "demo"
}

variable "administrator_password" {
  type    = string
  default = "Admin@1234"
}

variable "server_version" {
    type = number
    default = 9.5
  
}

variable "sku_name" {
    type = string
    default = "B_Gen5_2" 
}
variable "storage_mb" {
    type = string
    default = "5120"
  
}
variable "postgres_db_name" {
    type = string
    default = "postgres_db"
  
}
variable "charset" {
    type = string
    default = "UTF8"
  
}
variable "collation" {
    type = string
    default = "English_United States.1252"
  
}

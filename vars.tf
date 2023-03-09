variable "databricks_account_username" {
  default = "leonard.chang@infocepts.com"
}
variable "databricks_account_password" {
  default = "Info-8888"
}
variable "databricks_account_id" {
  default = "abcf8cee-5967-490f-9f21-18de490ab89a"
}

variable "tags" {
  default = {}
}

variable "cidr_block" {
  default = "10.4.0.0/16"
}

variable "region" {
  default = "ap-southeast-1"
}

// See https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "naming" {
  special = false
  upper   = false
  length  = 6
}

locals {
  prefix = "mci-demo"
}

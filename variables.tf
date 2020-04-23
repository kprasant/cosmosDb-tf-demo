variable "resource_group_name" {
  default = "rg-cosmosdb-tf"
}
variable "resource_group_location" {
  default = "eastus"
}
variable "cosmos_db_account_name" {
  default = "db-cosmos-account-demo"
}
variable "failover_location" {
  default = "eastus2"
}
variable "consistency_level" {
  default = "session"
}
variable "kind" {
  default = "GlobalDocumentDB"
}

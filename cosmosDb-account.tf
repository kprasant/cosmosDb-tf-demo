resource "azurerm_resource_group" "rg" {
  name = "${var.resource_group_name}"
  location = "${var.resource_group_location}"
}

resource "azurerm_cosmosdb_account" "acc" {
  name = "${var.cosmos_db_account_name}-${random_integer.ri.result}"
  location = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  offer_type = "Standard"
  kind = "${var.kind}"

  enable_automatic_failover = true
  
  consistency_policy {
    consistency_level       = "${var.consistency_level}"
  }
  
  geo_location {
    location = "${var.failover_location}"
    failover_priority = 1
  }
  
  geo_location {
    prefix = "${var.cosmos_db_account_name}-${random_integer.ri.result}-customid"
    location = "${var.resource_group_location}"
    failover_priority = 0
  }
}

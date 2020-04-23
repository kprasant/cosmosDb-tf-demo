provider "azurerm" {
  version = "~> 1.34.0"
  subscription_id = "${var.subscription_id}"
  tenant_id = "${var.tenant_id}"
}

resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

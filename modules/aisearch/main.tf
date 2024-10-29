resource "azurerm_search_service" "aisearch" {
  name                = var.search_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.search_sku

  replica_count   = var.replica_count
  partition_count = var.partition_count
}


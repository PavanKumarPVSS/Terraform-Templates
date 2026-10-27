# Storage Account
resource "azurerm_storage_account" "storage" {
  name                          = var.storage_account_name
  resource_group_name           = var.resource_group_name
  location                      = var.location
  account_tier                  = var.account_tier
  account_replication_type      = var.replication_type
  account_kind                  = var.account_kind
  https_traffic_only_enabled    = var.enable_https_traffic_only
  min_tls_version               = var.min_tls_version
  allow_nested_items_to_be_public = var.allow_public_access
  public_network_access_enabled   = var.public_network_access_enabled

  dynamic "network_rules" {
    for_each = var.enable_network_rules ? [1] : []
    content {
      default_action             = var.network_rules_default_action
      ip_rules                   = var.network_rules_ip_rules
      virtual_network_subnet_ids = var.network_rules_subnet_ids
      bypass                     = var.network_rules_bypass
    }
  }

  tags = var.tags
}

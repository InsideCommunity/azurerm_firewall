locals {
  virtual_hub                 = var.use_virtual_hub ? { dummy_create = true } : {}
  ip_configuration            = var.use_ip_configuration ? { dummy_create = true } : {}
  management_ip_configuration = var.use_management_ip_configuration ? { dummy_create = true } : {}
}

resource "azurerm_firewall" "az_fw" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  sku_tier            = var.sku_tier
  firewall_policy_id  = var.firewall_policy_id
  dns_servers         = var.dns_servers
  private_ip_ranges   = var.private_ip_ranges
  threat_intel_mode   = var.threat_intel_mode
  zones               = var.zones
  tags                = var.tags

  dynamic "virtual_hub" {
    for_each = local.virtual_hub
    content {
      virtual_hub_id  = var.virtual_hub_id
      public_ip_count = var.public_ip_count
    }
  }
  dynamic "management_ip_configuration" {
    for_each = local.management_ip_configuration
    content {
      name                 = var.mng_ip_config_name
      subnet_id            = var.mng_ip_config_subnet_id
      public_ip_address_id = var.mng_ip_config_public_ip_address_id
    }
  }
  dynamic "ip_configuration" {
    for_each = local.ip_configuration
    content {
      name                 = var.ip_config_name
      subnet_id            = var.ip_config_subnet_id
      public_ip_address_id = var.ip_config_public_ip_address_id
    }
  }
}
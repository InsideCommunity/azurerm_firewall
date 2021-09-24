variable "use_virtual_hub" {
  description = "Set to true to add virtual_hub block of settings"
  type        = bool
  default     = false
}

variable "use_ip_configuration" {
  description = "Set to true to add ip_configuration block of settings"
  type        = bool
  default     = false
}

variable "use_management_ip_configuration" {
  description = "Set to true to add management_ip_configuration block of settings"
  type        = bool
  default     = false
}

variable "name" {
  description = "Specifies the name of the Firewall."
  type        = string
  default     = null
}

variable "location" {
  description = " Specifies the supported Azure location where the resource exists."
  type        = string
  default     = null
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the resource."
  type        = string
  default     = null
}

variable "sku_name" {
  description = "Sku name of the Firewall. Possible values are AZFW_Hub and AZFW_VNet."
  type        = string
  default     = null
}

variable "sku_tier" {
  description = "Sku tier of the Firewall. Possible values are Premium and Standard."
  type        = string
  default     = null
}

variable "firewall_policy_id" {
  description = "The ID of the Firewall Policy applied to this Firewall."
  type        = string
  default     = null
}

variable "dns_servers" {
  description = "A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution."
  type        = list(string)
  default     = null
}

variable "private_ip_ranges" {
  description = "A list of SNAT private CIDR IP ranges, or the special string IANAPrivateRanges, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918."
  default     = null
}

variable "threat_intel_mode" {
  description = "The operation mode for threat intelligence-based filtering. Possible values are: Off, Alert,Deny and \"\"(empty string)"
  type        = string
  default     = "Alert"
}

variable "zones" {
  description = "Specifies the availability zones in which the Azure Firewall should be created."
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  default     = {}
}

variable "virtual_hub_id" {
  description = "Specifies the ID of the Virtual Hub where the Firewall resides in."
  type        = string
  default     = null
}

variable "public_ip_count" {
  description = "Specifies the number of public IPs to assign to the Firewall."
  type        = number
  default     = 1
}

variable "mng_ip_config_name" {
  description = "Specifies the name of the IP Configuration."
  type        = string
  default     = null
}

variable "mng_ip_config_subnet_id" {
  description = "Reference to the subnet associated with the IP Configuration."
  type        = string
  default     = null
}

variable "mng_ip_config_public_ip_address_id" {
  description = "The ID of the Public IP Address associated with the firewall. The Management Subnet used for the Firewall must have the name AzureFirewallManagementSubnet and the subnet mask must be at least a /26."
  type        = string
  default     = null
}

variable "ip_config_name" {
  description = "Specifies the name of the IP Configuration."
  type        = string
  default     = null
}

variable "ip_config_subnet_id" {
  description = "Reference to the subnet associated with the IP Configuration. The Subnet used for the Firewall must have the name AzureFirewallSubnet and the subnet mask must be at least a /26."
  type        = string
  default     = null
}

variable "ip_config_public_ip_address_id" {
  description = "The ID of the Public IP Address associated with the firewall."
  type        = string
  default     = null
}

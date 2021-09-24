# TF_azurerm_firewall_module

Deploy an Azure Firewall with a dedicated Terraform module.

<!-- BEGIN_TF_DOCS -->
## Requirements

* A resource group

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_firewall.az_fw](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/firewall) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers) | A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution. | `list(string)` | `null` | no |
| <a name="input_firewall_policy_id"></a> [firewall\_policy\_id](#input\_firewall\_policy\_id) | The ID of the Firewall Policy applied to this Firewall. | `string` | `null` | no |
| <a name="input_ip_config_name"></a> [ip\_config\_name](#input\_ip\_config\_name) | Specifies the name of the IP Configuration. | `string` | `null` | no |
| <a name="input_ip_config_public_ip_address_id"></a> [ip\_config\_public\_ip\_address\_id](#input\_ip\_config\_public\_ip\_address\_id) | The ID of the Public IP Address associated with the firewall. | `string` | `null` | no |
| <a name="input_ip_config_subnet_id"></a> [ip\_config\_subnet\_id](#input\_ip\_config\_subnet\_id) | Reference to the subnet associated with the IP Configuration. The Subnet used for the Firewall must have the name AzureFirewallSubnet and the subnet mask must be at least a /26. | `string` | `null` | no |
| <a name="input_location"></a> [location](#input\_location) | Specifies the supported Azure location where the resource exists. | `string` | `null` | no |
| <a name="input_mng_ip_config_name"></a> [mng\_ip\_config\_name](#input\_mng\_ip\_config\_name) | Specifies the name of the IP Configuration. | `string` | `null` | no |
| <a name="input_mng_ip_config_public_ip_address_id"></a> [mng\_ip\_config\_public\_ip\_address\_id](#input\_mng\_ip\_config\_public\_ip\_address\_id) | The ID of the Public IP Address associated with the firewall. The Management Subnet used for the Firewall must have the name AzureFirewallManagementSubnet and the subnet mask must be at least a /26. | `string` | `null` | no |
| <a name="input_mng_ip_config_subnet_id"></a> [mng\_ip\_config\_subnet\_id](#input\_mng\_ip\_config\_subnet\_id) | Reference to the subnet associated with the IP Configuration. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the Firewall. | `string` | `null` | no |
| <a name="input_private_ip_ranges"></a> [private\_ip\_ranges](#input\_private\_ip\_ranges) | A list of SNAT private CIDR IP ranges, or the special string IANAPrivateRanges, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918. | `any` | `null` | no |
| <a name="input_public_ip_count"></a> [public\_ip\_count](#input\_public\_ip\_count) | Specifies the number of public IPs to assign to the Firewall. | `number` | `1` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group in which to create the resource. | `string` | `null` | no |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | Sku name of the Firewall. Possible values are AZFW\_Hub and AZFW\_VNet. | `string` | `null` | no |
| <a name="input_sku_tier"></a> [sku\_tier](#input\_sku\_tier) | Sku tier of the Firewall. Possible values are Premium and Standard. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map` | `{}` | no |
| <a name="input_threat_intel_mode"></a> [threat\_intel\_mode](#input\_threat\_intel\_mode) | The operation mode for threat intelligence-based filtering. Possible values are: Off, Alert,Deny and ""(empty string) | `string` | `"Alert"` | no |
| <a name="input_use_ip_configuration"></a> [use\_ip\_configuration](#input\_use\_ip\_configuration) | Set to true to add ip\_configuration block of settings | `bool` | `false` | no |
| <a name="input_use_management_ip_configuration"></a> [use\_management\_ip\_configuration](#input\_use\_management\_ip\_configuration) | Set to true to add management\_ip\_configuration block of settings | `bool` | `false` | no |
| <a name="input_use_virtual_hub"></a> [use\_virtual\_hub](#input\_use\_virtual\_hub) | Set to true to add virtual\_hub block of settings | `bool` | `false` | no |
| <a name="input_virtual_hub_id"></a> [virtual\_hub\_id](#input\_virtual\_hub\_id) | Specifies the ID of the Virtual Hub where the Firewall resides in. | `string` | `null` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | Specifies the availability zones in which the Azure Firewall should be created. | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_fw_id"></a> [fw\_id](#output\_fw\_id) | n/a |
| <a name="output_fw_name"></a> [fw\_name](#output\_fw\_name) | n/a |
<!-- END_TF_DOCS -->
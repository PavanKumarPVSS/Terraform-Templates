# General Virtual Network Module

This module creates an Azure Virtual Network, configurable plain subnets, and one empty network security group associated with each subnet. It does not configure service delegations or NSG rules.

## Prerequisites

- **Resource Group**: An existing Azure Resource Group must be created first

## Features

- Creates a VNet with configurable address space
- Creates any number of subnets from a name-to-prefix map
- Creates and associates one NSG per subnet
- Leaves subnet delegations and NSG rules to the consuming configuration

## Usage

```hcl
module "vnet" {
  source = "./modules/vnet"

  vnet_name           = "my-vnet"
  location            = "East US"
  resource_group_name = "my-resource-group"
  address_space       = ["10.0.0.0/16"]

  subnets = {
    app = {
      address_prefixes = ["10.0.1.0/24"]
    }
    data = {
      address_prefixes = ["10.0.2.0/24"]
    }
  }

  tags = {
    environment = "production"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vnet_name | Name of the virtual network | `string` | n/a | yes |
| resource_group_name | Name of the resource group | `string` | n/a | yes |
| location | Azure region | `string` | n/a | yes |
| address_space | Address space for the VNet | `list(string)` | n/a | yes |
| subnets | Subnets keyed by name, each with `address_prefixes` | `map(object({ address_prefixes = list(string) }))` | n/a | yes |
| tags | Tags to apply to resources | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| vnet_id | ID of the virtual network |
| vnet_name | Name of the virtual network |
| subnet_ids | Subnet IDs keyed by subnet name |
| network_security_group_ids | NSG IDs keyed by subnet name |

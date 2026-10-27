resource_group_name = "rg-testing"
location            = "East US"
environment         = "development"
vnet_name           = "vnet-development"
vnet_address_space  = ["10.0.0.0/16"]
subnets = {
  subnet-1 = {
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet-2 = {
    address_prefixes = ["10.0.2.0/24"]
  }
}

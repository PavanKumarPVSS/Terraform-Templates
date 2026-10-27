resource_group_name = "rg-qa"
location            = "East US"
environment         = "qa"
vnet_name           = "vnet-qa"
vnet_address_space  = ["10.1.0.0/16"]
subnets = {
  subnet-1 = {
    address_prefixes = ["10.1.1.0/24"]
  }
  subnet-2 = {
    address_prefixes = ["10.1.2.0/24"]
  }
}

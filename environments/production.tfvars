resource_group_name = "rg-production"
location            = "East US"
environment         = "production"
vnet_name           = "vnet-production"
vnet_address_space  = ["10.2.0.0/16"]
subnets = {
  subnet-1 = {
    address_prefixes = ["10.2.1.0/24"]
  }
  subnet-2 = {
    address_prefixes = ["10.2.2.0/24"]
  }
}

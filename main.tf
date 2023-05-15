#############################################
# Create New Virtual Network and Subnet Mask 
#############################################


resource "azurerm_resource_group" "rg-1" {
  name = var.rg_name
  location = var.location 
}

resource "azurerm_virtual_network" "vNet-1" {
  name = var.vNet_name
  resource_group_name = azurerm_resource_group.rg-1.name
  location = azurerm_resource_group.rg-1.location
  address_space = ["10.0.0.0/16"]
  
  subnet {
    name = var.subnet_name
    address_prefix = "10.0.1.0/24"
    
  }
  
}

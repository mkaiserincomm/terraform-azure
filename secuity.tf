resource "azurerm_network_security_group" "sg" {
  name                = "${var.net-name}"
  location            = var.location
  resource_group_name = "${azurerm_resource_group.resource.name}"
  
  security_rule {
      name                       = "SSH"
      priority                   = 1001
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
  }
  tags               = merge({Name = "${var.net-name}" }, var.common-tags)
}
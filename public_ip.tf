
resource "azurerm_public_ip" "main" {
  name                = "${var.appname}-public-ip"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  allocation_method   = "Static"
  domain_name_label   = azurerm_resource_group.main.name

  tags = {
    department = var.department
  }
}
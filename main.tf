#main.tf
provider "azurerm" {
  features {
    
  }
}

variable "ipname" {
  description = "Enter name for Public ip "
}

resource "azurerm_public_ip" "myname" {
   name                = var.ipname
  resource_group_name = "datarg"
  location            = "eastus"
  allocation_method   = "Static"
  tags = {
    environment = "Production"
  }
}
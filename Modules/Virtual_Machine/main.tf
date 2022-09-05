variable "prefix" {
  default = "generic"
}
resource "azurerm_virtual_network" "main" {
  name                = "${var.prefix}-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.rg_name
}

resource "azurerm_subnet" "internal" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-nic"
  location            = var.location
  resource_group_name = var.rg_name

  ip_configuration {
    name                          = "${var.prefix}-config"
    subnet_id                     = azurerm_subnet.internal.id
    private_ip_address_allocation = "Dynamic"
 }
}

resource "azurerm_windows_virtual_machine" "vm_generic" {
    name                        = "${var.prefix}-vm"
    resource_group_name         = var.rg_name
    location                    = var.location
    size                        = var.vm_size
    admin_username              = var.admin_usename
    admin_password              = var.admin_password
    network_interface_ids       = [azurerm_network_interface.main.id]
    tags                        = {
    
        source        = "Terraform"
        owner         = "Hybrid Cloud Team"
        environment   = "Dev"
        Developer     = "Depal Dhir"
}
    os_disk {
        name                    = "${var.vm_name}-os-disk-01"
        caching                 = "ReadWrite"
        storage_account_type    = var.os_disk_type
    }
    source_image_reference {

        # To get this information, run this command at Azure CLI - az vm image list --all --publisher Canonical
        publisher               = var.image_publisher
        offer                   = var.image_offer
        sku                     = var.image_sku
        version                 = "latest"
    }
}

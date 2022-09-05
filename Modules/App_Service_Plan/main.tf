resource "azurerm_service_plan" "asp_generic" {
  name                = "api-appserviceplan-pro"
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = "Windows"
    # For Linux use the following line and comment windows one above
    # os_type           = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_windows_web_app" "awwp_generic" {
# resource "azurerm_linux_web_app" "awwp_generic" {

  name                = "example-windows-web-app"
  # For Linux use the following line and comment windows one above
  # name                = "example-linux-web-app"
  resource_group_name = var.rg_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.asp_generic.id

  site_config {}
}

resource "azurerm_windows_web_app_slot" "example" {
 # For Linux use the following line and comment windows one above
 # resource "azurerm_linux_web_app_slot" "example" {

  name           = "example-slot"
  app_service_id = azurerm_windows_web_app.awwp_generic.id
  # For Linux use the following line and comment windows one above
  # app_service_id = azurerm_linux_web_app.example.id

  site_config {}
}
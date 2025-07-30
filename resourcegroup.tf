
resource "azurerm_resource_group" "oguns" {
  location   = "eastus"
  managed_by = null
  name       = "oguns"
  tags = {
    terraform = "devtest"
  }
}

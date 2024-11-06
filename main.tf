

module "naming" {
  source  = "Azure/naming/azurerm"
  version = "0.4.1"
  suffix  = local.suffix
}

module "naming" {
  source              = "../../"
  landingzone         = "hubm"
  workload_identifier = "tsi01"
  environment         = "ppd"
  location            = "uksouth"
}


locals {
  # Used in the landingzone variable validation to ensure the correct landing zone is selected.
  zone_ids = [
    "hubm",
    "hubc",
    "spoke"
  ]
  # Used in the environment variable validation to ensure the correct landing zone is selected.
  env_ids = [
    "dev",
    "tst",
    "prd",
    "ppd"
  ]
  # Used to change the region to a shorter version for the suffix.
  region_short = {
    ukwest  = "ukw",
    uksouth = "uks"
  }
  # Used to create the suffix for the resources, attempts to concatenate the landingzone and workload_identifier with the environment and region_short.
  # If the environment and region_short are not set, it will default to the landingzone and workload_identifier. (15 characters max)
  suffix = try(concat(
    [var.landingzone, var.workload_identifier],
    [var.environment, local.region_short[var.location]]
    ),
    [var.landingzone, var.workload_identifier]
  )
}

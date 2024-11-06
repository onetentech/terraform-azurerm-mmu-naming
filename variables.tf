variable "landingzone" {
  description = "The landing zone for the resources."
  type        = string
  validation {
    condition     = can(index(local.zone_ids, var.landingzone))
    error_message = "The environment must be one of dev, tst, prd, ppd."
  }
}
variable "environment" {
  description = "The environment for the resources (e.g., dev, prd, tst, ppd)."
  type        = string
  default     = null
  validation {
    condition     = can(index(local.env_ids, var.environment))
    error_message = "The environment must be one of dev, tst, prd, ppd."
  }
}
variable "workload_identifier" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  validation {
    condition     = length(var.workload_identifier) <= 6
    error_message = "The workload_identifier must be less than or equal to 6 characters."
  }
}
variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
  default     = null
  validation {
    condition = anytrue([
      can(index([for k, v in local.region_short : k], var.location)),
      var.location == null
    ])
    error_message = "Must be either uksouth or ukwest."
  }
}

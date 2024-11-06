<!-- Begin tf-docs  -->
# MMU Naming Module

## Description

The MMU Naming Module is designed to standardize the naming conventions for Azure resources. This module ensures that all resources follow a consistent naming pattern, which helps in managing and identifying resources easily.



## Required Inputs

The following input variables are required:

### <a name="input_landingzone"></a> [landingzone](#input\_landingzone)

Description: The landing zone for the resources.

Type: `string`

### <a name="input_workload_identifier"></a> [workload\_identifier](#input\_workload\_identifier)

Description: The Azure region where the resources will be deployed.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_environment"></a> [environment](#input\_environment)

Description: The environment for the resources (e.g., dev, prd, tst, ppd).

Type: `string`

Default: `null`

### <a name="input_location"></a> [location](#input\_location)

Description: The Azure region where the resources will be deployed.

Type: `string`

Default: `null`



# Examples

```hcl
module "naming" {
  source              = "../../"
  landingzone         = "hubm"
  workload_identifier = "tsi01"
  environment         = "ppd"
  location            = "uksouth"
}
output "results" {
  value = module.naming
}
```
<!-- End tf-docs -->
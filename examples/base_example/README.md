<!-- Begin tf-docs  -->
# module-name - this is the header for the example

The example will do exactly this:

- Nothing, it's a dummy configuration
- More nothing
- Optionally nothing

## Example

```
module "naming" {
  source              = "../../"
  landingzone         = "hubm"
  workload_identifier = "tsi01"
  environment         = "ppd"
  location            = "uksouth"
}
```
<!-- End tf-docs -->
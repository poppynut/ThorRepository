# stage/mysql/terragrunt.hcl
include "root" {
  path = find_in_parent_folders()
}
terraform {
  source = "../../../modules/s3bucket"
}
inputs = {
  s3_bucket_name = "dev-datastore-inifinity-stones"
  bucket = "dev-datastore-inifinity-stones"
}

# # Include shared root configurations

# include {
#   path = "../terragrunt.hcl"
# }
# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "s3_bucket_terraform_state" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
  default = "terraform-iaac-clouding-dev"
}

variable "dynanodb_table_terraform_state" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default = "terraform-iaac-clouding-dev"
}

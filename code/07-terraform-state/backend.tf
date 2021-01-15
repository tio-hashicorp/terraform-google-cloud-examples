# Define Terraform backend using a Google Cloud Storage bucket for storing the Terraform state
terraform {
  backend "gcs" {
    bucket  = "tio-hashicorp-bucket"
    prefix    = "tfs"
 }
}

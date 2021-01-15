# Configure the Google Cloud provider
provider "google" {
  project = var.project
  region  = var.region
}

# Create a Google Cloud Storage Bucket
resource "google_storage_bucket" "terraform_state" {
  name          = var.bucket_name
  force_destroy = true
}

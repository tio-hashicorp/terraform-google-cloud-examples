# Input variable: Name of Google Cloud Storage bucket
variable "bucket_name" {
  description = "The name of the Google Cloud Storage bucket. Must be globally unique."
  default = "tio-hashicorp-bucket"
}

variable "project" {
  default = "terraform-gcloud1"
}

variable "region" {
  default = "asia-southeast1"
}

variable "zone" {
  default = "asia-southeast1-a"
}

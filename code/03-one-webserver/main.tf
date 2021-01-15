# Configure the Google Cloud provider
provider "google" {
  project = "terraform-gcloud1"
  region  = "asia-southeast1"
}

# Create a Google Compute Firewall
resource "google_compute_firewall" "instance" {
  name    = "terraform-gcloud"
  network = "default"

  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
}

# Create a Google Compute instance
resource "google_compute_instance" "example" {
  name          = "example"
  machine_type  = "f1-micro"
  zone          = "asia-southeast1-a"
  
  boot_disk {
    initialize_params {
      image = "ubuntu-1604-lts"
    }
  }
  
  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
  
  tags = ["terraform-example"]
  
  metadata_startup_script = "echo 'Hello, World' > index.html ; nohup busybox httpd -f -p 8080 &"
}

# Output variable: Public IP address
output "public_ip" {
  value = "http://${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}:8080"
}

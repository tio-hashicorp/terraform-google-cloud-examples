# Output variable: Public IP address
output "public_ip" {
  value = "http://${google_compute_instance.example.network_interface.0.access_config.0.nat_ip}:${var.server_port}"
}

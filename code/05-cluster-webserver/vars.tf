# Input variable: server port
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = "80"
}

variable "region" {
  description = "the region instances will be in"
  default = "asia-southeast1"
}

variable "zone" {
  description = "the zone instances will be in"
  default = "asia-southeast1-a"
}

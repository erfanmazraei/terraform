resource "google_compute_network" "this" {
  name                    = "vpc-network"
  auto_create_subnetworks = true
  routing_mode            = "REGIONAL"
}
resource "google_compute_network" "week8_vpc" {
  name                    = "week8-vpc"
  auto_create_subnetworks = false
}
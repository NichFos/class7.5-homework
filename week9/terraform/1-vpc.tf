resource "google_compute_network" "week9_vpc" {
  name                    = "week9-vpc"
  auto_create_subnetworks = false
}
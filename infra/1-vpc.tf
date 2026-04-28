# Our VPC network configuration
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network 
resource "google_compute_network" "week7_vpc" {
  name                    = "week7-vpc"
  auto_create_subnetworks = false # Set to true by default, we want to create our own subnets, so set this to false.
  mtu                     = 1460
}




# Our subnet configuration 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork#example-usage---subnetwork-basic

resource "google_compute_subnetwork" "week7_subnet" {
  name          = "week7-subnet"
  ip_cidr_range = "10.80.0.0/16"
  region        = "us-central1"
  network       = google_compute_network.week7_vpc.id
}

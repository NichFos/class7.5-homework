resource "google_compute_subnetwork" "week8_finland_subnet" {
  name          = "week8-finland-subnet"
  ip_cidr_range = "10.60.0.0/24"
  region        = "europe-north1"
  network       = google_compute_network.week8_vpc.id
}
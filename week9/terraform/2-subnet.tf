resource "google_compute_subnetwork" "week9_iowa_subnet" {
  name          = "week9-iowa-subnet"
  ip_cidr_range = "10.60.0.0/24"
  region        = "us-central1"
  network       = google_compute_network.week9_vpc.id
}
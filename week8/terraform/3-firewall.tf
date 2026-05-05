resource "google_compute_firewall" "allow_web_traffic_port_80" {
  name        = "allow-web-traffic-port-80"
  network     = google_compute_network.week8_vpc.id
  description = "Creates firewall rule targeting tagged VMs to allow port 80 web traffic"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["allow-web-traffic-for-finland-vm"]
}
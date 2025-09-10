resource "google_compute_network" "localnetwork" {
  name = "lokesh-network"
  auto_create_subnetworks = false 
}
output "n" {
  value = {
    a = google_compute_network.localnetwork.name 
    b = google_compute_network.localnetwork.auto_create_subnetworks
    }
}


resource "google_compute_subnetwork" "localsubnetwork" {
  name = "lokesh-subnetwork"
  network = google_compute_network.localnetwork.name
  region = "us-central1"
  ip_cidr_range = "10.0.0.0/22"
}

output "s" {
  value = {
    a = google_compute_subnetwork.localsubnetwork.name
    b = google_compute_subnetwork.localsubnetwork.network
    c = google_compute_subnetwork.localsubnetwork.region
    d = google_compute_subnetwork.localsubnetwork.ip_cidr_range
  }
}

resource "google_compute_firewall" "localfirewall" {
  name = "lokesh-firewall"
  network = google_compute_network.localnetwork.name
  direction = "INGRESS"
  allow {
    ports = ["22", "443", "80", "8080", "9000"]
    protocol = "tcp"
  }
  source_ranges = ["0.0.0.0/0"]
}

output "f" {
  value = {
    f = google_compute_firewall.localfirewall.name
    g = google_compute_firewall.localfirewall.network
    h = google_compute_firewall.localfirewall.direction
    i = google_compute_firewall.localfirewall.source_ranges
  }
}



output "alloutputs" {
  value = {
    a = google_compute_network.localnetwork.name
    b = google_compute_subnetwork.localsubnetwork.name
    c = google_compute_subnetwork.localsubnetwork.region
    d = google_compute_subnetwork.localsubnetwork.ip_cidr_range
    e = google_compute_subnetwork.localsubnetwork.network
    f = google_compute_firewall.localfirewall.name
    g = google_compute_firewall.localfirewall.network
    h = google_compute_firewall.localfirewall.direction
    i = google_compute_firewall.localfirewall.source_ranges

  }
}

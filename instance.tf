resource "google_compute_instance" "localvm" {
  name = "lokesh-vm"
  zone = "us-central1-a"
  machine_type = "e2-small"
  boot_disk {
    initialize_params {
      image = "debian-12"
    }
  }
  network_interface {
    network = "default"
  }
}

output "instaneout" {
  value = {
    a = google_compute_instance.localvm.name
  }
}

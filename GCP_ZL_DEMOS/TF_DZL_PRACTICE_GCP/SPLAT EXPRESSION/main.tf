
resource "google_compute_instance" "splat-demo" {
  name         = "splat-demo-${count.index}"
  count        = length(var.name_count)
  machine_type = var.machine_type["dev"]
  zone         = "asia-southeast1-a"
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }
}


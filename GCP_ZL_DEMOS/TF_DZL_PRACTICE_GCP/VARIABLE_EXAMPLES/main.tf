resource "google_compute_instance" "variable-demo" {
  name = "variable-demo"
  machine_type = var.list[2]
  zone = var.types["tokyo"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
  }
}



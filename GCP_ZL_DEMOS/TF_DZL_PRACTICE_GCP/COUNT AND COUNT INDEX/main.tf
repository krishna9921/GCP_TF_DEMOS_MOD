resource "google_compute_instance" "count-demo" {
  name         = var.instance_names[count.index]
  count        = 2
  machine_type = var.list[count.index]
  zone         = var.types["singapore"]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
  }
}



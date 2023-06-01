provider "google" {
  region = "asia-southeast1"
  credentials = "key.json"
  project = "cloudsqldeepdive"

}
resource "google_compute_instance" "conditional-exp-demo-dev" {
  name = "instance-con-exp-demo-dev"
  machine_type = "g1-small"
  zone = var.zone
  count = var.istest==true ? 2 : 0
    boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
  }
}

resource "google_compute_instance" "conditional-exp-demo-prod" {
  name = "instance-con-exp-demo-prod"
  machine_type = "f1-micro"
  zone = var.zone
  count = var.istest==false ? 1 : 0
  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"
  }
}
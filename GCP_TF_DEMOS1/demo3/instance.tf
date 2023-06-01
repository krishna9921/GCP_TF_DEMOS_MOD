resource "google_compute_address" "static" {
  name = "ipv4-address"
}
resource "google_compute_instance" "demo2" {
    name = "demo2"
    machine_type = var.machine_type 
    zone = "asia-southeast1-a"
    
boot_disk {
    initialize_params {
      image = var.image
    }
}

    network_interface {
    network = "default"
    #Including the below code to get the external ip
    access_config {
      nat_ip = google_compute_address.static.address
    }
  }

}    


output "public_ip" { 
  value = google_compute_address.static.address
   }

output "machine_type" { 
  value = google_compute_instance.demo2.machine_type
   }
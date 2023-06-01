/*
resource "google_compute_firewall"  "allow_http_n_https" {
  name = "allow-http-n-https"
  network = "default"

dynamic "allow" {
  for_each = var.allow_ports
  content {
  protocol = "tcp"
  ports = [allow.value]
  }
}
  target_tags = ["allow-http","allow-https"]

}

*/

# Referring the same code as above but including the iterator values
resource "google_compute_firewall"  "allow_http_n_https" {
  name = "allow-http-n-https"
  network = "default"

  dynamic "allow" {
    for_each = var.allow_ports
    iterator = port
    content {
      protocol = "tcp"
      ports = [port.value]
    }
  }
  target_tags = ["allow-http","allow-https"]

}




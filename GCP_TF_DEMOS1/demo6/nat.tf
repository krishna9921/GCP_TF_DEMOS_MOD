resource "google_compute_router_nat" "nat" {
  name   = "private-ip-nat"
  router = google_compute_route.main_public.name
  nat_ip_allocate_option = "AUTO_ONLY"
  
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = "private"
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}
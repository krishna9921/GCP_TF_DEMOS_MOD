output "machine_type" {
  value = google_compute_instance.splat-demo[*].machine_type
}

output "name" {
  value = google_compute_instance.splat-demo[*].name
}

output "instance_id" {
  value =  google_compute_instance.splat-demo[*].id
}
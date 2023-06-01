variable "image" {
  default = "debian-9-stretch-v20200805"
}

variable "name_count" {
  default = ["server1", "server2"]
}
variable "machine_type" {
  type = "map"
  default = {
    "dev"  = "f1-micro"
    "test" = "g1-small"
    "prod" = "n1-standard"
  }
}

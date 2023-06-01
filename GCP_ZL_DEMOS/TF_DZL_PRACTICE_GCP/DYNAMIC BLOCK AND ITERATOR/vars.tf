variable "allow_ports" {
  type = list(number)
  description = "List of ingress ports"
  default = [80,443,8080,9093,9090]
}
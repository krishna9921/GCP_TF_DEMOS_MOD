variable "istest" {}
variable zone {
    default =  "asia-southeast1-a"
  }

variable list {
  type = list
  default = ["f1-micro","g1-small","n1-standard"]
}
variable image {
  default = "debian-9-stretch-v20200805"
}
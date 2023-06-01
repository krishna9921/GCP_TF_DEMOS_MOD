variable types {
  type = map
  default = {
    singapore = "asia-southeast1-a"
    taiwan = "asia-east1-b"
    tokyo = "asia-northeast1-c"
  }
}
variable list {
  type = list
  default = ["f1-micro","g1-small","n1-standard"]
}
variable image {
  default = "debian-9-stretch-v20200805"
}
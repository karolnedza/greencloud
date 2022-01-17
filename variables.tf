
variable greencloud {
  type     = map
  default  = {
    sub1 = {
      name  = "hnk-1",
      id = "12112-4fdsf-32",
      cidr = "10.10.0.1",
      size = "not-used-atm"
    },
    sub2 = {
      name    = "hnk-2",
      id = "fffff-ff-32",
      cidr = "10.20.0.2",
      region = "West Europe"
      size = "not-used-atm"
    }
  }
}

variable "subs_secret" {
  default = "FWFWEFWF"
}
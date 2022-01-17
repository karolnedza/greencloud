
variable greencloud {
  type     = map
  default  = {
    sub1 = {
      name  = "hnk-1",
      id = "12112-4fdsf-32"
    },
    sub2 = {
      name    = "hnk-2",
      id = "fffff-ff-32",
      terraform = {
      cidr = "10.20.0.2",
      region_name = "West Europe"
      size = "not-used-atm"}
    }
  }
}

variable "variables" {
 terraform = {
     {
      cidr = "10.10.0.1",
      region_name = "West Europe",
      size = "not-used-atm"
      }
  }
}

variable greencloud {
  type     = map
  default  = {
        sub1 = {
                name = "heineken-1"
                vcs_repo = {
                    identifier = "karolnedza/avx-spoke-azure",
                    oauth_token_id = "ot-vWFCSYDGESPuNwYU"
             }
                variables = {
                    terraform = {
                    cidr = "10.10.0.0/24",
                    region = "Central Europe"
                 }
                terraform_sensitive = {
                    controller_ip = "1.2.34.4"
                 }
            }
        },
        sub2 = {
                name = "heineken-2"
                vcs_repo = {
                    identifier = "karolnedza/avx-spoke-azure",
                    oauth_token_id = "ot-vWFCSYDGESPuNwYU"
             }
                variables = {
                    terraform = {
                    cidr = "10.20.0.0/24",
                    region = "West Europe"
                 }
                terraform_sensitive = {
                    controller_ip = "11.2.34.4"
                 }
            }
        }
    }
}
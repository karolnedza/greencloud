
variable greencloud {
  type     = map
  default  = {
        sub1 = {
                name = "heineken-1"  # Workspace name
                variables = {
                    terraform = {
                    arm_subscription_id = "bd793cff-d6fc-4eb4-a71c-24f06dc8dff7"
                    cidr = "10.110.0.0/24",
                    region = "West Europe"
                    name = "green-cloud-1"   # Name for Vnet/GW/Account
                 }
            }
        },
        #  sub2 = {
        #         name = "heineken-2"
        #         variables = {
        #             terraform = {
        #             arm_subscription_id = "4a22a878-65d2-4ff7-ada3-a29e475bd1ea"
        #             cidr = "10.112.0.0/24",
        #             region = "Germany West Central"
        #             name = "greennow"
        #          }
        #     }
        # }
    }
}

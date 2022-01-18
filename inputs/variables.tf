
variable greencloud {
  type     = map
  default  = {
        sub1 = {
                name = "heineken-1"
                vcs_repo = {
                    identifier = "karolnedza/avx-spoke-azure",
                    oauth_token_id = data.terraform_remote_state.secrets.outputs.tf_token
             }
                variables = {
                    terraform = {
                    arm_subscription_id = "4a22a878-65d2-4ff7-ada3-a29e475bd1ea"
                    cidr = "10.110.0.0/24",
                    region = "Central US"
                 }
            }
        }#,
        # sub2 = {
        #         name = "heineken-2"
        #         vcs_repo = {
        #             identifier = "karolnedza/avx-spoke-azure",
        #             oauth_token_id = data.terraform_remote_state.secrets.outputs.tf_token
        #      }
        #         variables = {
        #             terraform = {
        #             arm_subscription_id = "4a22a878-65d2-4ff7-ada3-a29e475bd1ea"
        #             cidr = "10.112.0.0/24",
        #             region = "Germany West Central"
        #          }
        #     }
        # }
    }
}
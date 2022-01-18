
module "tf_workspace" {

  version = "1.0.3"
  source  = "app.terraform.io/greencloud/workspace/tfe"

  organization = "greencloud"
  
   vcs_repo = {
    identifier = "karolnedza/terraform-aviatrix-greencloud-spoke",   # this doesn't have to be static, some logic can be added here 
    oauth_token_id = data.terraform_remote_state.secrets.outputs.oauth_id
  }

  for_each = var.greencloud  

  name = each.value.name
  variables = each.value.variables

}







































# module "tf_workspace_1" {

#   version = "1.0.1"
#   source  = "app.terraform.io/greencloud/workspace/tfe"

#   organization = "greencloud"
#   name              = "ws-heinken-1"

#    vcs_repo = {
#     identifier = "karolnedza/terraform-aviatrix-greencloud-spoke",   # this doesn't have to be static, some logic can be added here 
#     oauth_token_id = data.terraform_remote_state.secrets.outputs.oauth_id
#   }


#   variables = {
#     terraform = {
#       cidr = "10.10.0.0/24",
#       region = "Central Europe",
#       name = "name1"
#     }
#   }
# }



# module "tf_workspace_2" {

#   version = "1.0.1"
#   source  = "app.terraform.io/greencloud/workspace/tfe"


#   organization = "greencloud"
#   name              = "ws-heinken-2"

#    vcs_repo = {
#     identifier = "karolnedza/terraform-aviatrix-greencloud-spoke",   # this doesn't have to be static, some logic can be added here 
#     oauth_token_id = data.terraform_remote_state.secrets.outputs.oauth_id
#   }


#   variables = {
#     terraform = {
#       cidr = "10.22.0.0/24",
#       region = "West Europe"
#       name = "name2"
#     }
#   }
# }

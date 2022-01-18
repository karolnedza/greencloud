
module "tf_workspace" {

  for_each = var.greencloud
  source  = "app.terraform.io/greencloud/workspace/tfe"

  organization = "greencloud"
  
  name = each.value.name
  vcs_repo = each.value.vcs_repo
  variables = each.value.variables

}







































# module "tf_workspace_1" {

#  for_each = var.greencloud
#   source = "./tfe-workspace"

#   organization = "greencloud"
#   name              = "ws-heinken-1"

#   vcs_repo = {
#       identifier = "karolnedza/avx-spoke-azure",
#       oauth_token_id = "ot-vWFCSYDGESPuNwYU"
#     }

#   variables = {
#     terraform = {
#       cidr = "10.10.0.0/24",
#       region = "Central Europe"
#     }
#     terraform_sensitive = {
#       controller_ip = "1.2.34.4"
#     }
#   }
# }



# module "tf_workspace_2" {

#  for_each = var.greencloud
#   source = "./tfe-workspace"

#   organization = "greencloud"
#   name              = "ws-heinken-2"

#   vcs_repo = {
#       identifier = "karolnedza/avx-spoke-azure",
#       oauth_token_id = "ot-vWFCSYDGESPuNwYU"
#     }

#   variables = {
#     terraform = {
#       cidr = "10.22.0.0/24",
#       region = "West Europe"
#     }
#     terraform_sensitive = {
#       controller_ip = "1.2.34.4"
#     }
#   }
# }

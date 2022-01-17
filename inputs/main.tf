module "tf_workspace" {

  source = "./terraform-tfe-workspace-master"


  organization = "greencloud"
  name              = each.value.name
  oauth_token_id =  data.terraform_remote_state.secrets.outputs.oauth_id
  identifier        = "karolnedza/avx-spoke-azure"

  for_each = var.greencloud
}
module "tf_workspace" {
  
  for_each = var.greencloud
  source = "./terraform-tfe-workspace-master"
  cidr              = each.value.cidr
  name              = each.value.name
  identifier        = "karolnedza/avx-spoke-azure"
  oauth_token_id =  data.terraform_remote_state.secrets.outputs.oauth_id
}
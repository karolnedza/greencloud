module "tf_workspace" {
  
  for_each = var.greencloud
  source = "./terraform-tfe-workspace-master"
  identifier        = "karolnedza/avx-spoke-azure"
  oauth_token_id =  data.terraform_remote_state.secrets.outputs.oauth_id
}
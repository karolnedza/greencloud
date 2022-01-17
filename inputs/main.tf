
resource "tfe_workspace" "default" {
  name         =  element([for item in var.greencloud : item.name],length(var.greencloud)-1)
  organization = "greencloud"
  vcs_repo {
    identifier     = "karolnedza/avx-spoke-azure"
    oauth_token_id =  data.terraform_remote_state.secrets.outputs.oauth_id
  }
}
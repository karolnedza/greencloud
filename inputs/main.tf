
resource "tfe_workspace" "default" {
  name         =  data.terraform_remote_state.secrets.outputs.last_subs_name
  organization = "greencloud"
  vcs_repo = "karolnedza/avx-spoke-azure"
}
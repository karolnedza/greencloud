module "tf_workspace" {

  source = "./tfe-workspace"
 
  terraform_version = "1.0.0"
  organization = "greencloud"
  name              = "dupa"

  vcs_repo = {
      identifier = "karolnedza/avx-spoke-azure",
      oauth_token_id = "ot-vWFCSYDGESPuNwYU"
    }
  variables = {
    terraform = {
      cidr = "1.2.3.4",
      region = "East Europe"
    }
    terraform_sensitive = {
      controller_ip = "1.2.34.4",
      controller_password =
    }
  }
}

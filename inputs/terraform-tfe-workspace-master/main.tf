resource "tfe_workspace" "managed" {
  name         = var.name
  organization = var.organization

  # auto_apply            = var.auto_apply
  # file_triggers_enabled = var.file_triggers_enabled
  # queue_all_runs        = var.queue_all_runs
  # ssh_key_id            = var.ssh_key_id
  # terraform_version     = var.terraform_version
  # trigger_prefixes      = var.trigger_prefixes

  vcs_repo {
      identifier         = var.identifier
      oauth_token_id     = var.oauth_token_id
    }
  }

  working_directory = var.working_directory
}

# resource "tfe_team_access" "managed" {
#   for_each     = var.team_access
#   access       = each.value
#   team_id      = each.key
#   workspace_id = tfe_workspace.managed.id
# }


# resource "tfe_variable" "environment" {
#   for_each = lookup(var.variables, "environment", {})

#   category  = "env"
#   key       = each.key
#   value     = each.value
#   sensitive = false

#   workspace_id = tfe_workspace.managed.id
# }

# resource "tfe_variable" "environment_sensitive" {
#   for_each = lookup(var.variables, "environment_sensitive", {})

#   category  = "env"
#   key       = each.key
#   value     = each.value
#   sensitive = true

#   workspace_id = tfe_workspace.managed.id
# }

resource "tfe_variable" "terraform" {
  for_each = lookup(var.greencloud, "terraform", {})

  category  = "terraform"

  
  key       = each.key
  value     = each.value
  sensitive = false

  workspace_id = tfe_workspace.managed.id
}

# resource "tfe_variable" "terraform_sensitive" {
#   for_each = lookup(var.greencloud, "terraform_sensitive", {})

#   category  = "terraform"
#   key       = each.key
#   value     = each.value
#   sensitive = true

#   workspace_id = tfe_workspace.managed.id
# }

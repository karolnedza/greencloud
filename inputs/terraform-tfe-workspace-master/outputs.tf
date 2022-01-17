output "id" {
  description = "The workspace's human-readable ID, which looks like `<ORGANIZATION>/<WORKSPACE>`."
  value       = tfe_workspace.managed.id
}

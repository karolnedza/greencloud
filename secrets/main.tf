output "ctrl_ip" {
  value = var.ctrl_ip
}

output "ctrl_password" {
  value =  var.ctrl_password
  sensitive = true
}

output "client_id" {
  value = var.client_id
  sensitive = true
}

output "client_secret" {
  value = var.client_secret
  sensitive = true
}

output "tenant_id" {
  value = var.tenant_id
  sensitive = true
}
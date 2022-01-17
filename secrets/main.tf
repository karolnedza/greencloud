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


output "tf_token" {
  value = var.tf_token
  sensitive = true
}


output "oauth_id" {
  value = var.oauth_id
  sensitive = true
}

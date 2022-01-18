module "azure-spoke-custom" {
  source  = "app.terraform.io/greencloud/azure-spoke-custom/aviatrix"
  
  version = var.version
  name = var.name
  cidr = var.cidr
  region = var.region
  security_domain = var.security_domain
}
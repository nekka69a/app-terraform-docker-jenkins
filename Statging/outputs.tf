output "public_ip_address_staging" {
    value = module.staging.The_webserver_Public_ip
  
}

output "resource_group_name" {
    value = module.staging.resource_group_name
  
}

output "environment" {
    value = module.staging.environment
  
}
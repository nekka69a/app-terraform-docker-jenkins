output "public_ip_address_Prod" {
    value = module.Prod.The_webserver_Public_ip 
  
}

output "resource_group_name" {
    value = module.Prod.resource_group_name
  
}

output "environment" {
    value = module.Prod.environment
  
}
module "Prod" {
    source = "../webserver"
    location = "westeurope"
    instance_size = "Standard_F8"
    environment = "Prod"
     
}

